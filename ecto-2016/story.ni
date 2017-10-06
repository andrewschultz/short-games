"A Checkered Haunting" by Andrew Schultz

the story headline is "A puzzling afterlife experience".

volume includes

include Basic Screen Effects by Emily Short.

include conditional undo by Jesse McGrew.

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
understand the command "pull" as something new.
understand the command "read" as something new.
understand the command "sit" as something new.
understand the command "exit" as something new.
understand the command "enter" as something new.
understand the command "sorry" as something new.
understand the command "search" as something new.
understand the command "set" as something new.
understand the command "burn" as something new.
understand the command "smell" as something new.
understand the command "listen" as something new.
understand the command "buy" as something new.
understand the command "switch" as something new.
understand the command "turn" as something new.
understand the command "cut" as something new.
understand the command "no" as something new.
understand the command "yes" as something new.
understand the command "y" as something new.
Understand the command "climb" as something new.
Understand the command "scale" as something new.
Understand the command "purchase" as something new.
Understand the command "slice" as something new.
Understand the command "prune" as something new.
Understand the command "chop" as something new.
Understand the command "cut" as something new.
Understand the command "swallow" as something new.
Understand the command "sip" as something new.
Understand the command "drink" as something new.
Understand the command "squash" as something new.
Understand the command "squeeze" as something new.
Understand the command "drop" as something new.
Understand the command "carry" as something new.
Understand the command "hold" as something new.
Understand the command "throw" as something new.
Understand the command "shed" as something new.
Understand the command "remove" as something new.
Understand the command "stand" as something new.
Understand the command "close" as something new.
Understand the command "open" as something new.
Understand the command "eat" as something new.
Understand the command "answer" as something new.
Understand the command "say" as something new.
Understand the command "shout" as something new.
Understand the command "speak" as something new.
Understand the command "tell" as something new.
Understand the command "ask" as something new.
["climb".]

understand the command "unlock" as something new.
understand the command "attack" as something new.
understand the commands "break", "smash", "hit", "fight", "torture", "wreck", "crack", and "destroy" as something new.

the can't eat unless edible rule is not listed in any rulebook.
the can't eat clothing without removing it first rule is not listed in any rulebook.
the standard eating rule is not listed in any rulebook.
the standard report eating rule is not listed in any rulebook.
the can't drop what's already dropped rule is not listed in any rulebook.
the can't drop what's not held rule is not listed in any rulebook.
the can't drop clothes being worn rule is not listed in any rulebook.
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
the can't remove what's not inside rule is not listed in any rulebook.
the can't remove from people rule is not listed in any rulebook.
the convert remove to take rule is not listed in any rulebook.

the can't take what's fixed in place rule is not listed in any rulebook.
the can't exceed carrying capacity rule is not listed in any rulebook.
the standard taking rule is not listed in any rulebook.
the can't push what's fixed in place rule is not listed in any rulebook.

the print empty inventory rule is not listed in any rulebook.
the print standard inventory rule is not listed in any rulebook.

check taking inventory:
	if number of things carried by player is 0, say "You're carrying nothing." instead;
	if number of things carried by player is 1, say "That blob of Evil-B-Gone is floating around you." instead;
	say "Somehow, a few corporeal things stuck to you in addition to the blob of Evil-B-Gone you're carrying around: [list of things carried by player]." instead;

does the player mean examining something not carried: it is very likely.

description of player is "As incorporeal as ever."

chapter waiting

instead of waiting, say "[one of]You have all the time in the world. Nobody upbraids you for your laziness, but the blob sort of pulses as if to say, get on with it, more important spirits are watching you[or]The blob pulses passive-aggressively (you think) some more[stopping]."

instead of thinking:
	say "You contemplate where you are and where you've been.[paragraph break]";
	try mapiting;

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.
understand the command "credits" as something new.

understand "about" as abouting.
understand "credits" as abouting.

carry out abouting:
	say "[italic type]A Checkered Haunting[roman type] was an entrant in 2016 EctoComp's Petite Mort division. It received a post-comp tweak soon after the comp ended.[paragraph break]Thanks to verityvirtue for pointing out a debug-text bug in the comp version, which led to other fixes. Thanks to Billy Mays for a review and Duncan Bowsman for a PM that led to a tweak.[paragraph break]";

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
	say "[bold type]Map of [ct of cur-level]ville[roman type][paragraph break]";
	say "+ = visited, . = unvisited, * = church.";
	say "[fixed letter spacing]  1 2 3 4 5[line break]L [sta of r00] [sta of r01] [sta of r02] [sta of r03] [sta of r04] [line break]";
	say "M [sta of r10] [sta of r11] [sta of r12] [sta of r13] [sta of r14] [line break]";
	say "N [sta of r20] [sta of r21] [sta of r22] [sta of r23] [sta of r24] [line break]";
	say "O [sta of r30] [sta of r31] [sta of r32] [sta of r33] [sta of r34] [line break]";
	say "P [sta of r40] [sta of r41] [sta of r42] [sta of r43] [sta of r44] [line break][variable letter spacing]";

