"Candy Rush Saga" by Andrew Schultz

book basics

use no scoring.

include basic screen effects by emily short.

release along with the source text.

check requesting the score:
	say "You may be able to chart your progress better with a MAP." instead;

book rooms

Rock/Water is a room. "You're at the northwest of the poor area. You can go east or south."

Rock/Wood is east of Rock/Water. "You're at the north of the poor area. You can go any way but north."

Rock/Fire is east of Rock/Wood. "You're at the northeast of the poor area. You can go west or south."

Paper/Water is a room. "You're at the west edge of where you can travel. You can go north, east or south."

Paper/Wood is east of Paper/Water. "This is a big empty lot at the intersection of two streets. You can visit housing in any of the four directions. The poorer areas span from north-and-east to west, the richer from east to south-and-west."

Paper/Fire is east of Paper/Wood. "You're at the east edge of where you can travel. You can go north, west or south."

Paper/Water is south of Rock/Water. Paper/Wood is south of Rock/Wood. Paper/Fire is south of Rock/Fire.

Scissors/Water is a room.
Scissors/Wood is east of Scissors/Water.
Scissors/Fire is east of Scissors/Wood.

Scissors/Water is south of Paper/Water. Scissors/Wood is south of Paper/Wood. Scissors/Fire is south of Paper/Fire.

to decide whether (r - a room) is unoccupied:
	if number of people in r is 0:
		decide yes;
	decide no;

when play begins:
	now right hand status line is "[the-time]";
	repeat with RR running through poor rooms:
		now a random off-stage evil person is in RR;
	repeat with RR running through rich rooms:
		now a random off-stage good person is in RR;
	say "The raid on the wealthier area was successful! The four companions had gotten all the candy they wanted and more. But they had to eat some of it, to lessen the load, and get the energy to carry their heavy bags. It gave them the energy to argue, too, loud enough to split up and get lost. What's worse, four bullies a few years older than them came over from the rich side of town to vandalize and terrorize it a bit. Toothpaste and shaving cream and even, sadly, mailbox baseball--well, why not finish by returning some 'stolen' candy to their community, minus a suitable finder's fee.[paragraph break]That's where you come in. You're just a poltergeist, and all you can do is blink, but maybe you can help the kids get home safely with all their candy. The folks above--in heaven--gave it to you as a first job. You got kicked to limbo because you never DID anything positive, even though you wanted to. Your supervisor lets you listen in on their plans--yup, these guys could be taken down a peg. And the kids deserve better. (Press any key)";
	wait for any key;

the player is in paper/wood.

blinks is a number that varies.

to say the-time:
	if blinks < 30:
		say "9:[30 + blinks]";
	else:
		say "Past 10:00";

a room can be rich, poor or neutral. a room is usually neutral.

Rock/Water is poor.
Rock/Wood is poor.
Rock/Fire is poor.
Paper/Water is poor.

Paper/Fire is rich.
Scissors/Water is rich.
Scissors/Wood is rich.
Scissors/Fire is rich.

book silly verbs

instead of taking inventory:
	say "You only have the ability to BLINK in a direction. This can be shortened to B, and the directions can be shortened to N/S/E/W. You can also BN (direction) so you stay where you are while your target moves, or BF (direction) to blink so that someone to the (direction) comes to your square. You will move to theirs.";

every turn when a good person is visible:
	if the remainder after dividing the turn count by 4 is 2:
		if mcfly is visible:
			say "[one of]McFly wonders if he could go back in time to help himself make the Little League team[or]McFly thinks how it'll be so cool to own a DeLorean when he grows up[or]McFly muses that Biff is kind of a cool name[or]McFly wonders how George met Lorraine. His parents covered his eyes for that part. And who is Tom, anyway[in random order].";
		else if optimus is visible:
			say "[one of]Optimus wonders how cool a Transformers movie with real people would be. That'd be PROGRESS, if they could do that[or]Optimus worries he may be evil and not know it--he finds the Constructicons cooler than the Protectobots[or]Optimus snickers thinking how his friend Billy's mom didn't buy a costume til too late. Billy was a Go-Bot. Ha[or]Optimus mutters how fortune teller origami is way girly compared to Transformers[in random order].";
		else if Herman is visible:
			say "[one of]Pee-Wee half-heartedy wiggles his fingers at the bag of candy and mutters Mecka-Hiney-Hey, Mecka-Hiney-Ho[or]Pee-Wee wonders if the Alamo has an attic[or]Pee-Wee adjusts his suit, muttering no WAY he'll wear one on a normal day, and maybe his parents tricked him into wearing this costume today[or]Pee-Wee sort of wishes he coulda been President Reagan with a cool mask. Reagan is like a cool third grandpa, adults that hate him gotta be total busters, man[in random order].";
		else if luke is visible:
			say "[one of]'Aw man, gonna be five years before I see the next three Star Wars,' Luke moans[or]Luke mumbles how his one friend is WRONG, doing episodes 7-8-9 next would be lame[or]Luke mimics playing the Star Wars video game at his local video arcade[or]Luke is glad he didn't run into any Princess Leias this evening. Lasers and light sabers are obviously cooler[in random order]."

