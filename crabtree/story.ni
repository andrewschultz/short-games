"Mrs. Crabtree's Geography Class" by Andrew Schultz

part headings

[Release along with cover art.] [not available on playfic]

the release number is 3.

[release 2 allowed you to define a state as its abbreviation. release 3 tweaked the source and linked VA and TN]

the story creation year is 2012.

the story description is "Can you tour through the mainland US, touching each of the forty-eight states once?"

the story genre is "Puzzle/Slice of Life"

the story headline is "Be a Geography Whiz!"

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

part zapping unnecessary verbs

[undoing a lot of what's in the standard rules. I'd rather restrict the player from doing anything crazy.]

understand the command "sorry" as something new.
understand the command "no" as something new.
understand the command "yes" as something new.
understand the command "wave" as something new.
understand the command "kiss" as something new.
understand the command "attack" as something new.
understand the command "shit" and "damn" and "fuck" as something new.
Understand the command "bother" and "curses" and "drat" and "darn" and "bother" as something new.
Understand the commands "break", "smash", "hit", "fight", "torture", "wreck", "crack", "destroy", "murder", "kill", "punch" and "thump" as something new.

part definitions

chapter types

a us-state is a kind of thing. a us-state is either visited or unvisited. a us-state is usually unvisited. a us-state is either mainland or non-mainland. a us-state is usually mainland.

a us-state can be doable, untricky, tricky or undoable. a us-state is usually doable.

A us-state has some indexed text called the abbrev. Understand the abbrev property as describing the us-state.
[ Understand "[abbrev of us-state]" as the us-state.]

current-state is a us-state that varies.

can-travel is a truth-state that varies. can-travel is usually true.

chapter bordering

Bordering relates us-states to each other. The verb to border (he borders, they border, it is bordered) implies the bordering relation.

section separate states

Alaska is a us-state. Alaska is non-mainland.

Hawaii is a us-state. Hawaii is non-mainland.

section borders

[these are listed alphabetically by state-bordered]

Tennessee, Georgia, Florida, and Mississippi border Alabama.

Utah, New Mexico, California, and Nevada border Arizona.

Missouri, Tennessee, Mississippi, Louisiana, Texas and Oklahoma border Arkansas.

Oregon and Nevada border California.

Wyoming, Nebraska, Kansas, Oklahoma, New Mexico, and Utah border Colorado.

Massachusetts, Rhode Island, and New York border Connecticut.

Pennsylvania, New Jersey, and Maryland border Delaware.

Georgia borders Florida.

Tennessee, North Carolina, and South Carolina border Georgia.

Montana, Wyoming, Utah, Nevada, Oregon, and Washington border Idaho.

Wisconsin, Indiana, Kentucky, Missouri and Iowa border Illinois.

Kentucky, Ohio, and Michigan border Indiana.

Wisconsin, Minnesota, Missouri, Nebraska, and South Dakota border Iowa.

Nebraska, Missouri, and Oklahoma border Kansas.

Ohio, West Virginia, Virginia, Tennessee, and Missouri border Kentucky.

Mississippi and Texas border Louisiana.

New Hampshire borders Maine.

Pennsylvania, Virginia, and West Virginia border Maryland.

Vermont, New Hampshire, Rhode Island, Connecticut, and New York border Massachusetts.

Minnesota, Wisconsin, and Ohio border Michigan.

Wisconsin, South Dakota and North Dakota border Minnesota.

Tennessee borders Mississippi.

Tennessee, Arkansas, Oklahoma, Kansas, and Nebraska border Missouri.

North Dakota, South Dakota, and Wyoming border Montana.

South Dakota and Wyoming border Nebraska.

Oregon and Utah border Nevada.

Vermont borders New Hampshire.

New York and Pennsylvania border New Jersey.

Utah, Oklahoma, and Texas border New Mexico.

Pennsylvania, Vermont border New York.

Virginia, South Carolina, Georgia, Tennessee border North Carolina.

South Dakota borders North Dakota.

