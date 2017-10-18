"Dash Slapney and the Calamitous Candy Corn Cornucopia" by Andrew Schultz

Book globals

Include Basic Screen Effects by Emily Short.

Use no scoring.

Use American dialect.

The story description is "Nobody knows what's behind the big push for an all-Candy Corn Halloween in Vanillaville. It's probably too trivial for the super logical types.[paragraph break]That's where you, Dash Slapney, come in. You're not particularly good at sleuthing, but you're heinously underestimatable.".

The story genre is "Fiction, Comedy".

The story creation year is 2011.

The release number is 1.

a room can be goable. a room is usually not goable.

Book the-start

When play begins:
	now player is in your bedroom;

Book rooms

Chapter your bedroom

Your Bedroom is a room. "This room is not as squalid as it could be--the overhead light is out, but the glare from the street makes up for it. Your place's main hallway is west."

The telephone is a thing. It is fixed in place in your bedroom. understand "phone" as telephone.

The telephone can be ringing. It is ringing.

The description of the telephone is "At least it's not rotary."

Your favorite plastic wastebasket is an open unopenable container in your bedroom.

A disturbingly corroded battery is in your favorite plastic wastebasket.

The description of your favorite plastic wastebasket is "[one of]It's so favorite, you can only put your favorite trash in. But then, very little you want to get rid of qualifies as 'favorite.'[or]No time to gaze lovingly at your favorite wastebasket, Dash![stopping]"

A thing can be examined or unexamined.

Carry out examining something:
	now the noun is examined.

The description of a disturbingly corroded battery is "It's a bit rusty and apparently not quite at its expiration date yet[if battery is unexamined]. It can't be too dangerous, since it hasn't bored a hole in the wastebasket yet, but you still can't remember when you bought it[end if]."

After taking the disturbingly corroded battery for the first time:
	if battery is not handled:
		say "Taken. (Well, it didn't turn your skin any new colors a week ago.)"

After taking the favorite plastic wastebasket:
	if disturbingly corroded battery is in wastebasket:
		say "[if wastebasket is not handled](Rattle, rattle.) Uh-oh. There's that battery you've been meaning to take to the library for special battery recycling for the last few months. Well, on the bright side, it hasn't bored a hole in the wastebasket.[end if]";

Check going west in your bedroom:
	if telephone is ringing:
		say "The phone is ringing. Unfortunately, you can't think of a decent excuse to ignore it. I mean, you could pretend you were exploring your house for the first time, but that's really lame." instead;

before going when player is in ford escort:
	try exiting;

Chapter Your Main Hallway

Your Main Hallway is west of Your Bedroom. "You can go north to your bathroom, east to your bedroom, and west to your kitchen from here. There are also stairs up, but the sofa in your living room is too tempting. You've got a job to do."

check going up in your bedroom:
	if city hall steps is goable:
		say "[one of]It's just far too messy up there right now. On September 30 you promised yourself you'd clean it up next month. But it was like at 11:57 PM, so that might've meant November.[or]Best to ride your luck and get going, Dash.[stopping]"

check going south in Your Main Hallway for the first time:
	say "Before you can get through the door, noted do-gooder Henrietta Peckler blocks and pokes you with a pen.[paragraph break]'Sign here. It is a promise not to feed children nasty chocolate.' She holds out a pen for you.";
	now Henrietta Peckler is in Your Main Hallway instead;

check going in Your Main Hallway:
	if Henrietta Peckler is in Your Main Hallway:
		say "You're not gettng around Henrietta Peckler." instead;

chapter your living room

Your Living Room is above Your Main Hallway. "Well, Dash, you made it. Time for a nice rest. That sofa looks good."

the sofa is scenery in your living room.

the description of sofa is "It looks good enough to SLEEP on."

instead of doing something with the sofa:
	say "Just SLEEP on it already."

Chapter your bathroom

Your Bathroom is north of Your Main Hallway. "None of the amenities here are broken, strictly speaking, but that doesn't make it any less intimidating. There's a shower you don't need, a sink you don't need, a mirror you don't need, and a toilet you don't need."

The mirror is scenery in the bathroom.

