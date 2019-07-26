# clip
lightweitgh terminal clipboard with multiple sections written in bash


## installing the script

move the folder of this repo in your home directory

run:

~~~
./install.sh
~~~


to make clip always runnable
add to ~/.basrc :

~~~
export PATH=/home/username/bin:$PATH
~~~

and then run:

~~~
source ~/.bashrc
~~~


run and never stop:

~~~
./clip-daemon.sh
~~~


## usage:
clip [number of the section] [options]


## options:

-e: open with a tex editor specified with a third parameter the section

-o: prints the content of the section

-y: puts the section in your buffer, so you can paste it

-s: selected section becomes active

-d: delete the content of the section

-p: wait 1 sec (necessary to wait for cli-daemon.sh to rewrite in the selected section what your xclip buffer contains), use after -d to get just what you currently have in your xclip buffer


## other features

xclip buffer contains the text you can paste

you can use more than one option a the same time:

example: clip 3 -ey gedit --> edit the section 3 with gedit, save it and then yank its content
wrong: clip 3 -e -y gedit


there are other options if you don't specify any section:

-a: shows active sections

-c: shows the current active section (the section where the copy buffer is copied)

