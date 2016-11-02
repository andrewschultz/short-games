"Heezy Park" by Andrew Schultz

the story headline is "A Brief Chase"

[Note this needs to be set to Z8 to compile in the IDE but I prefer Z5 for release just to say I wrote a Z5 game]

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

use no scoring.

description of player is "Probably looking pretty forlorn, what with your candy stolen. You don't even care about your costume."

after reading a command:
	if the player's command includes "costume":
		say "You don't care much about your costume now that you need to get your candy back. Well, fortunately, it [if half nelson is in nw]hasn't inhibited[else]doesn't, and won't, inhibit[end if] running.";
		reject the player's command;

section taken from Emily Short's Basic Screen Effects

Include (-

[ KeyPause i;
	i = VM_KeyChar();
	rfalse;
];

-)

to wfak:
	if debug-state is false:
		say "[line break](Push any key to continue)[line break]";
		wait for any key;

To wait for any key:
	(- KeyPause(); -)

volume initializer

debug-state is a truth state that varies.

calc-message is a number that varies.

last-viewed is a number that varies. last-viewed is -1.

unique-views is a number that varies.

to say sign-message:
	if calc-message > last-viewed:
		increment unique-views;
		now last-viewed is calc-message;
	say "[if calc-message is 0]UGG[else if calc-message is 1]AHH[else if calc-message is 2]EEE[else if calc-message is 3]YIP[else]SORRY, BUG[end if]";

to say sta:
	say "[bold type]*[roman type]"

to say pd: [I used to have periods here. I'm not sure if they work. I don't think they do.]
	say " ";

to say ful-disp:
	say "[fixed letter spacing]";
	if calc-message is 0:
		say "[sta][pd][sta] [sta][sta][sta] [sta][sta][sta][line break][sta] [sta] [sta] [sta] [sta] [sta][line break][sta][pd][sta] [sta][sta][sta] [sta][sta][sta][line break][sta] [sta] [pd] [sta] [pd] [sta][line break][sta][sta][sta] [sta][sta][sta] [sta][sta][sta][line break]";
	else if calc-message is 1:
		say "[sta][sta][sta] [sta][pd][sta] [sta][pd][sta][line break][sta] [sta] [sta] [sta] [sta] [sta][line break][sta][sta][sta] [sta][sta][sta] [sta][sta][sta][line break][sta] [sta] [sta] [sta] [sta] [sta][line break][sta][pd][sta] [sta][pd][sta] [sta][pd][sta][line break]";
	else if calc-message is 2:
		say "[sta][sta][sta] [sta][sta][sta] [sta][sta][sta][line break][sta] [pd] [sta] [pd] [sta] [pd][line break][sta][sta][sta] [sta][sta][sta] [sta][sta][sta][line break][sta] [pd] [sta] [pd] [sta] [pd][line break][sta][sta][sta] [sta][sta][sta] [sta][sta][sta][line break]";
	else if calc-message is 3:
		say "[sta][pd][sta] [pd][pd][sta] [sta][sta][sta][line break][sta] [sta] [pd] [sta] [sta] [sta][line break][sta][sta][sta] [pd][pd][sta] [sta][sta][sta][line break][pd] [sta] [pd] [sta] [sta] [pd][line break][sta][sta][sta] [pd][pd][sta] [sta][pd][pd][line break]";
	else:
		say "Sorry, bug.";
	say "[variable letter spacing]";

last-direction is a direction that varies.

volume possessions

the especially unfunny Bazooka Joe wrapper is a thing.

the especially unfunny Laffy Taffy wrapper is a thing.

understand "wrappers" as laffy.
understand "wrappers" as bazooka.

when play begins:
	now right hand status line is "[if half nelson is off-stage]Nelson: [next-dir of location of player][else]What to DOOO?[end if]";
	now player has bazooka joe;
	now player has laffy taffy;

before eating:
	if noun is joe or noun is laffy:
		say "You already did. It [if noun is joe]lost its flavor[else]got eaten[end if] quickly. There's just the wrapper now." instead;

