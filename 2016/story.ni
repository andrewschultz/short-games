"A Checkered Haunting" by Andrew Schultz

the story headline is "A puzzling afterlife experience".

volume includes

include Basic Screen Effects by Emily Short.

debug-state is a truth state that varies.

use no scoring.

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

volume verb and parser tweaks

chapter long form of verbs

Include (-
Replace LanguageVerb;
-) after "Definitions.i6t".

Include (-
[ LanguageVerb i;
	switch (i) {
	  'i//','inv','inventory':
			   print "take inventory";
	  'r//', 'run//':   print "run to";
	  'l//':   print "look";
	  'x//':   print "examine";
	  'z//':   print "wait";
	  default: rfalse;
	}
	rtrue;
];
-) after "Language.i6t".

cheat-prog is a number that varies.

chapter byte shedding

understand the command "jump" as something new.
understand the command "kiss" as something new.
understand the command "wave" as something new.
understand the command "push" as something new.
understand the command "burn" as something new.
understand the command "smell" as something new.
understand the command "listen" as something new.
understand the command "buy" as something new.
understand the command "switch" as something new.
understand the command "turn" as something new.
understand the command "cut" as something new.
understand the command "no" as something new.
understand the command "yes" as something new.
Understand the command "climb" as something new.
Understand the command "scale" as something new.
Understand the command "purchase" as something new.
Understand the command "squash" as something new.
Understand the command "squeeze" as something new.
["climb".]

the can't take items out of play rule is not listed in any rulebook.
the can't take what you're inside rule is not listed in any rulebook.
the can't take what's already taken rule is not listed in any rulebook.
the can't take scenery rule is not listed in any rulebook.
the can only take things rule is not listed in any rulebook.
the ambient odour rule is not listed in any rulebook.
the ambient sound rule is not listed in any rulebook.
the can't push scenery rule is not listed in any rulebook.
the can't push people rule is not listed in any rulebook.
the report pushing rule is not listed in any rulebook.
the can't switch on unless switchable rule is not listed in any rulebook.
the block buying rule is not listed in any rulebook.
the block jumping rule is not listed in any rulebook.
the block smelling rule is not listed in any rulebook.
the block listening rule is not listed in any rulebook.
the block kissing rule is not listed in any rulebook.
the block waving hands rule is not listed in any rulebook.
the block burning rule is not listed in any rulebook.
the block saying yes rule is not listed in any rulebook.
the block saying no rule is not listed in any rulebook.

the can't push what's fixed in place rule is not listed in any rulebook.

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "[italic type]A Checkered Haunting[roman type] was an entrant in 2016 EctoComp's Petite Mort division. It received a post-comp tweak soon after the comp ended.[paragraph break]Thanks to verityvirtue for pointing out a debug-text bug in the comp version, which lead to other fixes. Thanks to Billy Mays for a review and Duncan Bowsman for a PM that led to a tweak.[paragraph break]";

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
	say "+ = visited, . = unvisited, * = church.";
	say "[fixed letter spacing]  1 2 3 4 5[line break]L [sta of r00] [sta of r01] [sta of r02] [sta of r03] [sta of r04] [line break]";
	say "M [sta of r10] [sta of r11] [sta of r12] [sta of r13] [sta of r14] [line break]";
	say "N [sta of r20] [sta of r21] [sta of r22] [sta of r23] [sta of r24] [line break]";
	say "O [sta of r30] [sta of r31] [sta of r32] [sta of r33] [sta of r34] [line break]";
	say "P [sta of r40] [sta of r41] [sta of r42] [sta of r43] [sta of r44] [line break][variable letter spacing]";

to say sta of (rm - a room):
	if rm is location of player:
		say "U";
	else if rm is visited:
		say "+";
	else if rm is blockedoff:
		say "*";
	else:
		say "-"

[	if debug-state is true and rm is location of checkerboard:
		say "X";
	else if debug-state is true and rm is location of magnets:
		say "M";
	else if debug-state is true and rm is location of dominoes:
		say "D";
	else ]

chapter runing

runing is an action applying to one visible thing.

understand the command "run" as something new.
understand the command "r" as something new.

understand "run [direction]" as runing.
understand "r [direction]" as runing.