Pennsylvania, West Virginia border Ohio.

Texas borders Oklahoma.

Washington borders Oregon.

West Virginia borders Pennsylvania.

Wyoming borders South Dakota.

Virginia borders Tennessee.

West Virginia borders Virginia.

Wyoming borders Utah.

[done with borders]

chapter cornering

Cornering relates us-states to each other. The verb to corner (he corners, they corner, it is cornered) implies the cornering relation.

section corners

Utah corners New Mexico. Colorado corners Arizona.

chapter almosting

Almosting relates us-states to each other. The verb to almost (he almosts, they almost, it is almosted) implies the almosting relation.

section almosts

[this is very subjective but is inserted as an exercise.]

Wisconsin almosts Indiana.

South Carolina almosts Tennessee.

chapter skipping

to decide if (a - a us-state) skipborders (b - a us-state):
	if a borders b, decide no;
	if a almosts b, decide no;
	if a corners b, decide no;
	if a is b, decide no;
	repeat with c running through us-states that border a:
		if c borders b and c borders a:
			decide yes;
	decide no;

to decide which us-state is the throughborder of (a - a us-state) and (b - a us-state):
	if a skipborders b:
		repeat with c running through us-states that border a:
			if c borders b and c is unvisited:
				decide on c;
	decide on hawaii.

part World

chapter geography class

Geography Class is a room. The printed name of Geography Class is "Mrs. Crabtree's Classroom". The description of Geography Class is "You're in Geography Class. A door leads out, and the transparent pull down display of a US Map covers the blackboard. There's a marker that you connect the states with. [if room is unvisited]N.B. you don't have to TAKE anything. Just VISIT the appropriate state. Or START a state. You can also use state abbreviations.[end if]"

The hallway is outside of Geography Class.

Instead of going outside in Geography Class, say "You wouldn't want to violate Mrs. Crabtree's trust like that, even if you weren't the lucky student who got to play the Geography Game or if you'd get caught and sent to detention anyway."

the blackboard is scenery in geography class. understand "map" and "display" and "transparent pull down" as blackboard.

description of blackboard is "[my-map]"

part Verbs

chapter looking

after looking in geography class:
	try statusing;

already-started is a truth state that varies. already-started is usually false.

chapter abbreving

abbreving is an action out of world.

understand the command "abbrevs/abbrev/ab/a" as something new.

understand "abbrev" and "abbrevs" and "ab" and "a" as abbreving.

carry out abbreving:
	let count be 0;
	say "Abbreviations of states left:[line break]";
	repeat through the table of abbrevs:
		if state entry is visited:
			say "[state entry] =~ [abbr entry in upper case]. [run paragraph on]";
			increment count;
			if remainder after dividing count by 5 is 0:
				say "[line break]";

chapter visiting

abouting is an action out of world. understand "about" as abouting.

carry out abouting:
	say "Mrs. Crabtree has chosen YOU to play the game where you travel to all 48 mainland states without touching any one twice. You may VISIT a state or its abbreviation, and you may also see ABBREV(S)/AB/A or see which states REMAIN. You may also START a state or its abbreviation. You may also say MAINE to start in Maine.[paragraph break]See HISTORY for credits and history and more technical stuff."

chapter historying

historying is an action applying to nothing.

understand the command "history" as something new.

understand "history" as historying.

carry out historying:
	say "I originally thought up this game back in April 2012 to try testing Inform relations. I put it on PlayFic.com, too. I forgot about it as time went by, but Mike Spivey pointed out a small bug (two states should've been marked as touching, Virginia/Tennessee <-> Kentucky/North Carolina) and I came back to it and added some other features and tried other things, including Python scripts to prove you could get through, or to note if a first move was potentially losing.[paragraph break]The project should be at https://github.com/andrewschultz/ectocomp/tree/master/crabtree though ectocomp might change to speed-if in the future. It's been a useful exercise for me, and I hope the source code helps you, or encourages you to have fun learning a new language via your own puzzle you always wondered about.";
	the rule succeeds;