understand "wrapper" as bazooka joe.

understand "wrapper" as laffy taffy.

instead of doing something with Bazooka Joe:
	say "You fumble with the Bazooka Joe wrapper. It contains an unspeakably horrible (but season-appropriate) pun on 'déjà vu,' which makes you sorry you learned what the phrase meant." instead;

instead of doing something with Laffy Taffy:
	say "You fumble with the Laffy Taffy wrapper. It contains an unspeakably horrible (but season-appropriate) pun on what ghosts in Australia use to hunt." instead;

volume talking

talking to is an action applying to one thing.

understand "talk to [person]" as talking to.

check talking to:
	if player is in nw and half nelson is in nw:
		now dont-penalize is true;
	if noun is half nelson and half nelson is off-stage:
		say "Yelling would waste valuable breath." instead;
	if noun is the player:
		say "You give yourself a brief pep talk." instead;
	if noun is half nelson or noun is full nelson:
		say "Straight-up diplomacy won't work here." instead;
	if noun is calculator:
		say "Its display of [sign-message] stares blankly back at you." instead;
	say "You need action. Anything you said, it'd better be loud and confident." instead;

volume startup

when play begins:
	say "You had a nice full bag of candy from trick-or-treating. Well, until that bully Half Nelson ran by and stole it. The first time you're big enough to trick-or-treat by yourself, BAM. You're left with nothing except the wrappers from two of the worst candies you snuck from the bag...to save the good stuff for later...";
	wfak;
	say "After a few seconds of feeling sorry for yourself, you realize--he was carrying a lot of candy. He's bigger, faster, and stronger than you, but maybe you can catch up."

volume people

Half Nelson is a person. "[if half nelson is in nw]Arguing with Full Nelson over the candy right now.[else]Half Nelson is bigger than you despite being in the previous grade. He was born a few days after the grade's cut-off date, and you, a few days before. And I am sorry to say that he plays the 'I'm in a lower grade' card against smaller people than himself to get away with more than he should. He probably learned it from Full Nelson--no relation, but same first name.[end if]"

instead of doing something with Half Nelson when Half Nelson is off-stage:
	say "Half Nelson's too far away to the [next-dir of location of player] for more than a glancing look. But of course he is still bigger and stronger and would be faster except for the candy he must be carrying. Well, at least it wasn't his 'mentor' Full Nelson--you'd never catch him!" instead;

for writing a paragraph about a person (called nel) in NW Heezy:
	now full nelson is mentioned;
	now half nelson is mentioned;
	say "Full Nelson and Half Nelson [one of]are arguing[or]continue to argue[stopping] here over who gets what.";
	
Full Nelson is a person. description is "Several inches taller than Half Nelson and a lot meaner, too. Needs no costume to be scary. He and Half Nelson seem to be arguing over Half Nelson's cut of the 'profits.'"

instead of doing something with Full Nelson:
	if current action is examining or current action is talking to:
		continue the action;
	say "Oh, man, you really don't want to mess with Full Nelson directly.";

after deciding the scope of the player:
	place Half Nelson in scope.

before attacking:
	if noun is half nelson or noun is full nelson:
		say "No, you need psychological warfare. It doesn't even have to be good psychological warfare." instead;
	if noun is the player:
		say "You shouldn't kick yourself." instead;
	if noun is calculator:
		say "But it's one of Averageville's great treasures!" instead;
	say "You're not one of those Halloween hooligans." instead;

volume rooms

my-park is a region.

The world's largest solar calculator is a backdrop. it is everywhere. description of calculator is "[one of]MegaSol is only the world's largest because nobody was silly enough to build a bigger one, but hey, it works at night now because there are ways to store solar energy for later.[paragraph break]It's kind of like the old mainframes that used to fill up a whole room, but far less useful. The display is defiinitely old-school, too.[paragraph break][or][stopping]It currently says [sign-message] in that LCD font which is really 7 lines making up 2 adjoining squares."

understand "mega/sol" and "megasol" and "mega sol" and "message" as calculator.

