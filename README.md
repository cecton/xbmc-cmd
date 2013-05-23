xbmc-cmd
========

Small script to get a command-line that send XBMC commands using xbmc-send.

Commands
--------

All XBMC commands are listed on the wiki of XBMC here:
http://wiki.xbmc.org/index.php?title=List_of_built-in_functions

Setup
-----

The script use rlwrap if it exists in the path.

To set the host address and the port, simply use XBMC_HOST and XBMC_PORT
environment variables. You can set them on your bashrc or profile file.

How to get xbmc-send
--------------------

On Arch Linux, you can get xbmc-eventclient-xbmc-send in the AUR repository.

For Debian (and other distributions using apt) users, there is a package
called xbmc-eventclients-xbmc-send in your default repository.

And for RPM users, there is a package called xbmc-eventclient-xbmc-send.

That's All Folks!