to say sta of (rm - a room):
	if debug-state is true and rm is location of checkerboard:
		say "X";
	else if debug-state is true and rm is location of magnets:
		say "M";
	else if debug-state is true and rm is location of dominoes:
		say "D";
	else if rm is location of player:
		say "U";
	else if rm is visited:
		say "+";
	else if rm is blockedoff:
		say "*";
	else:
		say "-"


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
	try looking;
	check-trapped;

section eastruning

eastruning is an action applying to nothing.

carry out eastruning:
	try runing east instead;

understand "ee" and "re" and "er" as eastruning.

section westruning

westruning is an action applying to nothing.

carry out westruning:
	try runing west instead;

understand "ww" and "rw" and "wr" as westruning.

section northruning

northruning is an action applying to nothing.

carry out northruning:
	try runing north instead;

understand "nn" and "rn" and "nr" as northruning.

section southruning

southruning is an action applying to nothing.

carry out southruning:
	try runing south instead;

understand "ss" and "rs" and "sr" as southruning.

chapter parser

rule for printing a parser error (this is the simplify parser errors rule):
	say "You can't do much here except go in directions (RUN/R a direction, or typing it double, goes as far as possible that way), or MAPIT/MAP/M to see a map[if board-width < 8 or chex is true]. Though you can guess a verb to win[end if].[paragraph break]ABOUT displays information about the game.";
	reject the player's command;

volume main game

a room has a number called blocklevel. blocklevel of a room is usually 5.

a room can be unblocked or blockedoff. a room is usually unblocked.

a room can be touched. a room is usually not touched.

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

chapter edginess

a room can be edgy or inny. a room is usually edgy.

r11 is inny. r12 is inny. r13 is inny. r21 is inny. r22 is inny. r23 is inny. r31 is inny. r32 is inny. r33 is inny.

chapter clockval

a room has a number called clockval. clockval of a room is usually 0.

clockval of r00 is 0. clockval of r01 is 1. clockval of r02 is 2. clockval of r03 is 3. clockval of r04 is 4.

clockval of r14 is 5. clockval of r24 is 6. clockval of r34 is 7.

clockval of r44 is 8. clockval of r43 is 9. clockval of r42 is 10. clockval of r41 is 11. clockval of r40 is 12.

clockval of r30 is 13. clockval of r20 is 14. clockval of r10 is 15.

volume initialization

lshuf is a list of number variables. lshuf is { 1, 2, 3, 4 }

the player carries the blob of Evil-B-Gone. description of blob is "It pulses as you look at it."

instead of doing something with the blob:
	say "You can really only examine it. It will emit protective gases or whatever as you move."

when play begins:
	shuf-rand;
	sort lshuf in random order;
	repeat with G running through rooms:
		if blocklevel of G is 5:
			now G is fivevalid;
		else:
			now blocklevel of G is entry (blocklevel of G) in lshuf;
	start-play;
	say "Limbo isn't so bad, really. There's not a whole lot to do, even if you wind up reflecting more on what you never got around to doing. There was so much you were interested in, but time just slipped away. Almost too late in life, you found you were just interested in ... stuff ... and all those high powered professions you thought you couldn't be, that you lashed out at--well, they had bad apples, but they also might've been you.[paragraph break]You weren't enough of a jerk for hell, but you didn't do nearly enough in life to escape limbo. You heard of opportunities to move up, to learn a bit more, even if the afterlife, but you never really pursued them. Judgment day HAD to be a few billion years away.";
	wfak;
	say "But it's a bit boring. Then one day you hear a voice boom 'They'll do,' The them is you![paragraph break]'You've spent enough time as a ghost, and we've been watching you. You up for some remedial devil proofing?";
	wfak;
	say "[line break]'Before you can ask about details, you're handed a weird blob. They explain it'll spray enough that if you cover all the intersections in a suburb, the worst evil can't enter. The blob will emit its spray whenever you move. You just need to be efficient. No crossing back where you've been. No retracing where you've gone before. It's like crossing the wires in Ghostbusters. And no getting too near the church. Again, weird science.";
	wfak;
	say "[line break]'You missed a lot of films you wanted to see, but you DID see that one, at least? Good. Anyway. Too long to explain. if you'd paid more attention to science while living, maybe we could, but you didn't, so we can't. Anyway, you up for it?";
	wfak;
	say "Well, you have nothing better to do. The areas are only five by five blocks. How hard can it be? You read the list of place names: jobs you never had the initiative to get and assumed you weren't good enough for, and sometimes you even lashed out against elitists and eggheads who GOT those jobs, but you never even tried.";
	wfak;

