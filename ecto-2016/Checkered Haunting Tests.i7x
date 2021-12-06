Version 1/211205 of Checkered Haunting Tests by Andrew Schultz begins here.

"Tests and Diagnostics for Checkered Haunting"

chapter sbing

definition: a number (called n) is out-of-range:
	if n > 24, yes;
	if n < 0, yes;
	no;

sbing is an action applying to one number.

understand the command "sb" as something new.

understand "sb [number]" as sbing.

nums-on is a truth state that varies;

for printing the name of a room (called rm) when nums-on is true: say "[rval of rm]"

to decide which room is inv-room of (n - a number):
	repeat with rm running through rooms:
		if rval of rm is n, decide on rm;
	say "Oops! Couldn't decide on a room.";
	decide on r00;

carry out sbing:
	if cur-level is 5, say "WARNING! Using SB/BS with the final level may force you to ABSTRACT for a test case.";
	let start-num be number understood / 100;
	let blocked-num be the remainder after dividing number understood by 100;
	if start-num is out-of-range, say "The starting room needs a value from 0 to 24." instead;
	if blocked-num is out-of-range, say "The blocked room needs a value from 0 to 24." instead;
	if start-num is blocked-num:
		say "The starting room can't be the same as the blocked room." instead;
	let blocked-temp be inv-room of blocked-num;
	let start-temp be inv-room of start-num;
	if blocked-temp is not curlev:
		now nums-on is true;
		say "Blocked room must be one of [list of curlev rooms].";
		now nums-on is false;
		the rule fails;
	say "OK, you are starting at [start-temp] with [blocked-temp] blocked off.";
	now start-room is start-temp;
	now start-room is visited;
	now blocked-room is unblocked;
	now blocked-room is blocked-temp;
	now blocked-room is blockedoff;
	now test-start is true;
	move player to start-room, without printing a room description;
	start-play;
	the rule succeeds;

section bsing

bsing is an action applying to one number.

understand the command "bs" as something new.

understand "bs [number]" as bsing.

carry out bsing:
	let num1 be number understood / 100;
	let num2 be the remainder after dividing number understood by 100;
	try sbing (num2 * 100) + num1;

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
	Glar