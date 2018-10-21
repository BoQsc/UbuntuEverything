# UbuntuEverything

### GDM configuration storage /etc/gdm3/custom.conf
```
# GDM configuration storage
#
# See /usr/share/gdm/gdm.schemas for a list of available options.

[daemon]
# Uncoment the line below to force the login screen to use Xorg
WaylandEnable=false

# Enabling automatic login
AutomaticLoginEnable=true
AutomaticLogin=ubuntu

# Enabling timed login
TimedLoginEnable=false
#  TimedLogin = user1
#  TimedLoginDelay = 10

[security]

[xdmcp]

[chooser]

[debug]
# Uncomment the line below to turn on debugging
# More verbose logs
# Additionally lets the X server dump core if it crashes
#Enable=true

```


https://www.google.com/search?client=ubuntu&hs=Ryg&channel=fs&ei=y9LMW6m6McausQGDypXQBg&q=Linux+Directory+Structure+explained+site%3Alinuxnix.com&oq=Linux+Directory+Structure+explained+site%3Alinuxnix.com&gs_l=psy-ab.3...9294.14468.0.14692.9.9.0.0.0.0.123.755.5j4.9.0....0...1c.1.64.psy-ab..1.3.329...33i160k1.0.JK-XPpVn1Co
### Linux directory structure: explained
* /bin - Basic operating system administration commands For Local Users and Administrators
* /sbin - Advanced, very technical, require more knowledge, operating system administration commands used by Administrators only.
 * /usr/bin - extensions of the /bin, the commands that weren't considered as part of initial operating system.
 * /usr/sbin - extensinos of /sbin the commands that weren't considered as part of initial operating system.
 
 
 