to shuf-rand:
	(- shuffle(4); -);

cur-level is a number that varies. cur-level is 1.

blocked-room is a room that varies. [?? d=1 *-11 u=14 x=19 m=21]

definition: a room (called myr) is curlev:
	if blocklevel of myr is cur-level, yes;
	no;

past-start is a truth state that varies.

to start-play:
	now all rooms are unvisited;
	now blocked-room is not blockedoff; [cheat yourself into a certain position here, or in cur-level is 5 below]
[	now blocked-room is r42;
	move player to r40;
	now blocked-room is blockedoff;
	continue the action;]
	if cur-level is 5:
		if number of fivevalid rooms is 0:
			now all fivedone rooms are fivevalid;
		now blocked-room is a random fivevalid room;
		now blocked-room is fivedone;
	else:
		now blocked-room is a random curlev room;
	now blocked-room is blockedoff;
	now left hand status line is "([cur-level]) [location of player]";
	now right hand status line is "X=[xing of blocked-room]";
	if debug-state is true:
		say "DEBUG: [blocked-room] is unavailable.";
	if past-start is false:
		move player to random unblocked room, without printing a room description;
		now past-start is true;
	else:
		move player to random unblocked room;
	if cur-level is 5:
		let valid-config be false;
		let count be 0;
		while valid-config is false and count < 10:
			increment count;
			now valid-config is true;
			now checkerboard is off-stage;
			now dominoes are off-stage;
			now magnets are off-stage;
			move checkerboard to random clearblack room;
			if cheat-prog > 1:
				move dominoes to random clearblack room;
			if cheat-prog > 2:
				move magnets to random clearblack room;
				if location of magnets is edgy and location of dominoes is edgy and location of checkerboard is edgy and location of player is edgy:
					let realmag be clockval of location of magnets;
					let realdom be clockval of location of dominoes;
					let realche be clockval of location of checkerboard;
					let realpla be clockval of location of player;
					if realmag < realpla, now realmag is realmag + 16;
					if realche < realpla, now realmag is realche + 16;
					if realdom < realpla, now realmag is realdom + 16;
					if realpla < realpla, now realmag is realpla + 16;
					if realmag > realche and realmag < realdom, now valid-config is false;
					if realmag < realche and realmag > realdom, now valid-config is false;
					if debug-state is true and valid-config is false, say "ORDERING FAIL: [oopsy].";
					if valid-config is false, next;
					if alt-check of r11 or alt-check of r13 or alt-check of r31 or alt-check of r33:
						if debug-state is true, say "CORNERING FAIL: [oopsy].";
						now valid-config is false;
						next;
				let xdelt be (remainder after dividing rval of location of magnets by 5) - (remainder after dividing rval of location of player by 5);
				let ydelt be (rval of location of magnets / 5) - (rval of location of player / 5);
				say "You feel a pull to the [if ydelt < 0]north[else if ydelt > 0]south[end if][if xdelt < 0]west[else if xdelt > 0]east[end if].";
			if debug-state is true:
				if magnets are not off-stage, say "MAGNETS: [location of magnets].";
				if checkerboard is not off-stage, say "CHECKERBOARD: [location of checkerboard].";
				if dominoes are not off-stage, say "DOMINOES: [location of dominoes].";

to say oopsy:
	say "magnets [location of magnets] checkerboard [location of checkerboard] dominoes [location of dominoes] player [location of player]";

to decide whether alt-check of (rn - a room):
	unless rn is blocked-room, no;
	if rn is r11:
		if location of player is r00 and r10 is blockedoff and r01 is blockedoff and magnets are not in r01 and magnets are not in r10, yes;
	if rn is r13:
		if location of player is r04 and r14 is blockedoff and r03 is blockedoff and magnets are not in r14 and magnets are not in r03, yes;
	if rn is r31:
		if location of player is r40 and r41 is blockedoff and r30 is blockedoff and magnets are not in r41 and magnets are not in r30, yes;
	if rn is r33:
		if location of player is r44 and r43 is blockedoff and r34 is blockedoff and magnets are not in r34 and magnets are not in r43, yes;
	no;

