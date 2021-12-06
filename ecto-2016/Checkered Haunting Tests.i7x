Version 1/211205 of Checkered Haunting Tests by Andrew Schultz begins here.

"Tests and Diagnostics for Checkered Haunting"

chapter esping

esping is an action out of world.

understand the command "esp" as something new.

understand "esp" as esping.

carry out esping:
	say "magnets: [location of magnets].";
	say "checkerboard: [location of checkerboard].";
	say "dominoes: [location of dominoes].";
	the rule succeeds;

chapter set debugging

when play begins (this is the debug flag rule):
	now debug-state is true;

the debug flag rule is listed first in the when play begins rulebook.

chapter fiving

[this may need to be commented out for z5 debug builds. However, for z8 debug builds, it is okay]

[ * this kicks the player to the final puzzle ]

fiving is an action applying to nothing.

understand the command "fiv" as something new.

understand "fiv" as fiving.

carry out fiving:
	if cur-level is 5:
		say "Reset.";
		start-play;
		the rule succeeds;
	while cur-level <= 4:
		do-the-next;
	the rule succeeds;

[when play begins:
	repeat with Q running through rooms:
		say "DEBUG: [Q], [xval of Q], [yval of Q], [blocklevel of Q].";]


Checkered Haunting Tests ends here.

---- DOCUMENTATION ----