instead of doing something with the mirror: say "[one of]You never put anything behind the mirror, which swings out to reveal a medicine cabinet. It also helps you keep your head down and just get on with business when you're at the sink.[or]It's not important, Dash.[stopping]"

The sink is scenery in the bathroom.

instead of doing something with the sink: say "[one of]Being relatively unwashed seems to help your process in situations like these.[or]It's not important, Dash.[stopping]"

The toilet is scenery in the bathroom.

instead of doing something with the toilet: say "[one of]You haven't consumed enough to need one.[or]It's not important, Dash.[stopping]"

The shower is scenery in the bathroom.

instead of doing something with the shower: say "[one of]Being relatively unwashed seems to help your process in situations like these. Plus, you forgot where you put the towel.[or]It's not important, Dash.[stopping]"

A vandalobject is a kind of thing.

The toothpaste tube is a vandalobject in your bathroom.

The shaving cream can is a vandalobject in your bathroom.

The description of the shaving cream is "You think it's white and foamy. It was last week."

The description of the toothpaste tube is "It's apparently a weird green gel."

Chapter your kitchen

Your Kitchen is west of Your Main Hallway. "The only reasonable exit is back east to the main hallway. The door to your back yard is barricaded by the latest items you bought from the bent-and-dent shelf at your local supermarket."

The fridge is scenery in your kitchen.

instead of examining fridge:
	say "You don't want to brave it right now."

The kitchen sink is scenery in your kitchen.

The description of the kitchen sink is "You could probably use it to FILL something full of water.";

The kitchen table is a fixed in place supporter in Your Kitchen.

The brownie is on the kitchen table. "It's still pliable. You made it this morning, and miraculously, it turned out well."

check inserting into brownie:
	if noun is not battery:
		say "You could probably slip something in the brownie, but not that." instead;
	say "You sneak the battery into the center of the brownie.";
	now battery is part of the brownie instead;

understand "trash can" and "trashcan" and "basket" and "bucket" as plastic wastebasket.

carry out filling:
	if noun is not plastic wastebasket:
		say "You can't fill that." instead;
	if player is not in your kitchen and player is not in your bathroom:
		say "No water source nearby." instead;
	if battery is in plastic wastebasket:
		say "You don't want to get that battery wet." instead;
	if watering is true:
		say "No one else is going to assault your home, and you're not carrying a bucket of water in your car. No sir." instead;
	if water is not in plastic wastebasket:
		say "Filled.";
		now water is in plastic wastebasket instead;
	say "The plastic wastebasket's already filled."

filling is an action applying to one thing. understand the command "fill [something]" as something new. understand "fill [something]" as filling.

Chapter your driveway

Your Driveway is south of Your Main Hallway. It is goable.

The Ford Escort is a vehicle. It is in Your Driveway. understand "car" as ford escort.

The description of Ford Escort is "When you bought this car, it immediately barred you from the exciting work of griping about car payments. It's serviceable, relatively undented, and not worth stealing."

The loudspeaker is a device in the Ford Escort. It is fixed in place. It is switched off.

Chapter By the Golf Course

kids-gone is a truth state that varies. kids-gone is usually false.

By the Golf Course is a room. It is goable. "You're by the golf course--off in the woods you can see a campfire [if location is goable]and a bunch of teens[end if].";

The teens are scenery in By the Golf Course. "[if location is goable]Gone now.[otherwise]Probably too old to trick-or-treat, too young to drink properly in a bar. But at least their campfire is in the woods to the side of the golf course."

instead of exiting when ford escort is in By the Golf Course:
	say "You don't need to get out. It's probably best to surprise these kids.";

the box of bang-snaps is an openable opaque container.

understand "bang snaps" as box of bang-snaps.

check opening the box of bang-snaps:
	say "Man, you always say you'll just throw one down, but it never stops there, Dash." instead;

check switching on the loudspeaker:
	if ford escort is in by the golf course:
		if kids-gone is true:
			say "You've had your fun." instead;
		say "RIEUW! You forgot that loudspeaker came with a siren. 'Drop the goods, kids!' you yell. And they do. You switch off the loudspeaker--there's a pack of bang-snaps and some empty beer bottles lying around. The bang-snaps seem useful, so you take them.";
		now by the golf course is not goable;
		now player has the box of bang-snaps instead;