chapter starting

starting is an action applying to one visible thing.
understand "start [any thing]" as starting.

carry out starting a thing (called the state):
	if current-state is not init-state:
		say "It's too late to change your starting state." instead;
	if the state is not a us-state:
		say "You need to specify a state or its abbreviation." instead;
	if state is current-state:
		say "You're already starting in [current-state]." instead;
	if state is not mainland:
		say "Not even the class cut-up would joke about starting in [state]. It is not part of the mainland. But it would be a nice place to visit someday!" instead;
	now current-state is not visited;
	now current-state is state;
	now state is visited;
	now init-state is current-state;
	if already-started is true:
		say "You hear a sigh and glimpse an eye-roll as you change your starting state yet again.[paragraph break]";
	if the state is undoable:
		say "The other kids around murmur and giggle. You swear you hear some duh-duh-duh noises. Maybe [state] is not the best choice. But you can start there if you want.";
	else if the state is tricky:
		say "You hear a quickly suppressed 'ooh.' Maybe [state] will be a bit tricky.";
	else if the state is untricky:
		say "You hear a quickly suppressed 'but...' Perhaps [state] is not fully challenging, but nobody can stop you. You're the star, here!";
	else:
		say "You are now starting in [current-state].";
	now already-started is true;

chapter miscellaneous

instead of going nowhere:
	say "You wouldn't think of ditching Mrs. Crabtree's class!"

Rule for printing a parser error when the latest parser error is the I beg your pardon error:
	try waiting instead;

instead of waiting:
	say "[one of]You hear a few exasperated sighs indicating you should come ON, already[or]Don't take too long to pick the next state[stopping]!"

instead of jumping or singing or waving:
	say "Acting out? Especially when she's let YOU play the game?! For shame!"

description of player is "It doesn't matter how cool your clothes are if you can make it through all fifty states!"

chapter hinting

hinting is an action out of world.

understand the command "hint" and "help" as something new.

understand "hint" as hinting.
understand "help" as hinting.

carry out hinting:
	say "It may help to have a map of the USA while playing this game. The text map may not be enough. You should note that since Maine only accesses one state, you either start or end in Maine. Also, be sure never to leave one state with no others you can visit, or it will be trapped.[paragraph break]";
	say "[one of]Hinting another time will provide further spoilers[or]Florida and Rhode Island and Washington all touch exactly two other states. So you have a forced route through them, unless you start at one of them. Also, while Michigan's upper peninsula  borders Wisconsin, it's simpler to sandwich it between Indiana and Ohio. New York also blocks the rest of the states in the Northeast, so be careful when and iif you cross it. If you're having trouble, start with Maine, clear out the Northeast before New York, and then clear the East coast out, then the West. The Northeast may be particularly tricky for non-US residents because the states are a bit small.[paragraph break]In general, it's an adequate and sensible strategy to sweep from one side of the map to the other. There are a lot of unique solutions, but you can and should keep it simple for yourself[stopping].";
	the rule succeeds;

chapter visiting

visiting is an action applying to one visible thing.

understand the command "visit/v/ [any thing]" as something new.
understand "visit [any thing]" as visiting.
understand "v [any thing]" as visiting.
understand "[any thing]" as visiting.

instead of going inside: [Indiana = IN]
	try visiting indiana instead.

instead of going northeast: [Nebraska = NE]
	try visiting nebraska instead.

