What Is It?
===========

Switch the user used to push and pull from remote sources in git.

This script is very useful when you have a team of developers on a
project pushing to multiple remote sources
 
Why?
====

Because it's really annoying to change the user for pushing and pulling!
 
Usage
=====

    $ switchgituser.sh 
    1) matt.simpson		 3) kenny.ortmann	  5) arumugam.deivanayaga
    2) amos.king		 4) lori.cross		  6) craig.buchek
    #? 1
    
    $ git upush origin master
    1) matt.simpson 	 3) kenny.ortmann	  5) arumugam.deivanayaga
    2) amos.king		 4) lori.cross		  6) craig.buchek
    #? 1
    
    $ git ufetch
    1) matt.simpson 	 3) kenny.ortmann	  5) arumugam.deivanayaga
    2) amos.king		 4) lori.cross		  6) craig.buchek
    #? 1

When a user is selected, the .git/config file gets changed to reflect 
the selected user.

Installing
==========

Add switchgituser script to your pathby cloning the repo and move or symlink the swtichgituser.sh file to a bin directory in your path, like /usr/local/bin.

Add the git aliases to your ~/.gitconfig file

    upush = !switchgituser.sh && git push
    ufetch = !switchgituser.sh && git fetch
    
Open a new shell and you're good to go!