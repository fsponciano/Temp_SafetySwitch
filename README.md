# Temperature-controlled safety switch
Francisco S. Ponciano Ojeda
Superradiant Laser Lab, FEMTO-ST, 2021
---

Design of hardware & software for implementation of a temperature-controlled safety switch for use in research laboratories.
The design was carried out with straight-forward considerations that would allow for the desired operation:
- Low-noise voltage supply to avoid affecting measurement noise.
- Output to allow for safe shutdown of critical power supplies that could generate run-away heating.
- Interface with existing temperature monitoring setup (type K thermocouples) in our experiment.
- User-defined set-points for each input channel.
- External reset button for avoiding accidental reactivation of power supplies.
- Small footprint to allow for switch to be easily incorporated into any space limitations.

As we want to have good precision (<10mV) in the reading of analog signals, we have opted to use the (Teensy 4.0 microcontroller)[http://] and the `ADC` library.
This allows for the analog inputs to be configured to read with 12-bit resolution (~800µV) with some averaging that takes advantage of the speed of the Teensy's speed.

---

The repository contains the KiCAD project with the circuit schematics + PCB designs for construction of this switch.
**Note:** The hardware is split into two PCBs: one for the signal inputs (*i.e.* the thermocouples) and one for the power input and outpus (*i.e.* the signal relays).

A BOM is also provided for ease of access to the part numbers of the electronic components used.