carry out visiting:
	if the noun is not a us-state, say "You can only visit a state!" instead;
	if the noun is non-mainland, say "You don't need to visit [noun], but you've heard if you study hard and get an interesting job, you may be able to work or vacation there one day." instead;
	if noun is current-state:
		say "That's where you are right now." instead;
	if noun is visited:
		say "'I'm sorry, dear, but you already visited [noun],' said Mrs. Crabtree. You furtively look around and think of another state to visit." instead;
	if current-state borders noun:
		say "You decide to move to [noun].[paragraph break]";
		change current-state to noun;
		now current-state is visited;
		try statusing;
	otherwise if current-state corners noun:
		say "'I'm sorry, dear, but we agreed opposite states of the Four Corners don't actually border each other,' says Mrs. Crabtree." instead;
	otherwise if current-state almosts noun:
		say "The kid next to you whispers, 'Hey! Look closer at the map, [lame-o]!' You do. Those states don't quite border." instead;
	otherwise:
		if noun skipborders current-state:
			if throughborder of noun and current-state is hawaii:
				say "You can't quite get there. In fact, you bite your lip as you realize you've been through every state between [current-state] to [noun]." instead;
			say "You can't move from [current-state] directly to [noun], but [throughborder of noun and current-state] is a possibility." instead;
		otherwise:
			say "'Hey! [noun] and [current-state] aren't even CLOSE!' someone yells. Mrs. Crabtree tut-tuts them, and you blush slightly." instead;

to say lame-o:
	say "[one of]dweebazoid[or]space cadet[or]cheater[or]flunkasaurus[or]dirty sneak[or]lazy bum[or]mega-dunce[or]bubble brain[or]weaksauce[or]flake[or]meathead[or]smarty[or]geeenius[or]jubenile deliquent[or]dumbskull[at random]"

chapter erase-it

understand the command "[direction] [text]" as something new.

chapter pondering

Pondering is an action applying to one topic.

instead of pondering:
	let Q be indexed text;
	repeat through table of abbrevs:
		now Q is the topic understood in upper case;
		say "[abbr entry] vs [Q].";
		if abbr entry matches the text Q:
			try visiting state entry instead;
	say "Not a state." instead;

Chapter remaining

remaining is an action applying to nothing. understand the command "remain" as something new. understand "remain" as remaining.

comma-flag is a truth-state that varies.

carry out remaining:
	say "Left to visit:";
	now comma-flag is false;
	repeat through the table of abbrevs:
		if state entry is unvisited:
			if state entry is mainland:
				if comma-flag is true, say ",";
				now comma-flag is true;
				say " [state entry] ([abbr entry in upper case])";
	say ".";

[	repeat with state1 running through us-states:
		if state1 is unvisited:
			say " [state1]";
	say "[paragraph break]";]

chapter showing-borders

showing-borders is an action applying to nothing.

to try showing-borders:
	repeat with state1 running through us-states:
		say "[state1] borders:";
		repeat with state2 running through us-states:
			if state1 borders state2:
				say " [state2]";
		say ".[line break]";

chapter statusing

statusing is an action out of world;

to say mainecheck:
	if init-state is tricky:
		say "You get an extra gold star for starting in a tricky state!";
	else if init-state is doable:
		say " You get a star and a smiley face sticker for not starting in Maine!";
	else:
		say " Maybe you will get an extra bonus if you do not start in Maine next time!"

dead-end-yet is a truth state that varies.
isolated-yet is a truth state that varies.

to decide which number is unvis-border of (st - a us-state):
	let temp be 0;
	repeat with state2 running through us-states:
		if state2 borders st and state2 is unvisited, increment temp;
	decide on temp.