Chapter Seedy Street

Seedy Street is a room. It is goable. "You're cruising Seedy Street. Well, actually you're parked by a broken parking meter."

carton of cigarettes is a thing.

the broken parking meter is scenery in seedy street. "It's a semi-newfangled one with a digital timer blinking 88:88."

The seedy youth is a man. He is in Seedy Street.

The description of the seedy youth is "He's wearing a t-shirt that says UP WITH VANDALISM."

instead of exiting when ford escort is in Seedy Street:
	say "No way, man. Rough neighborhood."

vandalism-objects is a number that varies. vandalism-objects is usually 0.

check giving a vandalobject to the seedy youth:
	increment vandalism-objects;
	if vandalism-objects is 2:
		say "'Wow, man! Hey, this'll work great. Hey, you look like you're too wussy to actually do anything tonight, and you probably don't even smoke either. What say you guard this carton of smokes I stole from the police impound while I go vandalize stuff?'";
		now player has the carton of cigarettes;
		now seedy street is not goable;
		now seedy youth is off-stage;
		the rule succeeds;
	say "'Man, this is pretty good, but I, like, need a little variety.'" instead;

Book verbs

chapter walkthruing

walkthruing is an action out of world applying to nothing.

understand the command "walkthrough" as something new. understand "walkthrough" as walkthruing.
understand the command "hints" as something new. understand "hints" as walkthruing.
understand the command "hint" as something new. understand "hint" as walkthruing.
understand the command "help" as something new. understand "help" as walkthruing.

carry out walkthruing:
	say "Warning, Dash! Spoilers ahead! Sure you want to...?";
	if the player consents:
		say "get all.answer phone.w.n.fill bucket.get all.s.w.get all.e.s.sign.s[paragraph break]splash water on boy.s.enter car.drive to gas station.open glove compartment.get chocolate bar.get out.give bar to smitty.enter car.drive to seedy street.give shaving cream.give toothpaste tube.drive to golf course.switch loudspeaker.drive to hospital.put battery in brownie.get out.n.give box to boy.s.enter car.drive to pecklers.wear costume.get out.n.put carton in fireplace.d.open cabinet.get document.u.s.enter car[paragraph break]drive to corny's.get out.n.show document to corny.s.enter ford.drive to city hall.get out.n.show document to mayor.show invoice to mayor.show files to mayor.get out.n.u.sleep";
	otherwise:
		say "Back to playing it straight, Dash. Henrietta Peckler would approve, for sure."

instead of asking:
	say "You have nothing interesting to say beyond utter trivialities. Well, you do, but an interesting conversation would get in the way of your job. And a boring one would just suck."

chapter sleeping

instead of sleeping:
	if player is in your bedroom:
		say "No way, Dash! [if telephone is ringing]That phone's too distracting![otherwise]You've got a job to do![end if]";
	if player is in your living room:
		say "There's just enough space on the sofa to curl up with that nice big chocolate cigar. You do so, throwing your other newfound items in a heap with the rest. They are nice souvenirs. You'll organize them all one day. Maybe. You fall asleep with the cigar in your hand, planning a drive across the county line to a lucky town whose supermarkets and drug stores bulge with half-price chocolates...";
		end the story instead;
	say "No time to sleep while on the job, Dash."

chapter xing

carry out xing:
	say "You don't believe in magic. You believe in dumb luck, stupid coincidence. It's worked so far.";

xing is an action out of world. understand the command "xyzzy" as something new. understand "xyzzy" as xing.

chapter gas station

Gas Station is a room. It is goable.

Smitty is a man in Gas Station.

The description of Smitty is "While none of Smitty's first, last or middle names resembles Smith, he nonetheless vowed to gain the nickname when he was seven. A vengeful sidewalk crack fairy granted this wish one day, for crimes unspeakable. Nobody cares about his name now.[paragraph break]Nobody much cares how he looks, either. Corduroy hat, overalls, and all that, but looks aren't important."

