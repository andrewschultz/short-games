"A Checkered Haunting" by Andrew Schultz

the story headline is "A puzzling afterlife experience".

the story description is "You're never too incorporeal to learn something neat.".

the release number is 2.

Release along with the "Parchment" interpreter.

volume includes

include Basic Screen Effects by Emily Short.

include conditional undo by Jesse McGrew.

include trivial niceties by Andrew Schultz.

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

cardinals is a list of directions variable. cardinals is {north, south, east, west}.

section variables for testing/tracing that cannot fully be put in test module

debug-state is a truth state that varies.

test-start is a truth state that varies.

section debug - not for release

include Checkered Haunting Tests by Andrew Schultz. [keep this up here, because it's easier to have the one "when play begins" rule fire off first by default.]

volume silly i6 change

five-failed is a number that varies.

include (-

[ QUIT_THE_GAME_R; if (actor ~= player) rfalse;
	GL__M(##Quit,2);
	if (YesOrNo()~=0)
	{
	quit;
	}
	else
	{
	if ((+ five-failed +) > 2)
	{
	print "You change your mind. Maybe there's some secret to unlock, here.^";
	}
	}
];

-) instead of "Quit The Game Rule" in "ZMachine.i6t".

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

chapter inventory

check taking inventory:
	if number of things carried by player is 0, say "You're carrying nothing." instead;
	if number of things carried by player is 1, say "That blob of Evil-B-Gone is floating around you." instead;
	say "Somehow, a few corporeal things stuck to you in addition to the blob of Evil-B-Gone you're carrying around: [the list of vacuumed things]." instead;

definition: a thing (called th) is vacuumed:
	if th is evil b gone, no;
	if th is carried, yes;
	no;

does the player mean examining something not carried: it is very likely.

description of player is "As incorporeal as ever."

chapter waiting

instead of waiting, say "[one of]You have all the time in the world. Nobody upbraids you for your laziness, but the blob sort of pulses as if to say, get on with it, more important spirits are watching you[or]The blob pulses passive-aggressively (you think) some more[stopping]."

instead of thinking:
	say "You contemplate where you are and where you've been.[paragraph break]";
	try mapiting;

chapter cussin

the block swearing obscenely rule is not listed in any rulebook.
the block swearing mildly rule is not listed in any rulebook.

check swearing obscenely: say "Bad idea. That is extra risky in the afterlife." instead;

check swearing mildly: try swearing obscenely instead;

chapter mapview toggle

mving is an action out of world.

understand the command "mv" as something new.

understand "mv" as mving.

to opt-map-view:
	if map-view is true, say "[my-legend][my-map][line break]";

carry out mving:
	now map-view is whether or not map-view is false;
	say "Map view is now [on-off of map-view].";
	opt-map-view;
	the rule succeeds;

map-view is a truth state that varies.

to say on-off of (ts - a truth state):
	say "[if ts is true]on[else]off[end if]"

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.
understand the command "credits" as something new.

understand "about" as abouting.
understand "credits" as abouting.

carry out abouting:
	say "[italic type]A Checkered Haunting[roman type] was an entrant in 2016 EctoComp's Petite Mort division. It received a post-comp tweak soon after the comp ended, and the final version is scheduled for 2019.[paragraph break]Thanks to verityvirtue for pointing out a debug-text bug in the comp version, which led to other fixes. Thanks to Billy Mays for a review and Duncan Bowsman for a PM that led to a tweak.[paragraph break]Also, don't overthink the game. You can complete the final level without getting through it.[paragraph break]Victor Ojuel helped me send out a post-comp release.";

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
	if map-view is true, say "You shouldn't need to, with map view on, but here it is anyway.[paragraph break]";
	say "[bold type]Map of [ctv of cur-level][roman type][paragraph break]";
	say "[my-legend][my-map][line break]";

to say my-legend:
	if debug-state is true and cur-level is 5, say "NOTE: spoilers for the dominoes/magnets/checkerboard only appear in debug mode.";
	say "+ = visited, . = unvisited, S = start, U = where you are now, * = church.";

to say my-map:
	say "[fixed letter spacing]  1 2 3 4 5[line break]L [sta of r00] [sta of r01] [sta of r02] [sta of r03] [sta of r04] [line break]";
	say "M [sta of r10] [sta of r11] [sta of r12] [sta of r13] [sta of r14] [line break]";
	say "N [sta of r20] [sta of r21] [sta of r22] [sta of r23] [sta of r24] [line break]";
	say "O [sta of r30] [sta of r31] [sta of r32] [sta of r33] [sta of r34] [line break]";
	say "P [sta of r40] [sta of r41] [sta of r42] [sta of r43] [sta of r44][variable letter spacing]";

to say sta of (rm - a room):
	if debug-state is true and rm is location of checkerboard and player does not have checkerboard:
		say "[if rm is visited]X[else]x[end if]";
	else if debug-state is true and rm is location of magnets and player does not have magnets:
		say "[if rm is visited]M[else]m[end if]";
	else if debug-state is true and rm is location of dominoes and player does not have dominoes:
		say "[if rm is visited]D[else]d[end if]";
	else if rm is location of player:
		say "U";
	else if rm is start-room:
		say "S";
	else if rm is visited:
		say "+";
	else if rm is blockedoff:
		say "*";
	else:
		say "-"

chapter verbsing

to say my-verbs:
	say "You can't do much here except go in the four basic directions ([bold type]N/S/E/W[roman type]), or try to take or examine things. [bold type]RUN/R[roman type] (direction) or typing the direction abbreviation twice ([bold type]NN/SS/EE/WW[roman type]) lets you run as far as possible in that direction.[paragraph break][bold type]MAPIT/MAP/M[roman type] lets you see a map. [bold type]MV[roman type] toggles seeing a map in a room description, which may help you navigate easier than the text based description[paragraph break][bold type]ABOUT[roman type] displays information about the game. [bold type]VERBS[roman type] or any command I can't process will give this. Many standard verbs have been disabled in order to simplify the game.[paragraph break]You may also wish to [bold type]X[roman type] or [bold type]EXAMINE[roman type] any items you run across."

verbsing is an action applying to nothing.

understand the command "verbs" as something new.
understand the command "verb" as something new.
understand the command "v" as something new.

understand "verbs" as verbsing.
understand "verb" as verbsing.
understand "v" as verbsing.

carry out verbsing:
	say "[my-verbs].";
	the rule succeeds;

chapter xyzzying

xyzzying is an action applying to nothing.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "Fermat's proof of his famous theorem appears in a flash of light! Well, if it exists. If not, let's just pretend it's several different snappy proofs of the Pythagorean Theorem.";
	the rule succeeds.

chapter runing

runing is an action applying to one visible thing.

understand the command "run" as something new.
understand the command "r" as something new.

understand "run [direction]" as runing.
understand "r [direction]" as runing.

carry out runing:
	unless noun is linear, try going noun instead;
	let moved be 0;
	let missed-something be false;
	let q be the room noun of location of player;
	if noun is not okay, say "[if q is nowhere]You can't go further[else if q is blockedoff]The church is[else]You've already been[end if] [noun]." instead;
	while 1 is 1:
		move player to q, without printing a room description;
		if noun is not okay, break;
		if noun is okay, say "[bold type][q][roman type][paragraph break]";
		now q is the room noun of q;
		increment moved;
		if location of player is littered and missed-something is false:
			say "Whoa! What was that? You missed something as you ran past. Hope it wasn't TOO important. Eh, whatever it is, maybe it'll turn up elsewhere.";
			now missed-something is true;
	if the room noun of location of player is blockedoff, say "You stop before you run into the church.";
	try looking;
	check-trapped;
	if moved is 1, say "A short run, but hey, you never get exhausted in the afterlife.";

definition: a room (called rm) is littered:
	if dominoes are in rm or checkerboard is in rm or magnets are in rm, yes;
	no;

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
	say "That command wasn't recognized. You only need directions and [b]X[r] to examine in order to win, but [bold type]VERBS[roman type] will show some actions, too.";
	reject the player's command;

chapter core meta stuff

check restarting the game:
	say "Somewhere, you hear an officious adult boom 'There's no restarting in life!' Or the afterlife, you guess.[paragraph break]NOTE: there is no way to get the game in an unwinnable position or to lose progress, though you may be trapped in a certain area for a bit. And you don't get points deducted for taking too many runs through.";

check quitting the game:
	say "You don't need some silly fetch assignment. It takes away from...general meditative lingering you'd rather be doing, you guess[if five-failed > 1]. You wonder if someone is pulling your chain, or maybe they're trying to help you realize something weird and interesting[end if].";

chapter guess the verb from the original game

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
	say "Suddenly, you realize what's up. Like [if checkerboard is off-stage]a[else]the[end if] checkerboard with the corners out, a 5x5 checkerboard with a non-corner hole out has thirteen of one color, eleven of the other. And since each path alternates between colors...[paragraph break]You're ready to flee [ctv of 5], assured you'll never figure out the people who live there, but at least knowing why you can't. You get in a big argument with the spirits who sent you there and you realize, a bit late, they weren't from heaven. They brush off your knowledge and at the same time rip you for not learning that sort of thing when you were alive. You'd have actually been useful to them, figuring that sort of weird stuff out. But now? Well, you don't know it, but at least hell is more interesting than Limbo.[paragraph break]Perhaps it is. Unfortunately, you don't get to learn much in Limbo, but maybe you can poke those other spirits and stop moping? And maybe learn something else? It'd be something at least.";
	end the story finally;

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

section debug stuff - not for release

a room is usually not privately-named.

chapter edginess

a room can be edgy or inny. a room is usually edgy.

r11 is inny. r12 is inny. r13 is inny. r21 is inny. r22 is inny. r23 is inny. r31 is inny. r32 is inny. r33 is inny.

chapter clockval

a room has a number called clockval. clockval of a room is usually 0.

clockval of r00 is 0. clockval of r01 is 1. clockval of r02 is 2. clockval of r03 is 3. clockval of r04 is 4.

clockval of r14 is 5. clockval of r24 is 6. clockval of r34 is 7.

clockval of r44 is 8. clockval of r43 is 9. clockval of r42 is 10. clockval of r41 is 11. clockval of r40 is 12.

clockval of r30 is 13. clockval of r20 is 14. clockval of r10 is 15.

volume other initialization

lshuf is a list of number variables. lshuf is { 1, 2, 3, 4 }

the player carries the blob of Evil B Gone. description of blob is "A message appears in the blob as you stare at the swirly gases:[paragraph break]1. Don't touch the church[line break]2. Don't cross your own path[line break]3. Visit everywhere you can[line break]4. Don't worry if you mess up.". printed name of Evil B Gone is "blob of Evil-B-Gone".

instead of doing something with the blob:
	if current action is examining, continue the action;
	say "The blob is just, well, there. It will emit protective gases or whatever as you move, and you can examine it to remember what to do."

when play begins:
	shuf-rand;
	sort lshuf in random order;
	repeat with G running through rooms:
		if blocklevel of G is 5:
			now G is fivevalid;
		else:
			now blocklevel of G is entry (blocklevel of G) in lshuf;
	start-play;
	say "Limbo isn't so bad, really. A bit boring, to reflect on what you never got around to doing. You did your best late in life, no longer intimidated by people in high-powered professions whining about how hard it was. You didn't want to be like them, and one way was -- not to really apply yourself![paragraph break]So you weren't enough of a jerk for hell, but you didn't do nearly enough in life to escape limbo. You heard of opportunities to move up, to learn a bit more, even if the afterlife, but you never really pursued them. Judgment day HAD to be a few billion years away. Someone else more motivated probably deserved it more.";
	wfak;
	say "[line break]Then you hear a voice. 'Psst! Got an opportunity. It might not pop up for another million years!'";
	wfak;
	say "[line break]You shrug, wary of evil spirits. You've heard there are opportunities to move DOWN, too. But you aren't forced to sign anything. What the hey? You're handed a blob. 'Okay. Ready for the rules?'";
	wfak;
	say "[line break]You nod.[paragraph break]'Here's the deal. This blob is full of Evil-B-Gone. You need to spread it around a few small towns. You can't run by the church, and you can't cross over your own path. Sort of a Ghostbusters thing.";
	wfak;
	say "[line break]'I know you missed a lot of films you wanted to see, but you DID see that one, at least? Good. Anyway. Too long to explain. If you'd paid more attention to science while living, you'd get it, but you didn't, so we can't. Anyway, you up for it?'";
	wfak;
	say "[line break]You're not sure if that last bit was evil or just snark, but you have to admit it's factual enough. You read the list of place names: jobs you never had the initiative to get and assumed you weren't good enough for, and sometimes you even lashed out against elitists and eggheads who GOT those jobs, but you never even tried. And the towns--they're rather small. This can't take too long.";
	wfak;

to shuf-rand:
	(- shuffle(4); -);

cur-level is a number that varies. cur-level is 1.

blocked-room is a room that varies. [?? d=1 *-11 u=14 x=19 m=21]

definition: a room (called myr) is curlev:
	if blocklevel of myr is cur-level, yes;
	no;

past-start is a truth state that varies.

start-room is a room that varies.

to start-play:
	now skip-ask-this-time is false;
	now blocked-this-time is false;
	now all rooms are unvisited;
	if test-start is false:
	[	now blocked-room is r42;
		move player to r40;
		now blocked-room is blockedoff;
		continue the action;]
		now blocked-room is not blockedoff; [cheat yourself into a certain position here, or in cur-level is 5 below]
		if cur-level is 5: [if anything is NOT commented out above, delete it.]
			if number of fivevalid rooms is 0:
				now all fivedone rooms are fivevalid;
			now blocked-room is a random fivevalid room;
			now blocked-room is fivedone;
		else:
			now blocked-room is a random curlev room;
		now blocked-room is blockedoff;
		move player to random unblocked room, without printing a room description;
		now start-room is location of player;
	now start-room is visited;
	now test-start is false;
	if debug-state is true:
		say "DEBUG: [blocked-room] is unavailable.";
	now left hand status line is "([cur-level]) [location of player]";
	now right hand status line is "X=[xing of blocked-room]";
	if cur-level is 5:
		let valid-config be false;
		let count be 0;
		while valid-config is false and count < 10:
			increment count;
			now valid-config is true;
			now checkerboard is off-stage;
			now dominoes are off-stage;
			now magnets are off-stage;
			move checkerboard to random clearwhite room;
			if cheat-prog > 1:
				move dominoes to random clearwhite room;
			if cheat-prog > 2:
				move magnets to random clearwhite room;
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

ever-mag-coll is a truth state that varies.
ever-mag is a truth state that varies.

check taking a winnable: if noun is not magnets, say "The [noun] jump[if noun is checkerboard]s[end if] away from you[if ever-mag-coll is true]. Too bad you didn't get the magnets first this time[else if ever-mag is true]. It doesn't stick to you like the magnets did[else]. Maybe you need something to attract [it-them of noun][end if]. You can still look at [it-them of noun], though." instead;

to say it-them of (x - a thing):
	say "[if x is plural-named]them[else]it[end if]"

instead of doing something with winnable:
	if current action is examining or current action is taking, continue the action;
	say "You're incorporeal, so you can't do much other than EXAMINE the [noun].";

chapter checkerboard

the checkerboard is a winnable. "A slightly mutilated checkerboard with the corners cut off[if board-width is 6], slightly smaller than the last,[else if board-width is 4 and esmall is false], even smaller than the last,[end if] lies here.". description is "It's [board-width in words] by [board-width in words][if board-width is not 5], with opposite corners cut off[try-thru][else], and it's easy to trace a way through. Sort of like the current map, only there's not a hole where the church is[end if]."

understand "checker/chess/board" and "checker/chess board" as checkerboard.

check examining checkerboard:
	if player has magnets and player has dominoes:
		say "You shuffle the dominoes around. Of course they can't cover the whole checkerboard. But you try to cover everything except--well, what would be where the church is. First time you try, a black square is still visible. You shuffle the dominoes some more. Each time, a black square comes up. You have as much time as you want, and you realize you might be in a no-win situation anyway this time, so you give yourself an hour.";
		wfak;
		say "Black square left again. And again. Always a black square. You start trying to leave a white square.";
		wfak;
		say "About the hundredth time, it hits you. There are thirteen black squares and twelve white squares. The areas before [ctv of 5] all took out...a black square. [ctv of 5] took out a white square. That would leave two extra black squares...";
		wfak;
		say "A-ha! That's it! You realize what's going on here. You never had a chance. That's kind of neat--and the 8x8/6x6/4x4 checkerboards, the same thing![paragraph break]You wonder why these people put you up to it, how if they're the good guys, they'd give you such grunt work.";
		wfak;
		let losers be a random number from 20 to 30;
		let winners be a random number from losers to 40;
		say "Then you remember people from the past: the cool science teacher with weird experiments, the math teacher who showed you how to predict games['] final scores by the over/under and point spread ([winners + losers]/[winners - losers] meant a score of [winners]-[losers]. ALGEBRA!) and that English teacher who'd throw out a crazy paradox every Friday. All that frustrated you, too, but it made you want to learn more, and somehow you put it aside because you figured you needed to be focused on something that'd give you a decent job...";
		wfak;
		say "Sitting in [ctv of 5] you even remember your first attempts at silly games and how other kids put them down and wound up doing so much better than you in Advanced Placement Computer Science, and you thought you didn't Have It, whatever it was. You just stopped asking interesting questions, but you hoped you'd get a decent enough job and so forth some day. Well, you did.";
		wfak;
		say "You realize just how much time you've spent navel-gazing about where people in Limbo go on Judgment Day. And whoever THEY were, they got you interested again in stuff you can look into. It got you out of the doldrums for a while.";
		wfak;
		say "Surely there must be other ways to discover things you never quite got around to while you were living. You have to go find them. You think you hear applause from the blob before it swirls into itself, and a voice saying 'Many more others than you think would've given up...'";
		wfak;
		say "You spend an hour kicking yourself over all the stuff you meant to learn when alive but didn't. You won't be able to learn it directly, but with plenty of time to haunt libraries and classes and laboratories (nobody'll see you) you'll get to see and do enough.";
		end the story saying "YOU LEARNED SOMETHING COOL";
		the rule succeeds;

to say try-thru:
	say ". You try several times to trace a way through, [if board-width is 8]but you fail[else if board-width is 6]and you seem to figure that it can't be done. There are a lot fewer possible ways through than for the 8x8 board, but still too many for you to figure anything definitive[else]and it seems no matter where you start, you eventually wind up with two dead ends, and you can only fill one. Maybe that holds for [ctv of 5], somehow, but you don't know how to PROVE it[end if]"

chapter magnets

the magnets are a plural-named winnable. description is "[if player has checkerboard and player has magnets]They're attracting both the dominoes and checkerboard, so if you want to play with the checkerboard, try X CHECKERBOARD[else if player has checkerboard]They're stuck to the checkerboard[else if player has dominoes]They're stuck inside the dominoes[else]You aren't actually carrying them--they're more magnetically attracted to you[end if]."

check going when number of carried things is 4:
	say "No. With your new set of toys, you may just want to X CHECKERBOARD. There's ... something there." instead;

chapter dominoes

the dominoes are a plural-named winnable. description is "They are two squares glued together. Squares about the same size you saw on the checkerboard[if player has magnets]. The magnets are embedded in them[end if]."

every turn when cur-level is 5:
	if player does not have magnets and magnets are in location of player:
		say "The magnets jump up and hover near you. You obviously attracted them, somehow.";
		now player has magnets;
		now ever-mag is true;
	else if player has magnets:
		if location of player is location of dominoes and player does not have dominoes:
			say "The dominoes latch on to the magnets[if player has checkerboard]. They're stuck to the checkerboard, so you can probably EXAMINE it again to figure things out more[end if].";
			now ever-mag-coll is true;
			now player has dominoes;
		if location of player is location of checkerboard and player does not have checkerboard:
			say "Your magnets attract the checkerboard[if player has dominoes]! You may want to X CHECKERBOARD to play around with things.[else]![end if]";
			now ever-mag-coll is true;
			now player has checkerboard;

[ comments for below: random(x) = 1 ... x]

Include (-

[ shuffle n i j tmp;
  for(i = n: i > 1: i-- )
  {
	j = random(i);

	tmp = profs-->j;
	profs-->j = profs-->i;
	profs-->i = tmp;

	tmp = whines-->j;
	whines-->j = whines-->i;
	whines-->i = tmp;

	tmp = reals-->j;
	reals-->j = reals-->i;
	reals-->i = tmp;
  }
];

Array profs --> 5 "Lawyer" "Doctor" "Professor" "Investor" "Programmer";

Array whines --> 5 "Ugh. Lawyers. You were intimidated from that racket by watching the right (or wrong) TV shows. And from all the lawyer jokes you heard." "Doctors. You remember some real know-it-alls in the pre-med program. Looked down on general practicioners or dentists or nurses." "You remember professors who seemed impatient with dumb questions, rumors of stupid academic squabbles getting in the way of real stuff." "How could you forget all the junk bond scandals and articles on how mutual funds really zapped you with fees? You'd probably have to cheat to beat the market." "You remember silly show-offs in the computer lab that got in the way of you playing Civilization or FreeCell or even half-heartedly completing a last-minute introductory coding assignment.";

Array reals --> 5 "Lawyers aren't all just about yelling at people and getting fees and weaseling for full partnership like on TV. Some actually get at the truth. They just aren't the noisy ones." "Of course, some doctors are all about the money, but you remember doctors from when you were a kid who were really nice to you, just because." "College was a cynical time for you, and while some professors taught weed-out courses, others actually cared and wanted to help. You didn't ask for enough." "Investing by itself isn't immoral. Of course crooked junk bond investors made the news, but you do wish you'd saved a bit more for retirement, and there were a few common sense strategies you never took." "You remember trying to program simple games as a kid and being told they wouldn't be any good. You sort of let yourself give up on that, and you remember how stuff like HTML seemed too easy and should be beneath you. But you should have done something.";

-)

to say ctv of (n - a number):
	(- print (string)profs-->{n}, "ville"; -)

to say wh of (n - a number):
	(- print (string)whines-->{n}; -)

to say re of (n - a number):
	(- print (string)reals-->{n}; -)

after examining checkerboard: now chex is true.

chex is a truth state that varies.

board-width is a number that varies. board-width is 8.

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
			say "Oh no! You are trapped! You hear a hum from the blob, then a crackle.[paragraph break]'Oh, come on,' you hear an authoritative voice say. 'Surely you can do better than that? If we didn't have all the time in the world, we'd get rid of you for wasting ours.'[paragraph break]You're sent back. [ctv of cur-level] looks slightly different now.";
		else:
			increment five-failed;
			say "The blob crackles. 'HAVEN'T FIGURED IT OUT, HAVE YOU?' ";
			if number of visited rooms is 23:
				say "[one of]But you almost got everywhere! That should mean something, but it doesn't.[or]Again, you almost completed the loop, and you're not sure why you didn't[or]This is getting frustrating, and you are sure you're doing your best, but you can't recognize why[or]Something's going on here, or it totally isn't, and you're not sure what[stopping]";
			else:
				say "You felt like you could've covered more ground, so you look back on what you did";
			say "[analysis].";
			move-board;
			say "[line break]There's a swirling, and you're back in [ctv of cur-level], but everything feels a bit different, now.";
		start-play;
		carry out the printing the locale description activity with location of player;

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
		say ". You maybe didn't search everywhere this time";
	else if magnets are not off-stage and location of magnets is not visited:
		say ". You maybe didn't search everywhere this time";
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
	say "You hear ethereal applause once you step on the final intersection. And you also take time to reflect. [re of cur-level][paragraph break]";
	say "[one of]'Not bad! OK, on to the next suburb, [ctv of 2].'[or]'You're getting the hang of it! [ctv of 3] next! It won't be that hard. Only later...'[or]'Keep goin[']. Attaghost! That's the spirit, spirit!' They drop you off in [ctv of 4] next.[or]'Good, but nobody's done [ctv of 5] yet. Maybe you'll be the one. It's just the same thing, we're sure.'[stopping]";
	increment cur-level;
	say "[line break]That name just brings back memories. [wh of cur-level][paragraph break]";
	start-play;
	try looking;

to decide whether walled-in:
	if north is okay, decide no;
	if south is okay, decide no;
	if east is okay, decide no;
	if west is okay, decide no;
	decide yes;

definition: a room (called myrm) is deadendy:
	if myrm is location of player, no;
	if myrm is adjacent to location of player, no;
	if myrm is blocked-room, no;
	if myrm is visited, no;
	if okexits of myrm is 1, yes;
	no;

to decide what number is okexits of (rm - a room):
	let temp be 0;
	repeat with ca running through cardinals:
		let r2 be the room ca of rm;
		if r2 is nowhere, next;
		if r2 is blocked-room, next;
		if r2 is visited, next;
		increment temp;
	decide on temp;

definition: a room (called myrm) is available:
	if player is in myrm, decide no;
	if myrm is visited, decide no;
	if myrm is blocked-room, decide no;
	if myrm is touched, decide no;
	decide yes;

to decide what number is blackness of (rm - a room):
	decide on the remainder after dividing rval of rm by 2;

definition: a room (called myrm) is black:
	if blackness of myrm is 0, yes;
	no;

definition: a room (called myrm) is clearwhite:
	if myrm is black, no;
	if player is in myrm, decide no;
	if checkerboard is in myrm, decide no;
	if dominoes are in myrm, decide no;
	if magnets are in myrm, decide no;
	if myrm is blocked-room, decide no;
	decide yes;

definition: a direction (called d) is okay:
	let r be location of player;
	if the room d of r is nowhere, decide no;
	if the room d of r is visited, decide no;
	if the room d of r is blocked-room, decide no;
	decide yes;

map-help is a truth state that varies.

after printing the locale description:
	if map-help is false:
		say "Okay, starting in [ctv of cur-level]. [wh of cur-level][paragraph break]";
		now map-help is true;
		say "[italic type][bracket]NOTE: [b]ABOUT[r][i] shows general information for this game, and [b]VERBS[r][i] shows the cut-down list of verbs you need to win. If you are not using a screen reader, you may find the [b]MV[r][i] (map view) command helpful to visualize the town more easily.[close bracket][roman type][line break]";

the printed name of a room is usually "[ctv of cur-level], [xing of the item described]".

the description of a room is usually "[if number of unvisited rooms is 2]This--this looks like the last intersection to cover[else if map-view is true][one of][my-legend][or][stopping][my-map][else if number of okay directions is 0 and number of unvisited rooms is 0]Uh oh. You've been everywhere nearby[else][remaining-dirs][end if]. The church is at [xing of blocked-room]."

to say remaining-dirs:
	if number of okay directions is 0:
		say "You look around for places nearby you haven't gone yet. You can't find any";
	else:
		say "You can go [list of okay directions][alreadies]";

to say alreadies:
	if number of alreadied directions is 0, continue the action;
	say ", but you've already been [list of alreadied directions]";

before going:
	if noun is up:
		say "You're not good enough for heaven." instead;
	if noun is down:
		say "You're not bad enough for hell." instead;
	if noun is not linear:
		say "No cutting through buildings." instead;
	let q be the room noun of location of player;
	if q is nowhere, say "You're at the [noun] edge of [ctv of cur-level]." instead;
	if q is blockedoff, say "Whoah! The church is to the [noun]." instead;
	if q is visited, say "Wait, no, you've already been [noun] to [xing of room noun of location of player] already." instead;

definition: a direction (called d) is alreadied:
	let r be location of player;
	if the room d of r is visited, decide yes;
	decide no;

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
	if cur-level < 5:
		say "Don't worry. Even if you mess up, you'll get as many times to try again as you want. All kinds of time in the afterlife.";
	else:
		say "NOTE: there are no fatal mistakes in the game. You will, at worst, keep looping until you get things right.";
	deny undo;

volume skip asking "all the way to end?"

skip-ask-this-time is a truth state that varies.

mypath is a list of rooms variable.

after printing the locale description (this is the check for jump wins rule):
	consider the win-jump rule;
	continue the action;

blocked-this-time is a truth state that varies.

this is the win-jump rule:
	if blocked-this-time is true, continue the action;
	if skip-ask-this-time is true, continue the action;
	let cur be location of player;
	let myx be only-exit of cur;
	now all rooms are not touched;
	let uv be number of unvisited rooms;
	if uv <= 2, continue the action; [it's just annoying if the person is 1 square away. Also, this probably isn't relevant, and you've probably been asked anyway.]
	now mypath is {};
	let blackness-flag be false;
	if number of deadendy rooms is 1: [if a dead end is the same as the starting color, we have a parity problem. Square #1 must be the opposite color of square #24.]
		let rde be a random deadendy room;
		if blackness of rde is blackness of start-room:
			now blackness-flag is true;
		let MR be a random deadendy room;
		let testx be only-exit of MR; [here we work backward from the dead end to see which squares have to be filled. This may help catch other no-win situations via how the "available" status considers the "touched" status.]
		while testx is not up and testx is not down:
			now MR is touched;
			now MR is room testx of MR;
			now testx is only-exit of MR;
	let rr be a random available room;
	spread-out rr;
	if number of available rooms > 0: [this is printed if you split the board]
		say "You feel a sense of worry.";
		now blocked-this-time is true;
		continue the action;
	if number of deadendy rooms > 1: [two dead ends is a problem]
		say "You feel a strange uneasiness.";
		now blocked-this-time is true;
		continue the action;
	if blackness-flag is true:
		say "You blink a bit. Maybe you messed up, maybe you didn't.";
		now blocked-this-time is true;
		continue the action;
	now all rooms are not touched;
	while myx is not up and myx is not down:
		now cur is touched;
		now cur is room myx of cur;
		now myx is only-exit of cur;
		add cur to mypath;
	if debug-state is true, say "DEBUG: [number of unvisited rooms] unvisited, [number of touched rooms] untouched.";
	if number of unvisited rooms is 1 + number of touched rooms:
		say "You consider where you are and where you've been. You're pretty sure there's only one way through town. (J)ump ahead using it or (K)eep back?";
		let X be 0;
		while 1 is 1:
			now X is the chosen letter;
			if X is 74 or X is 106 or X is 75 or X is 107, break; [ I'd like to use (Y)es and (N)o but N conflicts with North. ]
			say "(J)ump ahead or (K)eep back?";
		if X is 74 or X is 106:
			let temp be 0;
			say "You rush through: ";
			repeat with myp running through mypath:
				if temp > 0, say ", ";
				say "[xing of myp]";
				increment temp;
			say ".[paragraph break]";
			do-the-next;
		else:
			say "OK. I won't ask again during this run.";
			now skip-ask-this-time is true;
	else if number of touched rooms > 0 and myx is up: [this is pretty hacky. up = 0 ways out, down = 2 ways out]
		say "You feel very uneasy indeed.";
	the rule succeeds;

to spread-out (rr - a room):
	if rr is not available, continue the action;
	now rr is touched;
	if the room north of rr is available, spread-out the room north of rr;
	if the room south of rr is available, spread-out the room south of rr;
	if the room east of rr is available, spread-out the room east of rr;
	if the room west of rr is available, spread-out the room west of rr;

to decide which direction is only-exit of (rm - a room):
	let dir be up;
	repeat with X2 running through cardinals:
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

chapter the score

procedural rule: ignore the print final score rule.

check requesting the score: say "While there's no score per se, you are in town [cur-level] of 5." instead;

volume byte shedding

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