to try statusing:
	if number of unvisited mainland us-states is 0:
		say "You visited all the states! Mrs. Crabtree gives you a gold star![no line break][mainecheck]";
		end the story;
		rule succeeds;
	change can-travel to false;
	repeat with state1 running through us-states:
		if current-state borders state1 AND state1 is unvisited:
			change can-travel to true;
	if can-travel is false:
		say "Oh no! Dead end! Mrs. Crabtree tut-tuts, and you walk back to your seat in awkward silence. You hope to do better at year's end, where if everyone gets it right, you all get an extra ice cream bar.";
		end the story;
		rule succeeds;
	let ts be 0;
	let nu be number of unvisited mainland us-states;
	if dead-end-yet is false and nu < 47:
		let dead-ends be 0;
		repeat with state1 running through unvisited us-states:
			let tb be unvis-border of state1;
			if state1 does not border current-state and tb is 1, increment dead-ends;
			if current-state borders state1 AND state1 is unvisited:
				increment ts;
		if dead-ends > 1:
			now dead-end-yet is true;
			say "[brain-snicker]"; [you have left 2 dead ends]
	if isolated-yet is false and nu < 47 and nu > 1:
		repeat with state1 running through unvisited us-states:
			if unvis-border of state1 is 0 and state1 is mainland:
				now isolated-yet is true;
				say "[brain-snicker]";
	say "You are in [current-state][if nu is 47][tuff-stat of current-state][end if]. You have [nu] state[if nu > 1]s[end if] still to visit before Mrs. Crabtree will give you a coveted gold star for working your way around the USA.[paragraph break]From here you can visit";
	say "[if ts is 1] only[else]:[end if]";
	let cs be 0;
	repeat with state1 running through us-states:
		if current-state borders state1 AND state1 is unvisited:
			if cs > 0 and cs < ts - 1 and ts > 2, say ",";
			increment cs;
			if ts > 1 and cs is ts, say " and";
			say " [state1] ([abbrev of state1])";
	say ".";

to say brain-snicker:
	say "You hear the Class Brain snicker[one of][or] again[stopping].[paragraph break]"

to say tuff-stat of (st - a us-state):
	say "[if st is untricky], an easy state[else if st is tricky], a tricky state[else if st is undoable], which may or may not even be doable[end if]"

Chapter when play begins

use no scoring.

init-state is a us-state that varies.

New York, Connecticut, Massachusetts, Rhode island, Vermont, New hampshire, and Georgia are undoable.

Maine is untricky.

Alabama, Delaware, Maryland, Idaho, New Jersey, Oregon, North Carolina, and Pennsylvania are tricky.

Mrs Crabtree is a person. "Mrs. Crabtree is sitting at her desk here, waiting for you to pick the next state to visit."

Mrs Crabtree is in Geography Class.

description of Mrs is "She is sitting behind the desk. She has a plain white blouse and her hair is in a greying bun."

instead of asking Mrs Crabtree about:
	say "'No hints!' she says, primly but respectfully.";

Mrs Crabtree wears the blouse.

description of blouse is "Plain and white."

The greying bun is part of Mrs Crabtree. understand "hair" as greying bun.

description of greying bun is "You can only see the tip of it, but you know it well."

instead of kissing Mrs Crabtree:
	say "Stop that!"

when play begins:
	repeat through the Table of Abbrevs:
		now the abbrev of state entry is abbr entry;
		[say "[abbrev entry] is [state entry][line break]";]
	now current-state is a random mainland us-state;
	while current-state is undoable:
		now current-state is a random mainland us-state;
	now init-state is current-state;
	now init-state is visited;
	[now current-state is Maine;
	now current-state is visited;]
	say "You reached your hand into the basket with papers for all forty-eight mainland states--minus the ones the math teacher showed you you can't win with (something about some place called Konigsburg,) like [a random undoable us-state]...";
	change left hand status line to "[current-state] ([abbrev of current-state in upper case])";
	change right hand status line to "[number of visited us-states]/[number of mainland us-states]"
	[try showing-borders;]

Chapter after-reading

carry out requesting the score:
	say "You have visited [number of visited us-states] of 48 contiguous states. Do you wish to see which are left?";
	if the player consents:
		say "[list of unvisited us-states]";
	else:
		say "Ok.";

Rule for printing a parser error when the latest parser error is the only understood as far as error:
	say "If you're using a directional state, it's probably more convenient to use the abbreviation instead. Unfortunately, playfic's memory limitations and my own programming shortcomings disable the ability to parse, say, South Dakota." instead;

Chapter rules

Does the player mean visiting Virginia: it is likely.

Chapter testing

test virg with "visit new hampshire/visit vermont/visit massachusetts/visit rhode island/visit connecticut/visit new york/visit new jersey/visit pennsylvania/visit delaware/visit maryland/visit west virginia/visit virginia"

