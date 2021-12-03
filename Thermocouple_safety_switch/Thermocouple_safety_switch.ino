#include <ADC.h>
#include <ADC_util.h>

// -- Initialize one ADC for use in the code; Teensy has 2 ADCs that can be used. --
ADC *adc = new ADC();

// -- Define user-friendly variable names: --
const int ZSTherm1 = A0; //Thermocouple for ZS tube.
const int ZSTherm2 = A1; //Thermocouple for ZS MOT side.
const int MOT_Therm1 = A2; //Thermocouple for MOT coils.
// const int Thermocouple4 = A3; //Spare thermocouple - Uncomment if needed.
const int OvenTherm1 = A4; //Thermocouple for oven ONLY.
const int OvenTherm2 = A5; //Thermocouple for oven ONLY.

const int ThermLED1 = 0;
const int ThermLED2 = 1;
const int ThermLED3 = 2;
// const int ThermLED4 = 3; //LED for spare thermocouple - Uncomment if needed.
const int ThermLED5 = 4;
const int ThermLED6 = 5;

const int Relay1 = 6; //ZS power supply.
const int Relay2 = 7; //MOT coils power supply.
const int Relay3 = 8; //Oven supply.
//const int Relay4 = 9; //Spare relay - Uncomment if needed.

const int EmSwitch = 11; //Pin for connecting to emergency stop button in lab.

// - - - - -
// -- Begin main program setup: --
void setup() {

  pinMode(ZSTherm1,INPUT);
  pinMode(ZSTherm2,INPUT);
  pinMode(MOT_Therm1,INPUT);
  // pinMode(Thermocouple4,INPUT); //Pin definition for spare thermocouple - Uncomment if needed.
  pinMode(OvenTherm1,INPUT);
  pinMode(OvenTherm2,INPUT);

  pinMode(ThermLED1,OUTPUT);
  pinMode(ThermLED2,OUTPUT);
  pinMode(ThermLED3,OUTPUT);
  // pinMode(ThermLED4,OUTPUT); //Pin definition for spare thermocouple LED - Uncomment if needed.
  pinMode(ThermLED5,OUTPUT);
  pinMode(ThermLED6,OUTPUT);

  pinMode(Relay1,OUTPUT);
  pinMode(Relay2,OUTPUT);
  pinMode(Relay3,OUTPUT);
  //pinMode(Relay4,OUTPUT); //Spare relay, not currently in use. - Uncomment if needed.

  pinMode(EmSwitch, INPUT_PULLUP); //For connecting Teensy to emergency stop button in lab. Configured as INPUT_PULLUP to allow detection of state of button without interfering in.

  Serial.begin(9600); //Teensy does not care about baud rate.
  Serial.println("Begin setup of safety switch:");

  // Begin configuration of ADC:
  adc->adc0->setReference(ADC_REFERENCE::REF_3V3); //Use internal 3.3V reference on Teensy.
  adc->adc0->setResolution(12); //Hardware limit. 10 bit standard, 12+ bit achieved by averaging.
  adc->adc0->setAveraging(16); //Necessary if we want >10 bit resolutions.
  adc->adc0->setConversionSpeed(ADC_CONVERSION_SPEED::MED_SPEED);
  adc->adc0->setSamplingSpeed(ADC_SAMPLING_SPEED::HIGH_SPEED);

  // The lines below need to be used when changing the resolution of the ADC to ensure proper operation.
  adc->adc0->enableCompare(0.0/3.3*adc->adc0->getMaxValue(), 1); // Measurement will be ready if value > 0.0V.
  adc->adc0->enableCompareRange(0.0*adc->adc0->getMaxValue()/3.3, 3.3*adc->adc0->getMaxValue()/3.3, 1, 1); // Measurement ready if value lies in [0.0,3.3] V.

  Serial.println("Calibrating ...");
  adc->adc0->calibrate();
  adc->adc0->wait_for_cal();
  Serial.println("Calibration OK!");

  if(adc->adc0->fail_flag != ADC_ERROR::CLEAR) {
    Serial.print("ADC0: "); Serial.println(getStringADCError(adc->adc0->fail_flag));
  }

  // Light LED sequence for visual confirmation of completed setup & calibration.
  digitalWrite(ThermLED1,HIGH);
  digitalWrite(ThermLED3,HIGH);
  digitalWrite(ThermLED5,HIGH);
  delay(1000);
  digitalWrite(ThermLED1,LOW);
  digitalWrite(ThermLED3,LOW);
  digitalWrite(ThermLED5,LOW);

  // This should automatically reset the relays that have been previously activated once the Teensy restarts.
  digitalWrite(Relay1,LOW);
  digitalWrite(Relay2,LOW);
  digitalWrite(Relay3,LOW);
  Serial.println("---End setup---");
}

