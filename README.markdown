tunnelr
=======
A simple binary to provide three functionalities relating to SSH tunnels:

- Starting a new tunnel, that opens at a port on a server you have SSH access
    to, and dumps at a port on your desktop computer
- Creating a launchd script for Mac OS X machines that provides the same
    functionality on demand
- Easily and quickly configuring a completely un-configured computer for
    keypair-based SSH access to a server

Usage
-----
    tunnelr start [options] remote.server.tld:12345 localhost:3000
    tunnelr launchd [options] remote.server.tld:12345 localhost:3000
    tunnelr setup [options] remote.server.tld
    
Send `--help` to any of the above commands for a list of allowed flags.

Status
------
Only the first functionality is currently provided.

Requirements
------------
You must have `autossh` for the first and second tools. This can be installed
on [Mac][] [OS X][osx] (if you have [MacPorts](http://macports.org/ "The MacPorts Project"))
as follows:
    
    port install autossh
    
Instructions for installing MacPorts are available at
<http://trac.macports.org/wiki/InstallingMacPorts>.

You obviously need SSH access to a server to use any of these, though you
don’t need it to be configured specially — the third task listed above will
take care of any and all of that for you.

Finally, you obviously need to be on a [Mac][], running [OS X][osx]
[10.5 Leopard][leopard] (or a more recent version of OS X that provides
[launchd][]), to use the second command.

  [mac]: <http://apple.com/mac/> "Apple Computer’s Macintosh"
  [osx]: <http://www.apple.com/macosx/> "Apple Computer’s OS X"
  [leopard]: <http://en.wikipedia.org/wiki/Mac_OS_X_v10.5> "Mac OS X v10.5 “Leopard”"