test lose with "visit new hampshire/visit vermont/visit massachusetts/visit connecticut/visit rhode island"

test oops with "visit illinois/visit alaska/visit hawaii/visit saskatchewan"

test w with "visit nh/visit vt/visit ma/visit ri/visit ct/visit ny/visit nj/visit pa/visit de/visit md/visit wv/visit va/visit nc/visit sc/visit ga/visit fl/visit al/visit tn/visit ky/visit oh/visit mi/visit in/visit il/visit wi/visit mn/visit io/visit mo/visit ar/visit ms/visit la/visit tx/visit ok/visit ks/visit ne/visit sd/visit nd/visit mt/visit wy/visit co/visit nm/visit az/visit ut/visit id/visit wa/visit or/visit nv/visit ca"

test win with "visit new hampshire/visit vermont/visit massachusetts/visit rhode island/visit connecticut/visit new york/visit new jersey/visit pennsylvania/visit delaware/visit maryland/visit west virginia/visit virginia/visit north carolina/visit south carolina/visit georgia/visit florida/visit alabama/visit tennessee/visit kentucky/visit ohio/visit michigan/visit indiana/visit illinois/visit wisconsin/visit minnesota/visit iowa/visit missouri/visit arkansas/visit mississippi/visit louisiana/visit texas/visit oklahoma/visit kansas/visit nebraska/visit south dakota/visit north dakota/visit montana/visit wyoming/visit colorado/visit new mexico/visit arizona/visit utah/visit idaho/visit washington/visit oregon/visit nevada/visit california"

[end stuff]

chapter tables

table of abbrevs
state	abbr
Alabama	"AL"
Alaska	"AK"
Arizona	"AZ"
Arkansas	"AR"
California	"CA"
Colorado	"CO"
Connecticut	"CT"
Delaware	"DE"
florida	"FL"
georgia	"GA"
Hawaii	"HI"
Idaho	"ID"
Illinois	"IL"
Indiana	"IN"
Iowa	"IA"
Kansas	"KS"
Kentucky	"KY"
Louisiana	"LA"
Maine	"ME"
Maryland	"MD"
Massachusetts	"MA"
michigan	"MI"
minnesota	"MN"
mississippi	"MS"
missouri	"MO"
montana	"MT"
nebraska	"NE"
nevada	"NV"
New Hampshire	"NH"
new jersey	"NJ"
new mexico	"NM"
new york	"NY"
north carolina	"NC"
north dakota	"ND"
Ohio	"OH"
Oklahoma	"OK"
oregon	"OR"
pennsylvania	"PA"
rhode island	"RI"
south carolina	"SC"
South Dakota	"SD"
Tennessee	"TN"
Texas	"TX"
Utah	"UT"
Vermont	"VT"
Virginia	"VA"
Washington	"WA"
West Virginia	"WV"
Wisconsin	"WI"
Wyoming	"WY"

chapter map-mucking

to decide what text is (myst - a us-state) evaluated:
	if myst is visited:
		decide on "!!";
	choose row with state of myst in table of abbrevs;
	decide on abbr entry;

chapter the big text map

to say my-map:
	say "It's a beautiful map, hand-drawn by a former student. Text can't do it justice, but it's functional enough for your purposes:[line break][fixed letter spacing]";
	say "