the life-size cigarette costume is a wearable thing. the description of costume is "It's apparently a six foot tall costume of a lit cigarette. Apparently health oriented types have more fun pretending to be scared of it than being scared."

check opening the glove compartment for the first time:
	say "You're not sure what'll be in there--certainly not your registration papers. You open it to find...contraband![line break]"

The glove compartment is a fixed in place closed openable opaque container in the Ford Escort.

The chocolate bar is an edible thing in the glove compartment.

instead of eating the chocolate bar:
	say "Tempting, Dash, but that stuff's valuable currency right now.";

check giving chocolate bar to:
	say "He tucks it in his overalls. 'Thanks, Dash. I been out of stock of these for ages. Seems they wanted me to sign a document saying I'd sell nothin[apostrophe] but candy corn. Here's a costume they left behind for me. Weird choice, if you ask me.'";
	now chocolate bar is off-stage;
	now gas station is not goable;
	now player has the costume instead;

check giving costume to Smitty:
	say "Did you see how eagerly he gave it to you? He doesn't want it back."

chapter outside the pecklers

Outside the Pecklers is a room. It is goable.

chapter pecklers' living room

a crit-doc is a kind of thing. a crit-doc can be shown. a crit-doc is usually not shown.

The important watermarked document is a crit-doc.

The invoice is a crit-doc. The description of the invoice is "It's an invoice for far too much candy corn. It is stamped with PITCH EXTRAS and has a note about how even orphans won't eat it."

Some secret hospital files are a crit-doc. The description of the secret hospital files is "They're an order from Henrietta Peckler to Concerned Citizens Concerning Chocolate about the proper way to astroturf local, state and federal governments on chocolate and the obesity epidemic."

check going north in outside the pecklers:
	if player is not wearing the costume:
		say "You'll need a costume to get in." instead;
	if player does not have the carton of cigarettes:
		say "You sense you don't have the proper items needed for subterfuge. You'd hate to get stuck in there and have to hang around those people." instead;
	if player has the document:
		say "Your job here is done, Dash." instead;

Pecklers' Living Room is a room. "[if cigs-in-fire is true]The room is deserted except for the smell of cigarette smoke[otherwise]People you never could stand are milling around. Occasionally, someone mentions they enjoy your costume[end if]. There's a fireplace here, too[if cigs-in-fire is true]. You know, the one you dumped that carton of cigarettes in[end if]. A big poster here advertizes the benefits of tip-top health."

Pecklers' Living Room is north of Outside the Pecklers.

The fireplace is scenery in Pecklers' Living Room. "It's roaring cheerfully, but less annoyingly than the average person at this party."

understand "fire" as fireplace.

check inserting bang-snaps into fireplace:
	say "That'd make a lot of noise, but there's something the guests might be even more scared of." instead;

check inserting carton of cigarettes into fireplace:
	say "Good thinking, Dash. They're laughing at first--it's just a joke, right, with your costume? But soon after the carton is in the fire, they realize it isn't. As they flee from the prospect of second-hand smoke, they start crying about gangsters and undercover tobacco company operatives. It'll be a while before they're brave enough to come back.";
	now cigs-in-fire is true;
	now carton of cigarettes is off-stage instead;

The platter of vegetables is a thing in Pecklers' Living Room. The platter of vegetables is edible.

Instead of eating the platter of vegetables:
	say "You prefer the canned stuff, and you've got plenty of that at home."

check taking off costume:
	if player is in pecklers' living room or player is in basement:
		if player does not have important document:
			say "Maybe once you find what you need.";

check taking important document:
	now outside the pecklers is not goable;

check going south in pecklers' living room:
	if player does not have the document:
		say "You don't have what you came here for. You're not entirely sure what that is, but seeing as you haven't turned up anything new, you couldn't possibly have gained what you need.";
	if player is wearing the costume:
		say "You've had enough of this stupid costume. You chuck it in the fireplace to destroy any evidence. It actually smells worse than the cigarettes.";
	now the costume is off-stage;

cigs-in-fire is a truth state that varies. Cigs-in-fire is usually false.

