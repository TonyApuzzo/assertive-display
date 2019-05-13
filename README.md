# Assertive Display for Qualcomm SoC -- Magisk Module

This module loads display calibration based on the stock configuration
of the Sony Xperia z3 for Qualcomm SoC based Android devices. Some
folks have noticed significant improvements in screen-on-time battery
life on the Nexus 6 (Shamu) phone with this tweak applied.

It may work on other devices but has not been tested.

### Installation / Uninstallation

Use Magisk Manager to install and uninstall.

### Credits

* topjohnwu for Magisk
* fedef12evo for the original idea: [Assertive display, improve adaptive brightness and battery life](https://forum.xda-developers.com/nexus-6/general/battery-tweaks-t3210546)
* berndt_toast for the flashable zip that I cannibalized

### Contributing

Pull Requests welcome at [TonyApuzzo/assertive-display](https://github.com/TonyApuzzo/assertive-display)

If you find a problem in this module, please add an [issue](https://github.com/TonyApuzzo/assertive-display/issues).

For more information about Magisk modules and repos, please check the [official documentation](https://topjohnwu.github.io/Magisk/).

### Disclaimer

Use this module at your own risk, you are solely responsible if
anything bad happens. This module should work on any Qualcomm based
phone but has only been tested on Nexus 6 with OmniROM 7.1.1. It
shouldn't hurt any phone to try this but if you have a problem you
can disable the Magisk Module in TWRP or temporarily uninstall Magisk
from Recovery, reboot, remove the module via Magisk Manager and then
reboot again.

### History

#### v0.1.0 2019-05-11

Refactor to Magisk 19.1 template

#### v0.0.7

Initial public version based on Magisk 1410 template