[line break]                                                          +--+
[line break]                                                         /   |
[line break]                                                  +-----+ [Maine evaluated]/
[line break]                                                  |[Vermont evaluated]/[New Hampshire evaluated]|--/
[line break]                                                +-+  |  |
[line break]                                               /  +-----++
[line break]                                              /   |  [massachusetts evaluated]  |
[line break]+----+-+-------+-------+----+-\-+   +-+    +-/    +-----+|
[line break]| [washington evaluated] | \   [montana evaluated]  |  [north dakota evaluated]   | [minnesota evaluated]/   \ | /  ++  /   [new york evaluated]  |[connecticut evaluated]|[rhode island evaluated]++
[line break]+----+  \      +-------+   \ [wisconsin evaluated] \| |[michigan evaluated] | +-----+  |
[line break]| [oregon evaluated] | [idaho evaluated]-+----+  [south dakota evaluated]   +----+    | |   / + [pennsylvania evaluated]  +--++
[line break]+---++--+-+    +-------+ [iowa evaluated]  >---+-+-++--+     *[new jersey evaluated] |
[line break]|   |   | | [wyoming evaluated] |  [nebraska evaluated]   +----+    |[Indiana evaluated] |[ohio evaluated] +-+---**\ |
[line break]|   |   | |    |       |    |    |   /\-/[west virginia evaluated]+-[maryland evaluated]|  \|
[line break]|   |   | ++---++      |    | [illinois evaluated] +--+  + /[virginia evaluated] \/
[line break]|   |[nevada evaluated] |[utah evaluated]| [colorado evaluated] +------+ [missouri evaluated] |   /  [kentucky evaluated]  >+----+
[line break]| [California evaluated]|   |  |    | [kansas evaluated]   |     \ +------+   [north carolina evaluated] |
[line break]|   |   +--+----+------+ /--+-+  [tennessee evaluated]  / /---\/
[line break] \   \ ++  |    +--+ [oklahoma evaluated]+-[arkansas evaluated] +--+---++-+ [south carolina evaluated] /
[line break]  \   \| [arizona evaluated]| [new mexico evaluated] |  +---+   /   |   |   \  /
[line break]   \   |   |    |      +--+  [mississippi evaluated]|[alabama evaluated] | [georgia evaluated] \/
[line break]    +--+---+---++      |  +-+  |   |    |
[line break]                \      | [louisiana evaluated] |  | +-+----+
[line break]                 \ [texas evaluated]  +----+--+-+   [florida evaluated]  \
[line break]                  \   /          +----+   \
[line break]                   \ /                 \   |
[line break]                    +                   \  |
[line break]                                         | |
[line break]                                         +-+
[paragraph break]";
	say "[variable letter spacing](Note: the Northeast is not to scale because it is crowded. Delaware is the group of three asterisks. )";

rule for printing a parser error when the latest parser error is the noun did not make sense in that context error:
	say "That's not a state or abbreviation you recognize, or something you can do in this game, which has a stripped-down parser.[paragraph break]The main commands are START (state/abbreviation) and (state/abbreviation). X MAP shows the map. ABOUT discusses the game."

rule for printing a parser error when the latest parser error is the i beg your pardon error:
	say "You take a bit of time to pause. But not too much."

volume amusing

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"SEE which states are tricky/impossible and why"	true	"see"	show-tricky rule	--

this is the show-tricky rule:
	say "Starting in Georgia leaves Florida, South Carolina, and Maine as dead ends, but you can only have one dead end as you go forward.[paragraph break]";
	say "Once you step on New York, you divide the map in two. So you had better have one side done before taking on the other. Starting anywhere northeast of New York, thus, means you'll need all those states covered. But if you do not start in Maine, Maine is a dead end. That makes starting in Maine easier, as once you cover the Northeast, you can go any which way.[paragraph break]";
	say "Similarly, Massachusetts, Rhode Island, Connecticut, Vermont and New Hampshire leave no path.";
	say "Georgia is a bit trickier to prove. No matter which way you go, two of South Carolina, Florida and Maine will be dead ends--in other words, a place where you need to end your journey.";
	say "Some states have immediately losing first moves: from Alabama, you must go to Florida. From Idaho or Oregon, Washington. From North Carolina, South Carolina. Also, moving from Pennsylvania to New Jersey or vice versa splits the map in two. Delaware and Maryland to Pennsylvania immediately also fails.[paragraph break]";
	the rule succeeds;

volume tests

[when play begins:
	repeat with Q running through us-states:
		let J be the number of us-states that border Q;
		if J < 3 and J > 0:
			say "[q] [j]."]

