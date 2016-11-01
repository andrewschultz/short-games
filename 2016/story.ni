"A Checkered Haunting" by Andrew Schultz

volume includes

include basic screen effects by Emily Short

debug-state is a truth state that varies.

use no scoring.

volume silliness

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

volume the map

a room has a number called blocklevel. blocklevel of a room is usually 5.

a room can be sidey. a room is usually not sidey.

a room can be black or red. a room is usually black.

a room can be unblocked or blockedoff. a room is usually unblocked.

a room has a number called xval. a room has a number called yval.

a room is usually privately-named.

r00 is a room. r01 is east of r00. r02 is east of r01. r03 is east of r02. r04 is east of r03.
r10 is a room. r11 is east of r10. r12 is east of r11. r13 is east of r12. r14 is east of r13.
r20 is a room. r21 is east of r20. r22 is east of r21. r23 is east of r22. r24 is east of r23.
r30 is a room. r31 is east of r30. r32 is east of r31. r33 is east of r32. r34 is east of r33.
r40 is a room. r41 is east of r40. r42 is east of r41. r43 is east of r42. r44 is east of r43.

r10 is south of r00. r20 is south of r10. r30 is south of r20. r40 is south of r30.
r11 is south of r01. r21 is south of r11. r31 is south of r21. r41 is south of r31.
r12 is south of r02. r22 is south of r12. r32 is south of r22. r42 is south of r32.
r13 is south of r03. r23 is south of r13. r33 is south of r23. r43 is south of r33.
r14 is south of r04. r24 is south of r14. r34 is south of r24. r44 is south of r34.

xval of r00 is 1. xval of r01 is 2. xval of r02 is 3. xval of r03 is 4. xval of r04 is 5.
xval of r10 is 1. xval of r11 is 2. xval of r12 is 3. xval of r13 is 4. xval of r14 is 5.
xval of r20 is 1. xval of r21 is 2. xval of r22 is 3. xval of r23 is 4. xval of r24 is 5.
xval of r30 is 1. xval of r31 is 2. xval of r32 is 3. xval of r33 is 4. xval of r34 is 5.
xval of r40 is 1. xval of r41 is 2. xval of r42 is 3. xval of r43 is 4. xval of r44 is 5.

yval of r00 is 1. yval of r01 is 1. yval of r02 is 1. yval of r03 is 1. yval of r04 is 1.
yval of r10 is 2. yval of r11 is 2. yval of r12 is 2. yval of r13 is 2. yval of r14 is 2.
yval of r20 is 3. yval of r21 is 3. yval of r22 is 3. yval of r23 is 3. yval of r24 is 3.
yval of r30 is 4. yval of r31 is 4. yval of r32 is 4. yval of r33 is 4. yval of r34 is 4.
yval of r40 is 5. yval of r41 is 5. yval of r42 is 5. yval of r43 is 5. yval of r44 is 5.

blocklevel of r00 is 1. blocklevel of r04 is 1. blocklevel of r40 is 1. blocklevel of r44 is 1.
blocklevel of r11 is 2. blocklevel of r13 is 2. blocklevel of r31 is 2. blocklevel of r33 is 2.
blocklevel of r20 is 3. blocklevel of r24 is 3. blocklevel of r42 is 3. blocklevel of r02 is 3.
blocklevel of r22 is 4.

to wfak:
	if debug-state is false, wait for any key;

volume initialization

lshuf is a list of number variables. lshuf is { 1, 2, 3, 4 }

when play begins:
	shuf-blox;
	start-play;
	say "Limbo isn't so bad, really. There's not a whole lot to do, even if you wind up reflecting more on what you never got around to doing. It got better when you learned not to haunt earth when it just made you jealous of people who you spied getting more stuff done. But wait...what's that?";
	wfak;
	say "'They'll do,' says a voice. 'Give [']em a chance to get out. You do want to get out, don't you? Move up in the Otherworld? Before Judgement Day?'[paragraph break]That's weird. The afterlife doesn't have many opportunities. The voice continues.[paragraph break]'You've spent enough time as a ghost, and we've been watching you. Maybe you're the one to haunt all the places...not very big suburbs, either.";
	wfak;
	say "'All you gotta do is haunt five suburbs. Suburbs full of people richer than they deserve to be. They deserve it, right? But you need to haunt them efficiently. No crossing back over where you've gone before. They might see you. Just five blocks by five blocks. The only catch? There's a church you can't run past. The people who go aren't very churchy, but hey, them's the rules. You up for it?";
	wfak;
	say "Well, you have nothing better to do. And you're still a bit resentful of people who did better than you in the pre-life, even if they're going to do worse in the afterlife. So you decide, why not give it a shot?";

to shuf-blox:
	sort lshuf in random order;
	repeat with G running through rooms:
		unless blocklevel of G is 5:
			now blocklevel of G is entry (blocklevel of G) in lshuf;

definition: a room (called myr) is black:
	if the remainder after dividing (xval + yval) by 2 is 0, decide yes;
	decide no.

cur-level is a number that varies. cur-level is 1.

blocked-room is a room that varies.