the buttons are part of the calculator. description is "Really basic stuff, only numbers and basic arithmetic operations. You don't want to fool with them right now, especially since you really just want to get your candy back from Half Nelson."

instead of doing something with the buttons:
	if current action is examining:
		continue the action;
	say "The buttons aren't operable right now. The calculator just displays 'special' LCD messages for Halloween night."

after examining calculator:
	say "Do you wish for a closer look?";
	if the player consents:
		say "[ful-disp]";
	else:
		say "OK.";

check taking solar calculator:
	say "It's far too big." instead;

check climbing solar calculator:
	say "It's far too tall and slippery." instead;

the description of a room is usually "You're in Heezy Park, chasing Half Nelson to get your candy back. You just [came-from] and you think you see Half Nelson to the [next-dir of the item described]."

to say came-from:
	if player is in nw heezy and calc-message is 1:
		say "entered Heezy Park";
		continue the action;
	say "came from the [opposite of last-direction]"

a room has a direction called next-dir.

There is a room called Outside Heezy Park. "Heezy Park is to the south. You can see MegaSol, the world's largest solar calculator, to the south."

next-dir of outside heezy park is south.

after printing the locale description for Outside Heezy when Outside Heezy is unvisited:
	say "Man! You really want your bag of candy back, but you only have time to THINK or LISTEN as you chase Half Nelson."

NW Heezy Park is a room in my-park. it is south of Outside Heezy Park. next-dir of NW is south.

NE Heezy Park is east of NW Heezy Park. next-dir of NE is west.

SE Heezy Park is south of NE Heezy Park. next-dir of SE is north.

SW Heezy Park is west of SE Heezy Park. next-dir of SW is east.

NW Heezy Park is north of SW Heezy Park.

instead of out-chickening:
	say "No chickening out now. Probably gotta [do-next]." instead;

to say do-next:
	if half nelson is in nw:
		say "figure a way to disrupt the Nelsons.";
	else:
		say "just follow Half Nelson [next-dir of location of player]."

check going in Outside Heezy Park:
	if noun is not south:
		say "No way! You've had enough of Half Nelson's bullying. You really want to chase him down. You're not sure what you'll do then, but man, you're not going to run away this time." instead;

check waiting:
	if half nelson is in NW Heezy:
		say "You think of what to do. You sense a crowd mumbling, ready to let it out on you for just waiting around." instead;
	say "You'd usually be out of breath from running, but not now. You're just mad. Plus, Half Nelson has that bag of candy. It's got to be slowing him down!" instead;

before going when half nelson is in NW:
	say "You probably, sensibly, should chicken out. And yet--you feel you have a surprise attack in you! One that totally befungles Nelson! There's something after all that running..." instead;

check going nowhere:
	if player is not in outside heezy:
		say "No chickening out now. Probably gotta [do-next].";

carry out going:
	if player is in outside heezy park:
		say "Half Nelson is standing here, as if waiting for someone--but he takes off to the south once he sees you running at him!" instead;
	if a random chance of 1 in 2 succeeds:
		say "[one of]Oof! You summon just enough adrenaline to keep Half Nelson in view.[or]Good thing you didn't eat too many candies, or they'd bog you down and Half Nelson'd be gone.[or]That healthy dinner your parents made you eat--yup, you're grateful now, with all this running.[or]You're faster than you used to be--you hope. You think.[or]Puff, puff, puff. Good thing your parents forced you to buy new gym shoes last week.[in random order]";

going northeast in SW Heezy Park is calc-going.
going northwest in NE Heezy Park is calc-going.
going southeast in NW Heezy Park is calc-going.
going southwest in SE Heezy Park is calc-going.

going east in NW Heezy Park is back-treading.
going west in SE Heezy Park is back-treading.
going north in SW Heezy Park is back-treading.
going south in NE Heezy Park is back-treading.

going west in NW Heezy Park is out-chickening.
going north in NW Heezy Park is out-chickening.
going east in NE Heezy Park is out-chickening.
going north in NE Heezy Park is out-chickening.
going west in SW Heezy Park is out-chickening.
going south in SW Heezy Park is out-chickening.
going east in SE Heezy Park is out-chickening.
going south in SE Heezy Park is out-chickening.

