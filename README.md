slssh
=====

TUI menu for ssh connnections. Autocompletes hostnames from your known_hosts using slmenu & a helper perl script.

Requirements
------------

[slmenu](https://github.com/joshaw/slmenu) & perl

Install
-------

Copy slssh.pl into your path. Create a shell alias 

    alias slssh='ssh $(slssh.pl|slmenu)'