definition: a room (called myr) is curlev:
	if blocklevel of myr is cur-level, yes;
	no;

to start-play:
	now all rooms are unvisited;
	now blocked-room is not blockedoff;
	now blocked-room is a random curlev room;
	now blocked-room is blockedoff;
	now right hand status line is "X=[xing of blocked-room]";
[	if debug-state is true:
		say "DEBUG: [blocked-room] is unavailable.";]
	move player to random unblocked room, without printing a room description;

check going to a blockedoff room:
	say "Whoah! You'd better not go there." instead;

check going to a visited room:
	say "Oops! You already were there." instead;

to say move-board:
	move checkerboard to a random unblocked room;
	
instead of doing something with checkerboard:
	if current action is examining, continue the action;
	say "You're incorporeal, so you can't do much with the checkerboard except EXAMINE it.";

the checkerboard is a thing. "A slightly mutilated checkerboard with the corners cut off[if board-width is 6], slightly smaller than the last,[else if board-width is 4 and esmall is false], even smaller than the last,[end if] lies here.". description is "It's [board-width in words] by [board-width in words], with opposite corners cut off. You spend a bit of time tracing a way through, and [if board-width is 8]you fail[else if board-width is 6]you seem to figure that it can't be done, but you don't know how to express it[else]you think you can prove that no loop exists in such cramped quarters. Maybe that holds for [entry 5 of citylist], somehow, if you could just find the word[end if]."

understand "checker/board" and "checker board" as checkerboard.

after examining checkerboard: now chex is true.

chex is a truth state that varies.

board-width is a number that varies. board-width is 8.

gamewinning is an action applying to nothing.

understand the command "parity" as something new.
understand the command "color" as something new.
understand the command "colors" as something new.
understand the command "count" as something new.
understand the command "corner" as something new.
understand the command "corners" as something new.
understand the command "prove" as something new.
understand the command "disprove" as something new.

understand "parity" and "color" and "colors"or "corners" and "corner" and "count" and "prove" and "disprove" as gamewinning when cur-level is 5.

gwting is an action applying to one topic.

understand "parity [text]" and "color [text]" and "colors"or "corners [text]" and "corner [text]" and "count [text]" and "prove [text]" and "disprove [text]" as gwting when cur-level is 5.

carry out gwting:
	try gamewinning instead;

carry out gamewinning:
	say "'You realize what's up. Like [if checkerboard is off-stage]a[else]the[end if] checkerboard with the corners out, you realize the 5x5 board with a hole out has the wrong color hole. You're ready to flee [entry 5 in citylist], assured you'll never figure out the people who live there, but at least knowing why you can't. You get in a big argument with the spirits who sent you there and you realize, a bit late, they weren't from heaven. They brush off your knowledge and at the same time rip you for not learning that sort of thing when you were alive. You'd have actually been useful to them, figuring that sort of weird stuff out. But now? Well, you don't know it, but at least hell is more interesing than Limbo.[paragraph break]Perhaps it is. Unfortunately, you don't get to learn much in Limbo, but maybe you can poke those other spirits and stop moping? And maybe learn something else? It'd be something at least.";
	end the story finally;

after printing the locale description:
	if number of unvisited rooms is 2:
		do-the-next;
	if walled-in:
		if debug-state is true:
			say "[number of unvisited rooms] [list of unvisited rooms].";
		if cur-level < 5:
			say "Oh no! You are trapped! You manage to hide out from being spotted.[paragraph break]'Oh, come on,' you hear a voice say. 'Surely you can do better than that?' You're given another chance.";
		else:
			say "[move-board]'INCOMPETENTS!' you hear someone yell. 'WHAT ARE THEY DOING? IT'S JUST THE SAME AS THE PREVIOUS!' [one of]You guess so. You feel like you probably made a mis-step[or]You tried again, and it seemed like you got stuck. There are only so many sensible ways through, and you noticed a few dead-ends you avoided. But no partial credit[or]You wonder if, in fact, there is a way through. You aren't sure how to express it, though[or]Now it's getting silly. Surely there must be a way to show you're on a wild goose chase[stopping].";
			if debug-state is true, say "DEBUG: checkerboard in [location of checkerboard].";
		now all rooms are unvisited;
		if cur-level is 1:
			move player to random unblocked room, without printing a room description;
		else:
			move player to random unblocked room;

esmall is a truth state that varies.

to say move-board:
	if chex is true:
		if board-width > 4:
			decrease board-width by 2;
		else:
			now esmall is true;
	move checkerboard to random unblocked room;

to do-the-next:
	say "[one of]'Not bad! OK, on to the next suburb, [entry 2 of citylist].'[or]'You're getting the hang of it! [entry 3 of citylist] next! Still, it can't be THAT hard. Most others got through easily...then...'[or]'You're not the first person to start quickly.'[or]'Good, but nobody's done [entry 5 of citylist] yet. Maybe you'll be the one. It's just the same thing, we're sure.'[stopping]";
	increment cur-level;
	start-play;

to decide whether walled-in:
	if north is okay, decide no;
	if south is okay, decide no;
	if east is okay, decide no;
	if west is okay, decide no;
	decide yes;
	