carry out runing:
	unless noun is linear, try going noun instead;
	let moved be 0;
	let q be the room noun of location of player;
	if noun is not okay, say "[if q is nowhere]You can't go further[else if q is blockedoff]The church is[else]You've already been[end if] [noun]." instead;
	while noun is okay:
		move player to q, without printing a room description;
		say "[bold type][q][roman type][paragraph break]";
		now q is the room noun of q;
		increment moved;
	say "[description of location of player][paragraph break]";
	check-trapped;

chapter parser

rule for printing a parser error (this is the simplify parser errors rule):
	say "You can't do much here except go in directions (RUN/R a direction goes as far as possible that way), or MAPIT/MAP/M to see a map[if board-width < 8 or chex is true]. Though you can guess a verb to win[end if].[paragraph break]ABOUT displays information about the game.";
	reject the player's command;

volume main game

a room has a number called blocklevel. blocklevel of a room is usually 5.

a room can be unblocked or blockedoff. a room is usually unblocked.

a room has a number called rval.

a room is usually privately-named.

a room can be fivedone, fivevalid or unfive. a room is usually unfive.

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

[originally had xval and yval but collapsed them to save memory]

rval of r00 is 0. rval of r01 is 1. rval of r02 is 2. rval of r03 is 3. rval of r04 is 4.
rval of r10 is 5. rval of r11 is 6. rval of r12 is 7. rval of r13 is 8. rval of r14 is 9.
rval of r20 is 10. rval of r21 is 11. rval of r22 is 12. rval of r23 is 13. rval of r24 is 14.
rval of r30 is 15. rval of r31 is 16. rval of r32 is 17. rval of r33 is 18. rval of r34 is 19.
rval of r40 is 20. rval of r41 is 21. rval of r42 is 22. rval of r43 is 23. rval of r44 is 24.

blocklevel of r00 is 1. blocklevel of r04 is 1. blocklevel of r40 is 1. blocklevel of r44 is 1.
blocklevel of r11 is 2. blocklevel of r13 is 2. blocklevel of r31 is 2. blocklevel of r33 is 2.
blocklevel of r20 is 3. blocklevel of r24 is 3. blocklevel of r42 is 3. blocklevel of r02 is 3.
blocklevel of r22 is 4.

to wfak:
	if debug-state is false, wait for any key;

volume initialization

lshuf is a list of number variables. lshuf is { 1, 2, 3, 4 }

when play begins:
	shuf-law;
	sort lshuf in random order;
	repeat with G running through rooms:
		if blocklevel of G is 5:
			now G is fivevalid;
		else:
			now blocklevel of G is entry (blocklevel of G) in lshuf;
	start-play;
	say "Limbo isn't so bad, really. There's not a whole lot to do, even if you wind up reflecting more on what you never got around to doing. It got better when you learned not to haunt earth when it just made you jealous of people who you spied getting more stuff done. But wait...what's that?";
	wfak;
	say "'They'll do,' says a voice. 'Give [']em a chance to get out. You do want to get out, don't you? Move up in the Otherworld? Before Judgement Day?'[paragraph break]That's weird. The afterlife doesn't have many opportunities. The voice continues.[paragraph break]'You've spent enough time as a ghost, and we've been watching you. Maybe you're the one to haunt all the places...not very big suburbs, either.";
	wfak;
	say "'All you gotta do is haunt five suburbs. Suburbs full of people richer than they deserve to be. They deserve it, right? But you need to haunt them efficiently. No crossing back over where you've gone before. They might see you. Just five blocks by five blocks. The only catch? There's a church you can't run past. The people who go aren't very churchy, but hey, them's the rules. You up for it?";
	wfak;
	say "Well, you have nothing better to do. And you're still a bit resentful of people who did better than you in the pre-life, even if they're going to do worse in the afterlife. So you decide, why not give it a shot?";

to shuf-law:
	(- shuffle(5); -);

cur-level is a number that varies. cur-level is 1.

blocked-room is a room that varies.

definition: a room (called myr) is curlev:
	if blocklevel of myr is cur-level, yes;
	no;