volume things

a winnable is a kind of thing.

check taking a winnable: if noun is not magnets, say "The [noun] jump[if noun is checkerboard]s[end if] away from you. You can still look at [if noun is checkerboard]it[else]them[end if], though." instead;

instead of doing something with winnable:
	if current action is examining or current action is taking, continue the action;
	say "You're incorporeal, so you can't do much other than EXAMINE the [noun].";

the checkerboard is a winnable. "A slightly mutilated checkerboard with the corners cut off[if board-width is 6], slightly smaller than the last,[else if board-width is 4 and esmall is false], even smaller than the last,[end if] lies here.". description is "It's [board-width in words] by [board-width in words][if board-width is not 5], with opposite corners cut off[try-thru][else], and it's easy to trace a way through. Sort of like the current map, only there's not a hole where the church is[end if]."

check examining checkerboard:
	if player has magnets and player has dominoes:
		say "You shuffle the dominoes around. Of course they can't cover the whole checkerboard. But you try to cover everything except--well, what would be where the church is. First time you try, a black square is still visible. You shuffle the dominoes some more. Each time, a black square comes up. You have as much time as you want, and you realize you might be in a no-win situation anyway this time, so you give yourself an hour.";
		wfak;
		say "Black square left again. And again. Always a black square. You start trying to leave a white square.";
		wfak;
		say "About the hundredth time, it hits you. There are thirteen black squares and twelve white squaers. The areas before [ct of 5] all took out...a black square. [ct of 5] took out a white square. That would leave two extra black squares...";
		wfak;
		say "A-ha! That's it! You realize what's going on here. You never had a chance. That's kind of neat--and the 8x8/6x6/4x4 checkerboards, the same thing![paragraph break]You wonder why these people put you up to it, how if they're the good guys, they'd give you such grunt work.";
		wfak;
		say "Then you remember people from the past: the cool science teacher with weird experiments, the math teacher who showed you how to predict games['] final scores by the over/under and point spread (73/-13 meant a score of 43-30. ALGEBRA!) and that English teacher who'd throw out a crazy paradox every Friday. All that frustrated you, too, but it made you want to learn more, and somehow you put it aside because you figured you needed to be focused on something that'd give you a decent job...";
		wfak;
		say "Sitting in [ct of 5] you even remember your first attempts at silly games and how other kids put them down and wound up doing so much better than you in Advanced Placement Computer Science, and you thought you didn't Have It, whatever it was. You just stopped asking interersting questions, but you hoped you'd get a decent enough job and so forth some day. Well, you did.";
		wfak;
		say "You realize just how much time you've spent navel-gazing about where people in Limbo go on Judgment Day. And whoever THEY were, they got you interested again in stuff you can look into. It got you out of the doldrums for a while.";
		wfak;
		say "Surely there must be other ways to discover things you never quite got around to while you were living. You have to go find them. You think you hear applause from the blob before it swirls into itself, and a voice saying 'Lots more than you think would've given up...'";
		wfak;
		say "You spend an hour kicking yourself over all the stuff you meant to learn when alive but didn't. You won't be able to learn it directly, but with plenty of time to haunt libraries and classes and laboratories (nobody'll see you) you'll get to see and do enough.";
		end the story saying "YOU LEARNED SOMETHING COOL";
		the rule succeeds;

to say try-thru:
	say ". You try several times to trace a way through, [if board-width is 8]but you fail[else if board-width is 6]and you seem to figure that it can't be done, but you don't know how to express it[else]and you think you can prove that no loop exists in such cramped quarters. Maybe that holds for [ct of 5], somehow, but you don't know how to PROVE it[end if]"

the magnets are a plural-named winnable. description is "[if player has checkerboard and player has magnets]They're attracting both the dominoes and checkerboard, so if you want to play with the checkerboard, try X CHECKERBOARD[else if player has checkerboard]They're stuck to the checkerboard[else if player has dominoes]They're stuck inside the dominoes[else]You aren't actually carrying them--they're more magnetically attracted to you[end if]."

check going when number of carried things is 4:
	say "No. With your new set of toys, you may just want to X CHECKERBOARD. There's ... something there." instead;