instead of back-treading:
	if player is in NW and Half Nelson is in NW:
		continue the action;
	say "No, Half Nelson didn't go [noun]. He went [next-dir of location of player]." instead;

instead of calc-going:
	say "No way! It's, like, criminal trespassing to get near the calculator." instead;

the bags of candy are a thing. "The Nelsons['] bags of candy, stolen from other kids like you, lie here.". description is "Man! So much of it!"

instead of doing something with the bags of candy:
	if current action is examining:
		continue the action;
	say "So tempting to take the candy--but no, not with the Nelsons still around."

after going:
	now last-direction is noun;
	if player is in NW Heezy Park:
		if calc-message is 3:
			say "Oh, man! You caught up to Half Nelson--and Full Nelson, his 'overseer' from two grades ahead, too! You'd better stay out of their sight and concoct a grand plan.[paragraph break]Also, MegaSol's message didn't change. You don't know why you looked to it for help, but--but you need to do something that encapsulates your journey, a sneak attack the Nelsons wouldn't expect.";
			now half nelson is in NW Heezy;
			now full nelson is in NW Heezy;
			now bags of candy are in NW Heezy;
		else:
			say "MegaSol's message just changed! You can EXAMINE it to see the new message.";
			if calc-message < 2:
				say "[line break]Also, Half Nelson's breathing seems a bit louder. He sounds [one of]gassed, already[or]really gassed now[stopping].";
			increment calc-message;
	continue the action;

check requesting the score:
	say "You haven't scored your candy back yet." instead;

argue-times is a number that varies.

dont-penalize is a truth state that varies.

every turn when full nelson is in NW Heezy:
	if dont-penalize is true:
		now dont-penalize is false;
		continue the action;
	if current action is examining or current action is going or current action is taking inventory:
		continue the action;
	increment argue-times;
	if argue-times is 1:
		continue the action;
	if argue-times is 8:
		say "Full Nelson and Half Nelson reach an 'agreement' which gives Full Nelson 80% for managerial overhead, you estimate. They walk away with your candy. But you feel you could've swung a quick, snappy surprise...something that fully captured your unique journey to even catch UP with Half Nelson...";
		say "[line break]Perhaps you should have [if unique-views is 0]looked at MegaSol[else if unique-views is 1]looked at MegaSol a bit more[else if unique-views is 2]paid even more attention to MegaSol[else]figured what MegaSol had to say--or didn't[end if].";
		say "[paragraph break]    [bold type]*** GNG! OOF! SSS!***[roman type][paragraph break]You can [bold type]UNDO[roman type] if you want, but you may get [if all-clues is true]some old[else][one of]some[or]a few more[stopping][end if] clues this way.";
		reset-game;
		the rule succeeds;
	say "Full Nelson and Half Nelson haggle over who gets how much of the [one of]Choc-o-verdose[or]Doublepluschocolate[or]Cavity-Deluxe[or]PB&C[or]Three Machinegunteers[or]Caffeine Bombs[or]Neapolitan Bar[or]Spumoni Bar[or]Coffee Choco-Crunch[in random order]."

every turn when player is in NW Heezy and Half Nelson is in NW Heezy:
	say "[one of]You need to do something quick and surprising. But what? You think back to your journey--how you got there--but what could help you? MegaSol?[or]Man. The candy's right there. Be quick. Surprising. But how? You think back to your journey so far...[stopping]";

to reset-game:
	now calc-message is 0;
	now last-viewed is -1;
	move player to Outside Heezy Park;
	say "[one of]Sss. You got started a bit early, at 5:55, but that optimism's gone now[or]You remember getting some goo around you at nine o'clock last year. Mean teenagers[or]You'll be asleep at 2:22. ZZZ[or]You maybe should've watched for someone[or]You thought you were old enough to have trick-or-treat hours beyond [st8], but maybe not[stopping]."

all-clues is a truth state that varies.