definition: a direction (called d) is okay:
	if the room d of location of player is nowhere, decide no;
	if the room d of location of player is visited, decide no;
	if the room d of location of player is blocked-room, decide no;
	decide yes;

map-help is a truth state that varies.

after printing the locale description:
	if map-help is false:
		now map-help is true;
		say "[italic type][bracket]There's not much to do here except move in the 4 cardinal directions, or MAP to see where you have been and need to go.[close bracket][roman type]";

the printed name of a room is "[entry cur-level of citylist], [xing of the item described]".

the description of a room is "You can go [list of viable directions]. The blocked intersection is [xing of blocked-room]."

before going:
	let yv be yval of location of player;
	let xv be xval of location of player;
	if noun is southwest or noun is southeast or noun is northwest or noun is northeast or noun is inside or noun is outside:
		say "No cutting through buildings." instead;
	if noun is up:
		say "You're not good enough for heaven." instead;
	if noun is down:
		say "You're not bad enough for hell." instead;
	if noun is north and yv is 1:
		say "That'd be out of city bounds." instead;
	if noun is south and yv is 5:
		say "That'd be out of city bounds." instead;
	if noun is west and xv is 1:
		say "That'd be out of city bounds." instead;
	if noun is east and xv is 5:
		say "That'd be out of city bounds." instead;

definition: a direction (called d) is viable:
	let r be location of player;
	unless d is linear, decide no;
	if d is east and xval of r is 5, decide no;
	if d is west and xval of r is 1, decide no;
	if d is north and yval of r is 1, decide no;
	if d is south and yval of r is 5, decide no;
	if the room d of location of player is blocked-room, decide no;
	decide yes;

definition: a direction (called d) is linear:
	if d is north or d is south or d is east or d is west, decide yes;
	decide no;

to say xing of (r - a room):
	let x be xval of r;
	let y be yval of r;
	say "[entry x in hlist] and [entry y in vlist]"

hlist is a list of text variable. hlist is { "1st", "2nd", "3rd", "4th", "5th" }

vlist is a list of text variable. vlist is { "Lake", "Maple", "North", "Oak", "Pine" }

citylist is a list of text variable. citylist is { "Lawyerville", "Doctorville", "Agentville" , "Financeville", "Programmerville" }

chapter mapiting

mapiting is an action applying to nothing.

understand the command "mapit" as something new.
understand the command "map" as something new.
understand the command "ma" as something new.
understand the command "m" as something new.

understand "mapit" as mapiting.
understand "map" as mapiting.
understand "ma" as mapiting.
understand "m" as mapiting.

carry out mapiting:
	say "+ = visited, . = unvisited, * = blocked off.";
	say "[fixed letter spacing]  1 2 3 4 5[line break]L [sta of r00] [sta of r01] [sta of r02] [sta of r03] [sta of r04] [line break]";
	say "M [sta of r10] [sta of r11] [sta of r12] [sta of r13] [sta of r14] [line break]";
	say "N [sta of r20] [sta of r21] [sta of r22] [sta of r23] [sta of r24] [line break]";
	say "O [sta of r30] [sta of r31] [sta of r32] [sta of r33] [sta of r34] [line break]";
	say "P [sta of r40] [sta of r41] [sta of r42] [sta of r43] [sta of r44] [line break][variable letter spacing]";
	the rule succeeds;

to say sta of (rm - a room):
	if rm is location of player:
		say "U[no line break]";
	else if rm is visited:
		say "+[no line break]";
	else if rm is blockedoff:
		say "*[no line break]";
	else:
		say ".[no line break]"

rule for printing a parser error when the latest parser error is the not a verb I recognise error:
	say "You can't do much here except go in directions (RUN/R  a direction goes as far as possible that way), or MAPIT/MAP/M to see a map[if board-width < 8 or chex is true]. Though you can guess a verb to win[end if]."

volume speeding

chapter runing

runing is an action applying to one visible thing.

understand the command "run" as something new.
understand the command "r" as something new.

understand "run [direction]" as runing.
understand "r [direction]" as runing.

carry out runing:
	unless noun is linear, try going noun instead;
	let moved be 0;
	if the room noun of location of player is nowhere, say "You are at the [noun] border." instead;
	if the room noun of location of player is blockedoff, say "The church is [noun]." instead;
	while the room noun of the location of player is not nowhere and the room noun of the location of player is not blockedoff:
		move player to the room noun of location of player, without printing a room description;
		increment moved;
	say "[description of location of player][line break]";
	say "You went [moved] square[unless moved is 1]s[end if].";

volume debug - not for release

chapter set debugging

when play begins (this is the debug flag rule):
	now debug-state is true;

the debug flag rule is listed first in the when play begins rulebook.

chapter fiving

fiving is an action applying to nothing.

understand the command "fiv" as something new.

understand "fiv" as fiving.

carry out fiving:
	while cur-level < 5:
		do-the-next;
	the rule succeeds;

[when play begins:
	repeat with Q running through rooms:
		say "DEBUG: [Q], [xval of Q], [yval of Q], [blocklevel of Q].";]