the dominoes are a plural-named winnable. description is "They are two squares glued together. Squares about the same size you saw on the checkerboard[if player has magnets]. The magnets are embedded in them[end if]."

every turn when cur-level is 5:
	if player does not have magnets and magnets are in location of player:
		say "The magnets jump up and hover near you. You obviously attracted them, somehow.";
		now player has magnets;
	else if player has magnets:
		if location of player is location of dominoes and player does not have dominoes:
			say "The dominoes latch on to the magnets[if player has checkerboard]. They're stuck to the checkerboard, so you can probably EXAMINE it agaiin to figure things out more[end if].";
			now player has dominoes;
		if location of player is location of checkerboard and player does not have checkerboard:
			say "Your magnets attract the checkerboard[if player has dominoes]! You may want to X CHECKERBOARD to play around with things.[else]![end if]";
			now player has checkerboard;

Include (-

[ shuffle n i j tmp;
  for(i = n: i > 1: i-- )
  {
	j = random(i + 1);

	tmp = profs-->j;
	profs-->j = profs-->i;
	profs-->i = tmp;
  }
];

Array profs --> 5 "Lawyer" "Doctor" "Professor" "Investor" "Programmer";

-)

to say ct of (n - a number):
	(- print (string)profs-->{n}, "ville"; -)

understand "checker/chess/board" and "checker/chess board" as checkerboard.

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
	say "You suddenly, and those jobs aren't necessarily good or evil by themselves, and you feel briefly ashamed you didn't try harder.";
	say "Suddenly, you realize what's up. Like [if checkerboard is off-stage]a[else]the[end if] checkerboard with the corners out, a 5x5 checkerboard with a non-corner hole out has thirteen of one color, eleven of the other. And since each path alternates between colors...[paragraph break]You're ready to flee [ct of 5], assured you'll never figure out the people who live there, but at least knowing why you can't. You get in a big argument with the spirits who sent you there and you realize, a bit late, they weren't from heaven. They brush off your knowledge and at the same time rip you for not learning that sort of thing when you were alive. You'd have actually been useful to them, figuring that sort of weird stuff out. But now? Well, you don't know it, but at least hell is more interesing than Limbo.[paragraph break]Perhaps it is. Unfortunately, you don't get to learn much in Limbo, but maybe you can poke those other spirits and stop moping? And maybe learn something else? It'd be something at least.";
	end the story finally;

after printing the locale description:
	check-trapped;

all-but is a number that varies.

fewer is a number that varies.

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
			say "Oh no! You are trapped! You hear a hum from the blob, then a crackle.[paragraph break]'Oh, come on,' you hear an authoritative voice say. 'Surely you can do better than that? If we didn't have all the time in the world, we'd get rid of you for wasting ours.'[paragraph break]You're sent back. [ct of cur-level] looks slightly different now.";
		else:
			say "The blob crackles. 'HAVEN'T FIGURED IT OUT, HAVE YOU?' ";
			if number of visited rooms is 23:
				say "[one of]But you almost got everywhere! That should mean something, but it doesn't.[or]Again, you almost completed the loop, and you're not sure why you didn't[or]This is getting frustrating, and you are sure you're doing your best, but you can't recognize why[or]Something's going on here, or it totally isn't, and you're not sure what[stopping]";
			else:
				say "You felt like you could've covered more ground, so you look back on what you did";
			say "[analysis].";
			move-board;
			say "[line break]There's a swirling, and you're back in [ct of cur-level], but everything feels a bit different, now.";
		now all rooms are unvisited;
		start-play;

to say analysis:
	if location of checkerboard is unvisited:
		if board-width < 6:
			say ". You didn't even run across that old checkerboard, this time";
		else:
			say ". Maybe you didn't search thoroughly enough";
	else if chex is false:
		say ". Maybe you could've looked at the checkerboard";
	else if chex is true and board-width is not 5:
		say ". That checkerboard, though. You keep thinking about it";
	else if player has magnets:
		say ". Maybe something [if player has checkerboard or player has dominoes]more [end if]could have gone with the magnets";
	else if dominoes are not off-stage and location of dominoes is not visited:
		say ". You maybe didn't search everwhere this time";
	else if magnets are not off-stage and location of magnets is not visited:
		say ". You maybe didn't search everwhere this time";
	else if player has dominoes and player does not have checkerboard:
		say ". Too bad you don't have something to put the dominoes on. Maybe you could've done something";
	else if player has checkerboard and player does not have dominoes:
		say ". Too bad you don't have something to put on the checkerboard. Maybe you could've done something";

esmall is a truth state that varies.