to start-play:
	now all rooms are unvisited;
	now blocked-room is not blockedoff;
	if cur-level is 5:
		if number of fivevalid rooms is 0:
			now all fivedone rooms are fivevalid;
		now blocked-room is a random fivevalid room;
		now blocked-room is fivedone;
	else:
		now blocked-room is a random curlev room;
	now blocked-room is blockedoff;
	now right hand status line is "X=[xing of blocked-room]";
[	if debug-state is true:
		say "DEBUG: [blocked-room] is unavailable.";]
	move player to random unblocked room, without printing a room description;
	say "[cur-level] a.";
	if cur-level is 5:
		say "b.";
		now checkerboard is off-stage;
		now dominoes are off-stage;
		now magnets are off-stage;
		say "CBR: [number of clearblack rooms].";
		move checkerboard to random clearblack room;
		if debug-state is true:
			say "[cheat-prog] checkerboard moved to [location of checkerboard].";
		if cheat-prog > 0:
			move dominoes to random clearblack room;
			if debug-state is true:
				say "Dominoes moved to [location of dominoes].";
		if cheat-prog > 1:
			move magnets to random clearblack room;
			if debug-state is true:
				say "Magnets moved to [location of magnets].";
		say "CBR: [number of clearblack rooms].";

a winnable is a kind of thing.

instead of doing something with winnable:
	if current action is examining, continue the action;
	say "You're incorporeal, so you can't do much other than EXAMINE the [noun].";

the checkerboard is a winnable. "A slightly mutilated checkerboard with the corners cut off[if board-width is 6], slightly smaller than the last,[else if board-width is 4 and esmall is false], even smaller than the last,[end if] lies here.". description is "It's [board-width in words] by [board-width in words], with opposite corners cut off. You spend a bit of time tracing a way through, and [if board-width is 8]you fail[else if board-width is 6]you seem to figure that it can't be done, but you don't know how to express it[else]you think you can prove that no loop exists in such cramped quarters. Maybe that holds for [ct of 5], somehow, if you could just find the word[end if]."

the magnets are a plural-named winnable.

the dominoes are a plural-named winnable.

every turn when cur-level is 5:
	if player does not have magnets and magnets are in location of player:
		say "The magnets jump up and hover near you. You're obviously attracting them, somehow.";
		now player has magnets;
	else if player has magnets:
		if location of player is location of dominoes and player does not have dominoes:
			say "The magnets latch on to the dominoes.";
			now player has dominoes;
		else if player has dominoes:
			if location of player is location of checkerboard:
				say "You win!";

Include (-

[ shuffle n i j tmp;
  print (string)profs-->1;
  for(i = n: i > 1: i-- )
  {
	j = random(i + 1);
	print i;
	print j;
 
	tmp = profs-->j;
	profs-->j = profs-->i;
	profs-->i = tmp;
  }
];

Array profs --> 5 "Lawyer" "Doctor" "Agent" "Finance" "Programmer";

-)

to say ct of (n - a number):
	(- print (string)profs-->{n}, "ville"; -)

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

understand "parity [text]" and "color [text]" and "colors [text]" and "corners [text]" and "corner [text]" and "count [text]" and "prove [text]" and "disprove [text]" as gwting when cur-level is 5.

carry out gwting:
	try gamewinning instead;

carry out gamewinning:
	say "Suddenly, you realize what's up. Like [if checkerboard is off-stage]a[else]the[end if] checkerboard with the corners out, a 5x5 checkerboard with a non-corner hole out has thirteen of one color, eleven of the other. And since each path alternates between colors...[paragraph break]You're ready to flee [ct of 5], assured you'll never figure out the people who live there, but at least knowing why you can't. You get in a big argument with the spirits who sent you there and you realize, a bit late, they weren't from heaven. They brush off your knowledge and at the same time rip you for not learning that sort of thing when you were alive. You'd have actually been useful to them, figuring that sort of weird stuff out. But now? Well, you don't know it, but at least hell is more interesing than Limbo.[paragraph break]Perhaps it is. Unfortunately, you don't get to learn much in Limbo, but maybe you can poke those other spirits and stop moping? And maybe learn something else? It'd be something at least.";
	end the story finally;

after printing the locale description:
	check-trapped;

to check-trapped:
	now location of player is visited;
	if number of unvisited rooms is 1:
		do-the-next;
	if walled-in:
[		if debug-state is true:
			say "[number of unvisited rooms].";
			say "[list of unvisited rooms].";
			repeat with Q running through unvisited rooms: say "[Q].";]
		if cur-level < 5:
			say "Oh no! You are trapped! You manage to hide out from being spotted.[paragraph break]'Oh, come on,' you hear a voice say. 'Surely you can do better than that?' You're given another chance.";
		else:
			say "[move-board]'INCOMPETENTS!' you hear someone yell. 'WHAT ARE THEY DOING? IT'S JUST THE SAME AS THE PREVIOUS!' [one of]You guess so. You feel like you probably made a mis-step[or]You tried again, and it seemed like you got stuck. There are only so many sensible ways through, and you noticed a few dead-ends you avoided. But no partial credit[or]You wonder if, in fact, there is a way through. You aren't sure how to express it, though[or]Now it's getting silly. Surely there must be a way to show you're on a wild goose chase[stopping].";
		now all rooms are unvisited;
		if cur-level is 1:
			move player to random unblocked room, without printing a room description;
		else:
			start-play;

esmall is a truth state that varies.

to say move-board:
	if chex is true:
		if board-width > 4:
			decrease board-width by 2;
			increment cheat-prog;
		else:
			now esmall is true;

to do-the-next:
	say "[one of]'Not bad! OK, on to the next suburb, [ct of 2].'[or]'You're getting the hang of it! [ct of 3] next! Still, it can't be THAT hard. Most others got through easily...then...'[or]'You're not the first person to start quickly.'[or]'Good, but nobody's done [ct of 5] yet. Maybe you'll be the one. It's just the same thing, we're sure.'[stopping]";
	increment cur-level;
	start-play;

to decide whether walled-in:
	if north is okay, decide no;
	if south is okay, decide no;
	if east is okay, decide no;
	if west is okay, decide no;
	decide yes;

definition: a room (called myrm) is clearblack:
	if the remainder after dividing rval of myrm by 2 is 0, decide no;
	if checkerboard is in myrm, decide no;
	if dominoes are in myrm, decide no;
	if magnets are in myrm, decide no;
	if myrm is blocked-room, decide no;
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
		say "[italic type][bracket]This game has few verbs. ABOUT shows them all.[close bracket][roman type][line break]";

the printed name of a room is "[ct of cur-level], [xing of the item described]".

the description of a room is "You can go [list of viable directions]. The blocked intersection is [xing of blocked-room]."

before going:
	if noun is up:
		say "You're not good enough for heaven." instead;
	if noun is down:
		say "You're not bad enough for hell." instead;
	if noun is not linear:
		say "No cutting through buildings." instead;
	let q be the room noun of location of player;
	if q is nowhere, say "You're at the [noun] edge." instead;
	if q is blockedoff, say "Whoah! The church is to the [noun]." instead;
	if q is visited, say "You feel a magnetic force push you away. Yes, you remember now, you've been [noun] already." instead;

definition: a direction (called d) is viable:
	let r be location of player;
	if the room d of r is blocked-room, decide no;
	if the room d of r is nowhere, decide no;
	decide yes;

definition: a direction (called d) is linear:
	if d is north or d is south or d is east or d is west, decide yes;
	decide no;

to say xing of (r - a room):
	let y be rval of r / 5; [magic numbers a bit here to save memory]
	let x be remainder after dividing rval of r by 5;
	say "[x + 1][if x is 0]st[else if x is 1]nd[else]th[end if] and ";
	say "[if y is 0]Lake[else if y is 1]Maple[else if y is 2]North[else if y is 3]Oak[else]Pine[end if]"

section meta

check quitting the game:
	if cur-level is 5:
		say "[no-bug].";

check restarting the game:
	if cur-level is 5:
		say "[no-bug].";

to say no-bug:
	say "NOTE: if you're worried you messed up, or there's a bug in the town layout, there isn't."

volume debug - not for release

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
		say "Already there. Resetting.";
		start-play;
		the rule succeeds;
	while cur-level < 5:
		do-the-next;
	the rule succeeds;

[when play begins:
	repeat with Q running through rooms:
		say "DEBUG: [Q], [xval of Q], [yval of Q], [blocklevel of Q].";]