book people

a person can be good, evil or chaotic.

The Sporto is an evil person. "[one of]A sporto type flexes his arms and cracks his knuckles here[or]The sporto jogs in place a bit and punches the air, waiting for conflict[stopping].". description is "You'd have been jealous of his physique, but now you know the more obnoxious sportos destroy theirs pretty quickly with beer, because stolen candy is really lame once you turn seventeen. Wait. No. You can't be that spiteful if you're trying to get to heaven."

The Dropout is an evil person. "[one of]A dropout type lurks here. He looks too much like a stereotypical dropout not to be one[or]The dropout paces in circles some more[stopping].". description is "He's wearing a t-shirt far too cold for the weather. He looks particularly eager to warm up by gaffling a few innocents and lugging their candy bags around."

The Sniveling Underling is an evil person. "[one of]A sniveling underling, the sort the 'cool' kids keep because he'll betray his former nerd friends, sneaks around here[or]That underling is still smirking around here[stopping].". description is "He doesn't look outright evil, but he has that cringy underling look, like he's laughing at a joke that never was funny, but he heard it from someone cooler. He is keeping careful watch for a sign of the younger kids."

The Preppie is an evil person. "[one of]An obvious preppie struts around here[or]The preppie continues to strut, waiting for someone to condescend to, friend or foe[stopping].". description is "He's wearing a sweater tied around his waist, which is kind of stupid given the weather. He's got a perpetual sneer, and you're half surprised he's not wearing sunglasses at night."

Marty McFly is a good person. "[one of]A kid dressed as Marty McFly mopes here[or]Marty McFly looks around nervously[stopping].". description is "That down vest must keep Marty kind of warm on this cold night."

Luke Skywalker is a good person. "[one of]A kid dressed as Luke Skywalker mopes here[or]Luke Skywalker looks around nervously[stopping].". description is "Really, Luke's costume isn't that tricky, but it looks okay."

Optimus Prime is a good person. "[one of]A kid dressed as Optimus Prime mopes here[or]Optimus Prime looks around nervously[stopping].". description is "He's sort of cardboardy, but it looks pretty realistic in the dark."

Pee Wee Herman is a good person. "[one of]A kid dressed as Pee Wee Herman mopes here[or]The pee-wee Pee Wee looks around nervously[stopping].". description is "It's hard to botch a cheap suit and bow tie, and this kid doesn't."

the player is chaotic.

check going nowhere:
	if noun is inside or noun is outside:
		say "You don't need to visit any houses. You wouldn't be welcome." instead;
	if noun is up or noun is down:
		say "You could float away, but that'd be giving up." instead;
	if noun is southeast or noun is southwest or noun is northeast or noun is northwest:
		say "You don't need to go diagonally." instead;
	if noun is north:
		say "Norris Avenue to the north is too tough." instead;
	if noun is south:
		say "Lee Avenue to the south is too tough." instead;
	if noun is west:
		say "You're not funky enough to rock down to Electric Avenue to the west." instead;
	if noun is east:
		say "Avenue Q to the east is still under construction. It's best avoided." instead;

book blinking

blinking is an action applying to one visible thing.

understand the command "b/blink" as something new.

understand "b [something]" and "blink [something]" as blinking.

bning is an action applying to one visible thing.

