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


### Linux directory structure: explained
* /bin - Basic operating system administration commands For Local Users and Administrators
* /sbin - Advanced, very technical, require more knowledge, operating system administration commands used by Administrators only.
 * /usr/bin - extensions of the /bin, the commands that weren't considered as part of initial operating system.
 * /usr/sbin - extensinos of /sbin the commands that weren't considered as part of initial operating system.
 
 
 