// -- Define variable types for ADC/temperature values: --
int temp_1;
int temp_2;
int temp_3;
// int temp_4; //Uncomment if thermocouple 4 is used.
int temp_5;
int temp_6;
int temp_bkgd; //Offset for taking into account the noise/background on the AD597 signal.

double max_T1 = 30.0; //Max. value of ZS tube temp.
double max_T2 = 30.0; //Max. value of ZS MOT side temp.
double max_T3 = 30.0; //Max. value of MOT coil temp.
// double max_T4 = 30.0; //Max. value of additional input temp. - Uncomment if needed.
double max_T5 = 550.0; //Max. value of oven temp. 1.
double max_T6 = 550.0; //Max. value of oven temp. 2.

// --Define conversion factor for getting ADC->temperature value: --
double t_conv = 3.3/adc->adc0->getMaxValue();

// --Begin main program loop: --
void loop() {

  temp_bkgd = 72;
  //Read the values of the different thermocouples.
  temp_1 = adc->adc0->analogRead(ZSTherm1) - temp_bkgd;
  temp_2 = adc->adc0->analogRead(ZSTherm2);// - temp_bkgd;
  temp_3 = adc->adc0->analogRead(MOT_Therm1) - temp_bkgd;
  // temp_4 = adc->adc0->analogRead(Thermocouple4); //Uncomment if thermocouple 4 is used.
  temp_5 = adc->adc0->analogRead(OvenTherm1);
  temp_6 = adc->adc0->analogRead(OvenTherm2);

  // Uncomment the lines below to observe the ADC reading for a specified thermocouple:
  Serial.println(t_conv / 3.3 * 100,DEC); //Used to check the minimum temperature resolution available on the ADC.
  Serial.print("ADC value (temp. 1): "); Serial.print(temp_1); Serial.print(" - Voltage: "); Serial.print(temp_1 * t_conv / 3.3,DEC); Serial.print(" - Temp.: "); Serial.println((temp_1 * t_conv / 3.3) * 100,DEC);
  Serial.print("ADC value (temp. 2): "); Serial.print(temp_2); Serial.print(" - Voltage: "); Serial.print(temp_2 * t_conv / 3.3,DEC); Serial.print(" - Temp.: "); Serial.println((temp_2 * t_conv / 3.3) * 100,DEC);
  Serial.print("ADC value (temp. 3): "); Serial.print(temp_3); Serial.print(" - Voltage: "); Serial.print(temp_3 * t_conv / 3.3,DEC); Serial.print(" - Temp.: "); Serial.println((temp_3 * t_conv / 3.3) * 100,DEC);
//  Serial.print("ADC value (temp. 4): "); Serial.print(temp_4); Serial.print(" - Voltage: "); Serial.print(temp_4 * t_conv / 3.3,DEC); Serial.print(" - Temp.: "); Serial.println((temp_4 * t_conv / 3.3) * 100,DEC);
//  Serial.print("ADC value (temp. 5): "); Serial.print(temp_5); Serial.print(" - Voltage: "); Serial.println(temp_5 * t_conv / 3.3,DEC);
//  Serial.print("ADC value (temp. 6): "); Serial.print(temp_6); Serial.print(" - Voltage: "); Serial.println(temp_6 * t_conv / 3.3,DEC);
  // * * For reference: ~20 deg C = 275 (ADC) -> 0.26 V; ~30 deg C = 390 (ADC) -> 0.38V (without removing background). * *

  // If the Teensy has an error in reading the values, this allows the message to be checked with the serial monitor.
  if(adc->adc0->fail_flag != ADC_ERROR::CLEAR) {
    Serial.print("ADC0: "); Serial.println(getStringADCError(adc->adc0->fail_flag));
  }

  // The AD597 IC used gives a signal that is proportional to temperature, with the proportionality factor of 10mV/deg. C.
  // We need to divide the setpoint (in deg. C) by a factor of 100 to obtain a value for the signal in mV:
  if(temp_1*t_conv/3.3 > max_T1/100.0 && temp_2*t_conv/3.3 > max_T2/100.0) {
    if(digitalRead(Relay1) == LOW){
      digitalToggle(Relay1);
    } else {
      
    }
    if(temp_1*t_conv > max_T1/100.0) {
      if(digitalRead(ThermLED1) == LOW){
        digitalWrite(ThermLED1,HIGH);
      } else {
        
      }
      Serial.println("Temp. 1 too high!");
    }
    if(temp_2*t_conv > max_T2/100.0) {
      if(digitalRead(ThermLED2) == LOW){
        digitalWrite(ThermLED2,HIGH);
      } else {
        
      }
      Serial.println("Temp. 2 too high!");
    }
  }

  if(temp_3*t_conv/3.3 > max_T3/100.0) {
    if(digitalRead(Relay2) == LOW){
      digitalToggle(Relay2);
    } else {
      
    }
    if(digitalRead(ThermLED3) == LOW){
      digitalToggle(ThermLED3);
    } else {
      
    }
    Serial.println("Temp. 3 too high!");
  }

  // Uncomment the following IF statement when thermocouple 4 is used
  //if(temp_4*t_conv/3.3 > max_T4/100.0) {
  //  digitalToggle(Relay4);
  //  digitalWrite(ThermLED4,HIGH);
  //  Serial.println("Temp. 4 too high!");
  //}

  if(temp_5*t_conv/3.3 > max_T5/100.0 && temp_6*t_conv/3.3 > max_T6/100.0) {
    if(digitalRead(Relay3) == LOW){
      digitalToggle(Relay3);
    } else {
      
    }
    if(temp_5*t_conv > max_T1/100.0) {
      if(digitalRead(ThermLED5) == LOW){
        digitalToggle(ThermLED5);
      } else {
        
      }
      Serial.println("Temp. 5 too high!");
    }
    if(temp_6*t_conv/3.3 > max_T2/100.0) {
      if(digitalRead(ThermLED6) == LOW){
        digitalWrite(ThermLED6,HIGH);
      } else {
        
      }
      Serial.println("Temp. 6 too high!");
    }
  }

  //The behaviour of the push button on the box is as follows:
  // * Holding the button down for 5 seconds will shut off the controller and reset the state of all pins.
  // * After shutting off, pressing the button for 2 seconds will restart the controller.

  // The state of the emergency stop button in the lab can also be read and used to shut off the power supplies:
  if (digitalRead(EmSwitch) == LOW) {
    Serial.println("Everything OK with lab.");
  } else {
    Serial.println("Emergency switch triggered! Shutting down power supplies...");
    if(digitalRead(Relay1) == LOW && digitalRead(Relay2) == LOW && digitalRead(Relay3) == LOW){
      digitalToggle(Relay1);
      digitalToggle(Relay2);
      digitalToggle(Relay3);
      digitalToggle(ThermLED1);
      digitalToggle(ThermLED2);
      digitalToggle(ThermLED3);
      digitalToggle(ThermLED5);
      digitalToggle(ThermLED6);
    //digitalToggle(Relay4);
    } else {
      digitalWrite(Relay1,HIGH);
      digitalWrite(Relay2,HIGH);
      digitalWrite(Relay3,HIGH);
    }
  }
  
  delay(1000); // Value in ms.
}