carry out blinking:
	if noun is not a direction:
		say "You can only blink in a direction--more specifically, north, south, east or west--or N S E W." instead;
	let NR be room noun of the location of player;
	let RV be random visible not chaotic person;
	if NR is nowhere:
		say "You shouldn't be getting people deliberately lost, here." instead;
	if NR is unoccupied:
		increment blinks;
		say "You blink [noun], and [random visible not chaotic person] takes a bit of time to see you but eventually gives chase. You [if follows is true]lead him on[else]follow, once you know he's on the move[end if].";
		now random visible not chaotic person is in NR;
		if follows is true:
			move player to NR;
		check-for-win instead;
	let NV be random person in NR;
	if NV is evil and RV is evil:
		if NV is preppie:
			say "The preppie to the [noun] lashes out at his approaching 'friend,' just because. They need to split up to track down the little brats. And move around and look harder! Then the [NV] retreats to where he was. That was amusing but unproductive." instead;
		else if RV is preppie:
			say "The preppie sees the [NV] to the [noun] and sneers a bit. There's no time for in-depth alpha male stuff right now, though. Just picking on little kids." instead;
		else:
			say "The [NV] and [RV] bicker over who would get in more trouble with their preppie friend if they were caught, before returning to their stakeout duties. That was amusing but unproductive." instead;
	else if NV is good and RV is good:
		say "[NV] and [RV] see each other! They begin squabbling about how they need to keep apart so they can each hide easier, and their collective sugar rush escalates the conversation, which totally defeats the point. The other two kids run in to break it up, but then the four big nasty teens do their part too--sort of.";
		end the story saying "OOPS--the friends should be kept apart";
	else:
		if NV is evil and RV is good:
			say "Oh no! The [NV] notices [RV], thanks to you, and gives chase! [RV] has no chance. [RV]'s friends, hearing the shouting, feel bad about the earlier break-up--but they are no match for the [NV]'s 'friends.' The kids are candy-less. This sort of performance won't get you out of Limbo. Or, wait, maybe it will.";
			end the story saying "You lost.";
		else:
			say "Oh no! The [RV] notices [NV], thanks to you, and gives chase! [NV] has no chance. [NV]'s friends, hearing the shouting, feel bad about the earlier break-up--but they are no match for the [RV]'s 'friends.' The kids are candy-less. This sort of performance won't get you out of Limbo. Or, wait, maybe it will.";
			end the story saying "You lost.";
	the rule succeeds;

chapter bt/bf stub

bting is an action applying to one visible thing.

understand the command "bt" as something new.

understand "bt [something]" as bting.

follows is a truth state that varies. follows is true.

carry out bting:
	if noun is not a direction:
		say "You can only blink in a direction--more specifically, north, south, east or west--or N S E W." instead;
	now follows is false;
	try blinking the noun;
	now follows is true;

bfing is an action applying to one visible thing.

understand the command "bf" as something new.

understand "bf [something]" as bfing.

follows is a truth state that varies.

carry out bfing:
	if noun is not a direction:
		say "You can only blink in a direction--more specifically, north, south, east or west--or N S E W." instead;
	if the room noun of location of player is nowhere:
		say "That's out of your range." instead;
	now follows is false;
	try going noun;
	try blinking the opposite of the noun;
	now follows is true;

book win check

to check-for-win:
	let all-poor be true;
	let all-rich be true;
	repeat with R running through poor rooms:
		if number of good people in R is 0:
			now all-poor is false;
	repeat with R running through rich rooms:
		if number of evil people in R is 0:
			now all-rich is false;
	if all-poor is true and all-rich is true:
		say "[paragraph break]YOU IDIOTS! you hear the preppie yell. YOU LET THEM THROUGH! There's a lot more, and he almost seems to be having fun, but it's not something you dwell on when you're trying to leave Limbo.[paragraph break]You hear a crackling. 'Congratulations, limbo newbie! It won't change the world, but you helped those poor bullied kids out! You're still a long way from Heaven, but with the holiday season coming up, there'll be plenty of family quarrels to mediate over Thanksgiving and Christmas dinners![paragraph break]You glow a little brighter. But not too much--humility's important, for the crowd you hope to roll with[if blinks >= 30]. Plus, you didn't go fast enough to save the kids from being grounded, but you helped them, overall[end if].";
		end the story finally saying "[how-well]";
	else if all-poor is true:
		say "You got the kids back, but now you need to demoralize the rich brats. Retreat to their rich places in total failure.";
	else if all-rich is true:
		say "You got the kids behind the rich brats, but not all the kids are safe yet.";

to say how-well:
	if blinks is 20:
		say "You were super quick, too";
	else if blinks <= 24:
		say "You were quick";
	else if blinks < 30:
		say "You did well";
	else:
		say "Good, but maybe go quicker next time"

instead of entering or opening scenery:
	say "You need to push people around out here, not in their homes."

instead of doing something other than examining scenery:
	say "You're not here for a joyride."