check going down in pecklers' living room:
	if cigs-in-fire is false:
		say "You sense you're being watched as you go downstairs. Apparently, you can't just walk down there." instead;
	if basement is unvisited:
		say "You manage to sneak down, free from watchful eyes.";

chapter pecklers' basement

Pecklers' Basement is below Pecklers' Living Room. The filing cabinet is a closed unlocked openable opaque container in Pecklers' Basement. The important watermarked document is inside the filing cabinet.

The description of the important watermarked document is "[one of]It's got some babble about how flooding this Halloween with Candy Corn is an important anti-obesity initiative in Vanillaville, because candy corn is almost as disliked as circus peanuts--but not enough for the masses to expect anything is up. Once the initiative succeeds, plans are in place for wider distribution for Christmas, Valentines' Day and Easter.[or]You don't need to read it again. The implications are clear and disastrous, Dash. No chocolate for the kids means no cheap chocolate the day after a big holiday![stopping]"

[instead of reading the important watermarked document:
	try examining the important watermarked document;]

chapter corny's cornporate headcornters

Outside Corny's is a room. It is goable.

check going north from Outside Corny's:
	if player does not have the important document:
		say "You've got nothing that Corny might be interested in, yet. Maybe he'd like some reading material." instead;

Corny's Cornporate Headcornters is a room. It is north of Outside Corny's. "You're outside the Candy Corn Castle of the Midwest. It's where some of the most distinctive candy corns are made."

Mister Corn is a man in Corny's Cornporate Headcornters.

understand "corny" as Mister Corn.

description of Mister Corn is "Corny's in a denim shirt and tan khakis, about 45, looking [if player has the invoice]relieved[otherwise]worried[end if]."

check giving something to Mister Corn:
	if noun is not important document:
		say "That's not businesslike enough for Mr. Corn." instead;
	if player has the invoice:
		say "Mr. Corn is a businessman. He doesn't like wallowing in the past. You've helped him enough." instead;
	say "'Hm...interesting. I thought they were a bit brusque with me. They praised my candy corn and then didn't even bother trying the new tutti frutti flavor. Just went on and on against chocolate--my caramel and cinnamon and regular candy corns were ok. Dash, you may want to look at this. I--I got the sale, but...' He hands you an invoice.";
	now outside corny's is not goable;
	now the player has the invoice instead;

chapter outside the hospital

Front of Hospital is a room. It is goable. "A big chocolate detector is here, guarding the entrance to the hospital. It was installed at considerable taxpayer expense and provides an extra layer of security for halloween candy shoppers who want to make sure the additional apples they get this year will have no razor blades. Can't be too careful against kooks, you know."

The chocolate detector is a door. It is north of Front of Hospital and south of Hospital X-Ray Room. The chocolate detector is open and unopenable and unlocked. The chocolate detector can be ineffective. It is not ineffective.

the description of chocolate detector is "It's a menacing looking thing[if detector is ineffective], even though you've already straightened it out[end if]. A sign above it says ABANDON ALL CHOCOLATE ALL YE WHO ENTER HERE."

check going north from Front of Hospital:
	if player has the brownie:
		if the chocolate detector is ineffective:
			continue the action;
		if the battery is not part of the brownie:
			say "The chocolate detector's going to nab that brownie, Dash. Unless you can booby trap it, it'd be a terrible waste." instead;
		otherwise:
			say "Freeooww! The chocolate detector finds your brownie. A mechanical arm whizzes into the pocket where you have it and proceeds to crunch it. But it also crunches the old battery, which was apparently as toxic as you'd worried. Sirens begin blaring briefly before a shock of something or other shoots from the battery up the pincher and shorts the detector out. Good work, Dash!";
			now the chocolate detector is ineffective.

[Hospital X-Ray Room is north of Front of Hospital.]

A sullen boy is a man in Hospital X-Ray Room. A sullen boy can be pleased. A sullen boy is not pleased.

The description of a sullen boy is "He's about ten or so and dressed as some anime character or other. You don't know. You still have a backlog of Tom and Jerrys to watch, yourself."