to move-board:
	if chex is true:
		if board-width > 5:
			decrease board-width by 2;
			increment cheat-prog;
		else if board-width is 4:
			increment board-width;
			increment cheat-prog;
		else:
			now esmall is true;
	now chex is false;

to do-the-next:
	say "You hear ethereal applause once you step on the final intersection. [one of]'Not bad! OK, on to the next suburb, [ct of 2].'[or]'You're getting the hang of it! [ct of 3] next! Still, it can't be THAT hard. Most others got through easily...then...'[or]'Keep goin[']. Attaghost! That's the spirit, spirit!' They drop you off in [ct of 4] next.[or]'Good, but nobody's done [ct of 5] yet. Maybe you'll be the one. It's just the same thing, we're sure.'[stopping]";
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
	if player is in myrm, decide no;
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

the description of a room is "You can go [list of viable directions]. The church is at [xing of blocked-room]."

before going:
	if noun is up:
		say "You're not good enough for heaven." instead;
	if noun is down:
		say "You're not bad enough for hell." instead;
	if noun is not linear:
		say "No cutting through buildings." instead;
	let q be the room noun of location of player;
	if q is nowhere, say "You're at the [noun] edge of [ct of cur-level]." instead;
	if q is blockedoff, say "Whoah! The church is to the [noun]." instead;
	if q is visited, say "Wait, no, you've already been [noun] to [description of room noun of location of player] already." instead;

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
	say "[x + 1][if x is 0]st[else if x is 1]nd[else if x is 2]rd[else]th[end if] and ";
	say "[if y is 0]Lake[else if y is 1]Maple[else if y is 2]North[else if y is 3]Oak[else]Pine[end if]"

section meta

check quitting the game:
	bug-nag;

to bug-nag:
	if cur-level is 5:
		say "NOTE: if you're worried you messed up, or there's a bug in the town layout, there isn't.";

check restarting the game:
	bug-nag;

volume undoing stuff

Rule for deciding whether to allow undo:
	if cur-level is 5:
		say "Don't worry. Even if you mess up, you'll get as many times to try again as you want. All kinds of time in the afterlife.";
		deny undo;
	else:
		say "NOTE: there are no fatal mistakes in the game. You will, at worst, keep looping until you get things right.";


volume skip-and-jump

skip-ask-this-time is a truth state that varies.

mypath is a list of rooms variable.

after looking when skip-ask-this-time is false:
	consider the win-jump rule;
	continue the action;

this is the win-jump rule:
	if skip-ask-this-time is true, continue the action;
	let cur be location of player;
	let myx be only-exit of cur;
	now all rooms are not touched;
	let uv be number of unvisited rooms;
	if uv <= 2, continue the action; [it's just annoying if the person is 1 square away. Also, this probably isn't relevant, and you've probably been asked anyway.]
	now mypath is {};
	while myx is not up and myx is not down:
		now cur is touched;
		now cur is room myx of cur;
		now myx is only-exit of cur;
		add cur to mypath;
	if debug-state is true, say "DEBUG: [number of unvisited rooms] unvisited, [number of touched rooms] untouched.";
	if number of unvisited rooms is 1 + number of touched rooms:
		say "You consider where you are and where you've been. You're pretty sure there's only one way through town. Take it?";
		if the player consents:
			let temp be 0;
			repeat with myp running through mypath:
				if temp > 0, say ", ";
				say "[xing of myp]";
				increment temp;
			do-the-next;
		else:
			say "OK. I won't ask again.";
			now skip-ask-this-time is true;
	else if number of touched rooms > 0 and myx is up: [this is pretty hacky. up = 0 ways out, down = 2 ways out]
		say "You feel a sense of worry. You're not sure why, but you do.";
	the rule succeeds;

to decide which direction is only-exit of (rm - a room):
	let dir be up;
	let X be {north, south, east, west};
	repeat with X2 running through X:
		let X3 be the room X2 of rm;
		if X3 is nothing, next;
		if X3 is visited or X3 is blockedoff or X3 is touched, next;
		if dir is not up, decide on down;
		now dir is X2;
	decide on dir;

chapter cheating - not for release

cheating is an action applying to nothing.

understand the command "cheat" as something new.

understand "cheat" as cheating.

carry out cheating:
	say "Invoking cheat.";
	consider the win-jump rule;

volume standard verb tweaks

check dropping:
	if player does not have noun, say "You don't have that." instead;
	say "That kind of jumped up at you, so it's hard to put down." instead;

volume debug - not for release

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