# clip
lightweitgh terminal clipboard with multiple sections written in bash

to install the script:
./install.sh

to run clip;
run ./clip-daemon.sh and never stop it

usage:
clip [number of the section] -[options]

options:
-e: open with a tex editor specified with a third parameter the section
-o: prints the content of the section
-y: puts the section in your buffer, so you can paste it
-s: selected section becomes active
-d: delete the content of the section

you can use more than one option a the same time:
clip 3 -ey gedit --> edit the section 3, save it and then yank its content

there are other options if you don't specify any section:
-a: shows active sections
-c: shows the current section