after going to the Hospital X-Ray Room:
	if sullen boy is pleased:
		say "The sullen boy looks up briefly, then ignores you. You're not interesting to him any more." instead;
	if chocolate detector is ineffective:
		say "[one of]'Oh boy, mister! That was cool! That detector took my chocolate away, but seeing you blow stuff up was worth it. You're just about the coolest adult ever. Maybe if you gave me something you could be!'[or]'Don't you want to be the coolest adult ever? Give me something now!'[stopping]";
	otherwise:
		say "The bratty kid here looks up at you, says, 'Oh, another lame-o adult,' and goes back to sulking.";

check giving box of bang-snaps to sullen boy:
	say "'He grabs them greedily. 'Boy, you really are the coolest adult ever,' he says. 'You're not some loser who sits around staring at boring papers with figures like the ones I stole...' you lose your cool for a moment and half grab for them. The kid senses your weakness, kicks you in the shins, and yells, 'Even the cool grown-ups aren't cool! I hate life!' and runs away.";
	now sullen boy is off-stage;
	now player has the secret hospital files;
	now front of hospital is not goable instead;

chapter city hall steps

City Hall Steps is a room. it is goable. "The door to City Hall is, strangely, open. It's to the north."

The room called Inside City Hall is north of City Hall Steps. "You hear phones ringing in the back and some poor overworked folks saying 'Yes sir-or-ma'am I understand but the chocolate-free Halloween is a bold experiment and all indications are--uh--that it's working very well."

Mayor Charley Chummers is a person. He is in the room called Inside City Hall. "Mayor Charley Chummers is here, his tie and shirt unloosened. You're not sure why he's still in his suit."

the tie is part of Charley Chummers. The shirt is part of Charley Chummers. The suit is part of Charley Chummers.

the description of Mayor Charley Chummers is "He's been sweating a bit and looks fatigued. He's shaking his head and mumbling about being blocked out of his own office."

book verbs-2

chapter answering

to try phone-answering:
	say "You pick up the phone.[paragraph break]'Slapney? Dash Slapney?'[paragraph break]'Speaking.'[paragraph break]'There's a job out there, and you're the only man for it.'[paragraph break]'I'm sure there're people who'd be more qualified.'[paragraph break]'Exactly. And that's why we want you. Your track record's astounding, Dash. Other people, they set down a plan, execute, and BAM! They foil the bad guy. Who comes up with a better plan next time. But you know how it is.'[paragraph break]Of course you do. You heard the lecture before. But the longer they talk, the more they tend to pay you.[paragraph break]'See, Dash, we need someone who'll do the bare minimum. Foil the other guy so they're convinced there's no way you'll get that lucky again. I mean, we could have a war of ideas with these nuts, but they'd hire PR people and think tanks and flood the whole situation with money, and we'd be screwed. But you--you come along, they get pissed a slob like you could gum it up. There's no one better at it than you, kid.'[paragraph break]'Can the praise. What's the job?'[paragraph break]'We need you to save Halloween here in Vanillaville. It's being taken over.'[paragraph break]'By what?'[paragraph break]'Candy corn. It's complicated. I...I can't say more.'[paragraph break]Sounds downright scary. Even to a cheap sucker like you who buys the stuff on clearance every November first.";
	now telephone is not ringing;

answering is an action applying to one thing.

understand the command "answer [something]" as something new.

understand "answer [something]" as answering.

does the player mean answering the telephone: it is very likely.

instead of answering the telephone: try phone-answering.

instead of answering a person: say "No way. You're Dash Slapney. You've never had the answers."

instead of answering the player: say "You'd have to ask yourself a pressing question to do that. No dice."

instead of answering: say "People think you're nuts enough as it is, Dash. Don't oversell it."

instead of taking the telephone: try answering the telephone.

instead of dropping something:
	if the player's command matches "^throw":
		say "Try THROWING an item AT someone, instead." instead;
	say "[one of]No way. Dash Slapney doesn't drop stuff. Well, not until the job's done. Then he lets it gather dust in his living room.[or]Dash Slapney doesn't leave trails.[or]You're too stingy for that.[or]Bleah.[stopping]"

chapter throwing

water is a thing. instead of taking water: say "It slips through your fingers[if water is in wastebasket], so it might be more effective to SPLASH it at someone[end if]."