to say st8:
	now all-clues is true; [because this is called AFTER the every turn rule above, the conditional text for all clues kicks in after the first clue here]
	say "[one of]six o'clock to eight o'clock[or]6:00 to 8:00[cycling]"

volume weird verbs

before listening:
	say "[if half nelson is off-stage]You can hear Half Nelson breathing even from here. He's GOT to be tiring soon--and he can't drop the candy. Gotta keep chasing.[else]The argument between Half Nelson and Full Nelson would be entertaining if, well, you were completely safe. But maybe you could add more fuel to it.[end if]" instead;

understand the command "jump" as something new.
understand the command "wave" as something new.
understand the command "sleep" as something new.

instead of thinking:
	if half nelson is in nw:
		say "You need to find a way to do something that encapsulates your journey and totally takes the Nelsons by surprise." instead;
	say "Carrying all that candy, Half Nelson has got to be tired [if calc-message is 0]kind of[else if calc-message is 1]pretty[else if calc-message is 2]really[else]WAY[end if] soon. Gotta [if player is in outside heezy]run after him[else]keep running after him[end if]."

chapter hinting

hinting is an action out of world.

understand the command "hint" as something new.

understand "hint" as hinting.

carry out hinting:
	say "You imagine you see someone giving you a thumbs down. Or hearing them giving a raspberry. Hmm." instead;

rule for printing a parser error:
	say "This game is pretty simplistic. You can go in directions, THINK or LISTEN, or...well, maybe you can surprise Half Nelson [if half nelson is off-stage]once you catch up to him[else]now you've caught up to him[end if]."

chapter booing

booing is an action out of world.

understand the command "boo" as something new.

understand "boo" as booing.

carry out booing:
	if player is not in NW Heezy or calc-message is not 3:
		say "That's so lame it might work to scare someone. But not here, not now." instead;
	say "You think back to the path that got you here. Yes, it is like a b-o-o. You yell it out, not thinking of the consequences.";
	wfak;
	say "Half Nelson jumps! He and Full Nelson get in a brief shoving match over whether Half Nelson was actually scared by a trick that dumb. Then. 'GET HIM!' Full Nelson points at you.";
	say "You think quickly. 'Sure, leave him so you can run off with the candy. BOOOOO!'";
	wfak;
	say "That does it! Half Nelson looks back and forth between you and Full Nelson. Full Nelson pushes Half Nelson towards you, but Half Nelson pushes back. You sneak under and steal the candy bags out of Heezy Park. But there are a lot of passers by, now, and Full Nelson can't do anything. He stalks off looking for something to vandalize.";
	say "[line break]Well, now you've got more than enough candy, you give Half Nelson his own bag back and the both of you find the other kids Half Nelson took candy from. Half Nelson looks surprised at this generosity. And in the following weeks, turns out to be more than okay, once he's out of Full Nelson's 'good' graces. He even shares his candy as he tries to lose weight.";
	end the story finally saying "You got your candy back! And a new friend.";

volume endgame

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see the ANSWERS to the bad candy wrapper jokes"	true	"ANSWER/ANSWERS"	answersee  rule	answerseeing

answerseeing is an activity.

this is the answersee rule:
	say "--the pun on déjà vu is déjà BOO.";
	say "--the weapons Australians use is a BOOmerang.";
	say "--jokes that bad should be taBOO, amirite?";
	the rule succeeds;

volume tests - not for release

when play begins (this is the yes debug rule):
	now debug-state is true;

the yes debug rule is listed first in the when play begins rulebook.

test win with "s/s/e/n/w/s/e/n/w/s/e/n/w/boo"

test lose with "s/s/e/n/w/s/e/n/w/s/e/n/w/z/z/z/z/z/z/z/z"

test winfull with "s/n/x nelson/s/n/x nelson/e/w/x nelson/n/s/x nelson/w/e/x nelson/s/n/x nelson/e/w/x nelson/n/s/x nelson/w/e/x nelson/s/n/x nelson/e/w/x nelson/n/s/x nelson/w/e/x full/x half/talk to full/talk to half/x joe/x taffy/boo"