table of conflicts
person-1	person-2	texty
McFly	Pee Wee	"As McFly and Pee Wee bump into each other, each disses the other's movie. In the commotion, the bullies drop by. The candy is easy picking for them."
McFly	Luke
McFly	Optimus
Pee Wee	Pee Wee
Pee Wee	Luke
Pee Wee	Optimus
Luke	Pee Wee
Luke	Luke
Luke	Optimus
Optimus	Pee Wee
Optimus	Luke
Optimus	Optimus
Sporto	Preppie
Sporto	Dropout
Sporto	Underling
Dropout	Preppie
Dropout	Sporto
Dropout	Underling
Underling	Sporto
Underling	Dropout
Underling	Preppie
Preppie	Sporto
Preppie	Dropout
Preppie	Underling
McFly	Preppie
McFly	Dropout
McFly	Sporto
McFly	Underling
Luke	Preppie
Luke	Dropout
Luke	Sporto
Luke	Underling
Pee Wee	Preppie
Pee Wee	Dropout
Pee Wee	Sporto
Pee Wee	Underling
Optimus	Preppie
Optimus	Dropout
Optimus	Sporto
Optimus	Underling

book errs

Rule for printing a parser error when the latest parser error is the I beg your pardon error:
	say "You do nothing. Even more nothing than just waiting."

instead of waiting:
	say "You plan your next move, or you try to."

Rule for printing a parser error when the latest parser error is the not a verb I recognise error:
	say "That's not a command I understand. ABOUT will show the main ones."

Rule for printing a parser error when the latest parser error is the can't see any such thing error:
	say "Sorry, that's not examinable, especially not in SpeedIF. I know I didn't implement the costumes or the kids['] candy bags (uh, less temptation,) but--they're eponymous enough, I hope you have an idea."
	
chapter dumb verbs

instead of sleeping:
	say "Especially unlikely tonight."

instead of waking up:
	say "You're (un)dead, not asleep."

instead of waving:
	say "You can attract attention by BLINKing."

instead of swearing obscenely:
	say "That won't help you get out of Limbo. Well, not the way you'd [italic type]like[roman type] to."

instead of swearing mildly:
	say "That won't help you get out of Limbo. Well, not the way you'd [italic type]like[roman type] to."

instead of jumping or singing:
	say "You were terrble at it, even when alive."

instead of saying yes or saying no:
	say "You shouldn't need to answer questions in this game."

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "This is a (hopefully) short and amusing game for EctoComp 2014. It requires no fancy verbs to get through. Given that you're a poltergeist, you can BLINK in a direction, to distract people to go that way. That can be shortened to B, or if you want to make people follow but stay back yourself, BN, followed by a direction. BF will blink so you flip places with someone in that direction.[paragraph break]You can also MAP the areas you know.";
	the rule succeeds;

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "You don't need magic. Logic will suffice, here.";
	the rule succeeds;

chapter helping

helping is an action out of world.

understand the command "hint/help/walkthrough" as something new.

understand "help" as helping.

carry out helping:
	if number of unvisited rooms is 8:
		say "Look around a bit.";
	else:
		say "Use MAP to see where everyone is. There's no strategic difference among bullies or kids.";
	the rule succeeds;

chapter maping

maping is an action out of world.

understand the command "map" as something new.

understand "map" as maping.

ming is an action out of world.

understand the command "m" as something new.

understand "m" as ming.

carry out maping:
	say "?=not visited, B=bad guys, C=candy, #=nobody living here. Type M for the map without this information.";
	try ming;

carry out ming:
	say "[fixed letter spacing][who of Rock/Water] [who of Rock/Wood] [who of Rock/Fire][line break]";
	say "[who of Paper/Water] [who of Paper/Wood] [who of Paper/Fire][line break]";
	say "[who of Scissors/Water] [who of Scissors/Wood] [who of Scissors/Fire][paragraph break][variable letter spacing]";
	the rule succeeds;

to say who of (r - a room):
	if r is unvisited:
		say "?[run paragraph on]";
	else if number of evil people in r is 1:
		say "B";
	else if number of good people in r is 1:
		say "C";
	else:
		say "#";

book not-talking

Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one thing. 

Instead of asking someone to try doing something: 
	say "You can't talk. But you can blink.";

Instead of answering someone that something: 
	say "You can't talk. But you can blink.";

instead of talking to someone:
	say "You can't talk. But you can blink.";


book tests

test qw with "bf e/bf n/bf w/bf s/bf s/bf w/bf n/bf n/bf e/bf s/bf s/bf e/bf n/bf n/bf w/bf s/bf s/bf w/bf n/bf e"

test win with "w/n/e/e/s/s/w/w/n/e/e/bn w/n/bn s/w/bn e/s/bn n/s/bn n/w/bn e/n/bn s/n/bn s/e/bn w/s/bn n/s/bn n/e/bn w/n/bn s/n/bn s/w/bn e/s/bn n/s/bn n/w/bn e/n/bn s/e/bn w"