check splashing:
	if the noun is water:
		if second noun is annoying boy or second noun is annoying girl:
			say "SPLASH! You get them good. They go crying for their mother, who shakes a finger at you. The stakes are raised now, Dash.";
			now annoying boy is off-stage;
			now annoying girl is off-stage;
			now water is off-stage;
			now watering is true instead;
	if noun is Henrietta Peckler:
		say "She's got the police in her pocket in this town, somehow. Not money. Just guilt trips." instead;
	say "You don't need to soak them.";

splashing is an action applying to two visible things.

understand the command "splash [something] at/on [something]" as something new.

understand "splash [something] at/on [something]" as splashing.

chapter signing

signing is an action applying to nothing. understand the command "sign" as something new. understand "sign" as signing.

sign2ing is an action applying to one topic. understand the command "sign [text]" as something new. understand "sign [text]" as sign2ing.

carry out sign2ing:
	say "(Note--you just need to SIGN...)[line break]";
	try signing instead;

Henrietta Peckler is a person.

carry out signing:
	if location of player is not location of henrietta peckler:
		say "You don't give autographs. You used to, but they were so messy, people got the hint." instead;
	say "'What a mess of a signature. But that will do. There will be children around. You will give them this good proper candy, not the usual rubbish.' The candy corn she hands you is certainly not usual rubbish.";
	now Henrietta Peckler is off-stage;
	now player has the bag of candy corn instead;

chapter kids-candy-scene

the bag of candy corn is a closed unopenable container.

kids-trick-treating is a scene. kids-trick-treating begins when player has bag of candy corn.

when kids-trick-treating begins:
	now annoying boy is in your main hallway;
	now annoying girl is in your main hallway;

watering is a truth state that varies. watering is usually false.

kids-trick-treating ends when watering is true.

instead of going to driveway during kids-trick-treating:
	if annoying boy is not in Your Main Hallway:
		say "Oops. You thought the coast was clear. But an annoying little boy and girl block your way. They've got bags. Bags to put candy in." instead;
	say "[one of]Dammit. The kids have appeared already. You'll have to shake them off, somehow.[or]Those stupid kids are blocking your way.[stopping]"

a kid is a kind of person.

an annoying boy is a male kid. the description of annoying boy is "He looks like a goddamn mini-Winkelvoss twin. Man, they just start earlier."

an annoying girl is a female kid. the description of annoying girl is "She looks disturbingly like Michelle Bachmann. With the heels and pearls and everything. You'd have to really suck as a parent regardless of political affiliation to do that to your kid. Or to have a kid willing to..."

instead of giving bag of candy corn to annoying boy:
	say "That'd ruin his gleamingly obnoxious white teeth. Plus, you do it once, you'll be stuck here all evening.";

instead of giving bag of candy corn to annoying girl:
	say "Whoah. You do it once, you'll be stuck here all evening.";

chapter showing

showing is an action applying to two visible things. understand the command "show [thing] to [thing]" as something new. understand "show [thing] to [thing]" as showing.

instead of showing:
	try giving the noun to the second noun;

crit-docs-shown is a number that varies. crit-docs-shown is usually 1.

the chocolate cigar is an edible thing.

the description of the chocolate cigar is "It's pretty big, even for a cigar. You suspect it would give you indigestion if you ate it at once, but you need the excuse for a break after this."

check eating the chocolate cigar:
	if player is not in your living room:
		say "Find a sofa to relax and eat the cigar on." instead;
	try sleeping instead;

check giving a crit-doc to:
	if second noun is not mayor:
		say "Not to them, Dash. It's gotta be someone with the power to change things." instead;
	if noun is shown:
		say "You've already shown the mayor that.";
	now noun is shown;
	increment crit-docs-shown;
	if crit-docs-shown is 1:
		say "The mayor reviews your document carefully. 'Hmm. I wanted to believe these people were just out for people's good, but...'";
	if crit-docs-shown is 2:
		say "The mayor frowns. 'All this time I thought I was just biased against candy corn. This Peckler woman worries me, though. I never really liked her, but I can't quite...";
	if crit-docs-shown is 3:
		say "'Brilliant! That's the last piece of evidence, Dash. I--I always thought they were laughing at me behind their back. We're going to have a special legislative session tomorrow. With free bite-sized pieces of chocolate. There won't be any of these folks' performance art, either.[paragraph break]'Dash, I can't tell you how grateful I am for this. I'd like to give you something.' He reaches into his safe and hands you a chocolate cigar. 'To enjoy. On your own time. We won't be having any chocolate for a few weeks, I'm afraid, but...well...I saved this from when Peckler and her gang got chocolate cigars banned a few months ago. Said they weren't going after CHOCOLATE itself, per se.'";
		now player has the chocolate cigar;
		pause the game;
		now ford escort is in your driveway;
		now player is in ford escort;
		now city hall steps is not goable;

chapter smoking

smoking is an action applying to one thing. understand the command "smoke [something]" as something new. understand "smoke [something]" as smoking.

instead of smoking the carton of cigarettes:
	say "You remember wanting to be a heavy smoker when you were a kid, but then you realized that meant actually inhaling lots of smoke. Screw that.[paragraph break]But if there was a way to piss certain people off with cigarette smoke without smoking, man, you'd do it.";

instead of smoking:
	say "You're a layabout, not a hippy.";

chapter drive

driving is an action applying to nothing.

carry out driving:
	let places be 0;
	if player is not in Ford Escort:
		say "You're not in a car, Dash." instead;
	say "Here are the places you might actually want to drive:[paragraph break]";
	repeat with x running through goable rooms:
		if location of player is not x:
			say "[x][line break]";
			now places is 1;
	if places is 0:
		say "Heh, just kidding. You're almost done, Dash!";

understand the command "drive" as something new.

understand "drive" as driving.

drivegoing is an action applying to one thing.

[a procedural rule while drivegoing:
	ignore the can't see any such thing error;]

does the player mean drivegoing outside corny's: it is very likely.
does the player mean drivegoing Front of Hospital: it is very likely.
does the player mean drivegoing Outside the Pecklers: it is very likely.
does the player mean drivegoing City Hall Steps: it is very likely.

carry out drivegoing:
	if player is not in ford escort:
		try entering ford escort;
	if noun is not a room:
		say "You have to drive to a location." instead;
	if noun is not goable:
		say "You either don't need to go there, or you'd kill people getting there, Dash." instead;
	say "Vroom! Vroom!";
	now ford escort is in noun;
	[now player is in ford escort;]
	try looking;

understand the command "drive to [any room]" as something new. understand "drive to [any room]" as drivegoing.

Book rules

phone-rings is a number that varies. phone-rings is usually 0.

every turn while player is in your bedroom:
	if phone-rings is 5:
		try phone-answering;
		the rule succeeds;
	else if telephone is ringing:
		say "Stupid phone won't stop ringing...";
		increment phone-rings;

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "There's nothing random here lying around that you can do weird stuff with.";
	reject the player's command;

rule for printing a parser error:
	if the player's command matches "kids$":
		if annoying boy is in hallway or annoying girl is in hallway:
			say "Sorry, the author didn't have time to figure how to say KIDS. Just do something to the annoying boy. Or girl.";
			reject the player's command;
	continue the action;

Book tests - not for release

test win with "get all/answer phone/w/n/fill bucket/get all/s/w/get all/e/s/sign/s";
test win2 with "splash water on boy/s/enter car/drive to gas station/open glove compartment/get chocolate bar/get out/give bar to smitty/enter car/drive to seedy street/give shaving cream/give toothpaste tube/drive to golf course/switch loudspeaker/drive to hospital/put battery in brownie/get out/n/give box to boy/s/enter car/drive to pecklers/wear costume/get out/n/put carton in fireplace/d/open cabinet/get document/u/s/enter car";
test win3 with "drive to corny's/get out/n/show document to corny/s/enter ford/drive to city hall/get out/n/show document to mayor/show invoice to mayor/show files to mayor/get out/n/u/sleep"
[drive to city hall/get out/n";/enter ford/drive to corny's";]

test wins with "test win/test win2/test win3";