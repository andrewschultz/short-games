"The Argument-Winner's Ghost" by Andrew Schultz

include basic screen effects by Emily Short.

include trivial niceties by Andrew Schultz.

[release along with cover art.]

use no scoring.

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

description of player is "You're a bit soaked but not enough to ruin Harley's floor, unfortunately."

the wallet is a thing carried by the player.

the picture of Fran is in the wallet. description of the picture of Fran is "It's you and Fran, happy together. You really hit it off talking about, well, how people can be jerks to each other. You talked about how people said you'd better not be homosexual, and each of you even had people in college tell you you should be. But you both made your choice and you're happy together. You don't care what the other looks like--too much--but you're grateful they take care of their own bodies. And you don't feel any need to answer anyone you've never met about your sexuality. That's just a nosy question."

check dropping:
	if noun is wallet or noun is Fran:
		say "No. That's yours." instead;
	say "No need to drop anything in this game." instead;

Foyer is a room. "You're in the foyer. The bedroom is west, and the living room is north. You could go south if you wanted. A very accurate digital clock is on the wall.".

the very accurate digital clock is scenery in foyer. "It's accurate to the nearest millionth of a second, and it shows time going very slowly[if ghost is visible][one of]. Harley coughs as if expecting thanks for extending your life for a few minutes[or]. But the novelty is wearing off[stopping][end if]."

instead of smelling:
	say "There's a joke in here about how Harley probably wears douchey cologne, and his corpse might smell of it, but we're all above that here. Aren't we?"

instead of doing something other than examining the clock:
	say "Really, it's only there for looking at.";

check going south in foyer:
	say "Are you sure about leaving before you've won all the arguments?";
	if the player yes-consents:
		say "You walk out[if number of carried things > 1], dumping Harley's stuff you took[end if], losing any argument over [list of neutral concepts] by default[if wthru is true] and not really caring. Harley snarks about how you couldn't even stand up for yourself if someone gave you the words[end if].[paragraph break]";
		choose row 1 + number of not neutral concepts in table of endies;
		do-the-end instead;
	say "Ok, staying." instead;

the newspaper is in the foyer. description of newspaper is "It has a sports section, a comics section, a politics section and a showbiz section."

understand "paper" as newspaper.

the sports section is part of the newspaper. description of sports section is "It has a list of Whateverball stats. See them?"

the comics section is part of the newspaper. description of comics section is "It has a bunch of comics you remember as much funnier when you were younger and others that aren't funny."

the politics section is part of the newspaper. description is "You understand the issues okay, now. You also understand how newspapers miss the real issues, but you can't understand why people waste time arguing about politics."

the showbiz section is part of the newspaper. description of showbiz section is "You're less clueless about the rich and famous now than in high school, and you also feel less guilty you don't care. Still, it's easy to get suckered into reading."

check showing comics to ghost:
	say "'Oh, hey, Garfield. Remember how long it took you to realize Garfield wasn't funny? Even after I sat you down with some hard evidence?" instead;

check showing politics to ghost:
	say "Oh no. Arguments about politics with Harley are a bad idea. He could hold his own with the debate team and throw kneejerk logic at you over both sides of current debates." instead;

check showing showbiz to ghost:
	say "Ah yes,' says Harley, 'people who don't deserve to be as famous as I am. People who deserved to be in a car accident more than I did. People who--well, probably followed their dreams more than YOU did.'" instead;

check showing newspaper to ghost:
	say "Harley recalls how he'd bring the paper in to work, for people to mooch and share. They still do, even with online articles. But nobody ever thanked him! Despite the delivery sticker on the front page." instead;

after examining sports:
	if the player consents:
		say "[fixed letter spacing]  WORLD WHATEVERBALL CONFLAGARATION STANDINGS
[line break]
[line break]  LETHAL DIVISION      ANNOYING DIVISION
[line break]
[line break]RAMEN GOLEMS    9 1  PROCRASTINATORS 8 2
[line break]DACHSUNDPEDES   6 4  DELINQUENTS     7 3
[line break]ROACHASAURI     6 4  INTERRUPTORS    5 5
[line break]DUODECAPUSES    6 4  NARCISSISTS     3 7
[line break]MEGAMOEBA       3 7  EXASPERATORS    3 7
[line break]AMPHIBISHARKS   3 7  DOUBLETALKERS   1 9
[line break]
[line break]THIS WEEK'S RESULTS:
[line break]RAMEN GOLEMS    46 DELINQUENTS   40
[line break]DACHSUNDPEDES   47 ROACHASAURI   29
[line break]PROCRASTINATORS 53 DUODECAPUSES  33
[line break]MEGAMOEBA       25 INTERRUPTORS  41
[line break]AMPHIBISHARKS   60 DOUBLETALKERS 32
[line break]NARCISSISTS     40 EXASPERATORS  37 (OT)
[line break]
[line break][variable letter spacing]Yup, your Ramen Golems are doing pretty well. They weren't so hot back in high school, and you don't follow things after they won the title last year, but still.";
	else:
		say "You gloss it, noting your team, the Ramen Golems, is leading the Lethal Division. Harley's team, the Delinquents, are doing ok, but the Golems beat them Sunday.";

instead of waving hands:
	say "[if ghost is visible]'Don't be a gay-ass.'[else]If you want to summon Harley, SNAP.[end if]";

instead of singing:
	say "'God, your taste in music--you're nice and all but...' says Harley[unless ghost is visible] from another room[end if]."

instead of jumping:
	say "Harley has you covered in the vertical leap department.";

instead of burning:
	say "Harley's memory doesn't deserve arson. Nor do his neighbors. He was/is just a jerk."

book giving it to

the block showing rule is not listed in any rulebook.
the block giving rule is not listed in any rulebook.

check giving it to:
	say "Seeing as how Harley can't take anything, it's more productive to show him stuff." instead;
	try showxing noun to second noun instead;

Showxing it to is an action applying to one thing and one visible thing.

understand the command "show [something visible] to [person]" as something new.
understand "show [something visible] to [person]" as showxing it to.

The can't show what you haven't got rule is not listed in the check showing it to rulebook.

does the player mean showing to Harley's ghost: it is very likely.

check showxing it to:
	ignore the can't show what you haven't got rule;
	if harley's is not in location of player:
		say "You might want to SNAP for Harley to come back, first." instead;
	if second noun is player:
		say "You probably want to show stuff to Harley, not yourself." instead;
	if noun is fran:
		if girls is not neutral:
			say "You've already talked with Harley about relationships. You've made your choice." instead;
		say "You show Harley the picture of Fran. Not that you care what he has to say, but just to show him you've found someone you're happy with. 'I always thought you might be...' you have the confidence to cut him off. 'Hey, I'm all for that sort of rights, only stupid people aren't...' You throw your hands up. Because it doesn't matter either way. It never did. You've said it to yourself, but you believe it more, now.";
		now harley-bored is a random number between 5 and 5;
		now girls is nice instead;
	if noun is Dear John letter:
		if girls is not neutral:
			say "You've already talked with Harley about relationships. You've made your choice." instead;
		say "You show Harley the letter. It's rough stuff. But you realize he deserves this comeuppance from SOMEone. Why not you? You give him the smile and 'tcch' he used to give yo after winning an argument.";
		now harley-bored is a random number between 5 and 5;
		now girls is mean instead;
	if noun is diet pills:
		if shape is not neutral:
			say "You've already showed Harley you're in better shape than he is." instead;
		say "It's a bit mean, but hey, you show Harley the pills then point to his robe. Is there a reason it is loose? Why yes, yes, there is. Harley screams with rage. You feel like you've taken a point off him.";
		now harley-bored is a random number between 5 and 5;
		now shape is mean instead;
	if noun is jersey:
		if sport teams is not neutral:
			say "You already discussed sports with Harley." instead;
		say "You show Harley the Typer Twinkleteeth jersey. Harley knows about the scandal. It's about more than wins or losses. It's really embarrassing. Harley looks a good deal like Tyler.";
		now harley-bored is a random number between 5 and 5;
		now sport teams is mean instead;
	if sport teams is neutral:
		if noun is sports section:
			say "You point to what was undoubtedly a well played game between your Ramen Golems and Harley's Delinquents. Yes, you had the home field advantage, but there may be a return ma.... 'Dammit!' yells Harley. 'I can't take that crap.'";
			now harley-bored is a random number between 5 and 5;
			now sport teams is nice instead;
		if noun is newspaper or noun is part of newspaper:
			say "Harley looks very, very bored with plain old news. You fail to make it interesting to him." instead;
	else:
		if noun is newspaper or noun is part of newspaper:
			say "No need to rehash sports with Harley." instead;
	if noun is computer:
		if money is not neutral:
			say "Enough with the computer and money talk." instead;
		if noun is unlog:
			say "Harley says, 'Snazzy, huh?'" instead;
		if noun is you-log:
			say "Harley looks soberly at your payments. You're doing rather well, he must admit. He squawks about how it's not the best return for your money, but you say you're happy. It's going further than you thought. You don't need all the things he said you didn't admit you wanted. 'No tax refund that way.' he says. You mention you do not need one. He growls.";
			now harley-bored is a random number between 5 and 5;
			now money is nice instead;
		if noun is h-log:
			say "Harley almost yells with rage as you point out his refinancing and loans from 401k and so forth. This from someone whose parents were so rich! Who expected to make money! You don't feel as good about this as you should, but hey, neither does Harley. 'Ah-ha!' you say. 'That's why your place is so minimalist!'";
			now harley-bored is a random number between 5 and 5;
			now money is mean instead;
	if noun is wallet:
		say "'Cheap wallet, dude.'";
	say "Harley doesn't seem to care about that." instead;

book bedroom

Bedroom is west of foyer. "You're in the bedroom. Yup, Harley's bed is here, and it looks a bit messy. The foyer is east, and the den is north."

Harley's Bed is scenery in bedroom. description is "Harley's bed is a mess[if jersey is off-stage], and it looks like there's something under it[else], even after you took stuff from under it[end if]."

instead of sleeping:
	if player is in bedroom:
		say "Not in Harley's bed.";
	else:
		say "And get arrested for trespassing? Nope.";

does the player mean looking under bed: it is very likely

check looking under bed:
	if jersey is off-stage:
		say "Hm, what do we have here?[paragraph break]A jersey for Tyler Twinkleteeth, Whateverball player of the year three years running for the Delinquents. Until the scandal. The unspeakable scandal.[paragraph break]A Dear John letter.[paragraph break]Oh, there are also some diet pills, too. And a password slip.";
		now jersey is in bedroom;
		now dear john letter is in bedroom;
		now diet pills are in bedroom;
		now password slip is in bedroom;
	else:
		say "You see nothing else under the bed.";
	the rule succeeds;

the jersey is a wearable thing. description of jersey is "[one of]It's of Tyler Twinkleteeth, still Delinquents str player, but tarnished. His number 1 and his name that barely fits on the back. It's an atrocious shade of purple, but not as atrocious as...Twinkleteeth's incidents that came to light. The one you wished you could rub in some friends['] face after they described what a guy he was compared to some of the players on your beloved Ramen Golems.[or]A Tyler Twinkleteeth jersey. You hope Harley overpaid for it.[stopping]"

check wearing jersey:
	say "No way. It's a horrible color, Twinkleteeth was a jerkwad before the 'incident,' you hate the team--and it's a size too large for you.[paragraph break]Besides, you have a Steamroller Mannheim jersey of your own. You totally bought it before he became the Ramen Golems['] best player.";

instead of kissing harley's ghost:
	say "That would be trolling. Besides, you have Fran."

instead of kissing player:
	say "[if ghost is visible]You don't know if ghosts get to laugh at that, but Harley would[else]You don't need Harley walking in on you[end if]."

the jar of diet pills is a thing. description is "[if shape is not neutral]Oh god. Did Harley really fall for this? It looks like a Multi-Level Marketing brand of pills, too. Man oh man[else]The jar of diet pills reminds you how Harley never was in very good shape despite making fun of your physique. But you assumed he was[end if]."

instead of eating jar of diet pills:
	say "You don't need them. You're in half-decent shape.";

the Dear John letter is a thing. description is "[if girls is not neutral]You feel a bit queasy reading it now that you've set Harley straight on relationships[else]Oh man. You identify with the girl in this letter. I mean, you didn't go out with Harley. But romantic relations or no, he could manage to leave people feeling they were at fault for...whatever[end if]."

the password slip is a thing. description of password slip is "[one of]It mentions Harley's mortgage payment company and Harley's login password, which is easy to guess and easy to remember, because it's a combination of slurs against unpopular people, with some letters in their leet equivalents.[paragraph break]You nosy person, you.[or]You don't need a refresher. The password was too stupid and vindictive to forget short-term.[stopping]";

pass-guess is a truth state that varies.

after examining password slip:
	now pass-guess is true;
	continue the action;

book den

Den is north of Bedroom. "You're in the den. The bedroom is south, and the living room is east."

book living room

Living Room is east of Den. Living Room is north of foyer. "You're in the living room. The foyer is south, and the den is west. A bathroom is east."

check going east in Living Room:
	say "[one of]On second thought, y[or]Y[stopping]ou already went." instead;

Harley's Ghost is a person in Foyer. "Harley's ghost hovers here."

understand "ghost" and "harley" as Harley's Ghost.

description of Harley's Ghost is "Even in the afterlife, he wears a popped collar that is not obscured by his robes. He's not bad looking, or at least he has enough looks and vigor to win arguments about whether he's handsome."

check going up:
	say "You can't fly." instead;

check going down:
	say "You can't sink into the ground. And if you could, you wouldn't want to." instead;

check going nowhere:
	say "Harley would laugh at you if you ran into a wall. Plus it would kind of hurt." instead;

when play begins:
	now right hand status line is "[arg of girls][arg of money][arg of shape][arg of sport teams]";
	say "You read it in the local suburban newspaper. Harley Drotz crashed his SUV. A fine young American who worked as some unwholesome cross of lawyer and salesman not possible before the Internet revolution. And perhaps you're mean, or biased, but the family quotes remind you of eulogies for corrupt politicians or unfunny comedians.";
	wait for any key;
	say "[line break]Funeral November 2nd. Visitations, wake, etc. You don't care about that. You remember him as some guy who'd start an argument just to win it. The paper has his address--and you think back to long ago, when you and some friends walked by his parents['] house. Everyone pissed on the lawn, except you. It wasn't that you hadn't drunk enough Kool-Aid. You were just a bit scared to. Your friends punched you for that. (push any key)";
	wait for any key;
	say "[paragraph break]You googlestalk a bit first, see the notes on the message boards, how he plays the same tricks you remember from high school, a bit more refined now. You flip a coin. You flip it again when it doesn't fall as you like. And you walk over to his townhome. You remember it's Halloween, but it's well past trick-or-treat time, so you won't get an indecent exposure rap if you just finish business. The rain gets started as you do. Once done, you hide in the overhang by the front door--which swings open. The wind beats the rain against you. (push any key)";
	say "[paragraph break]You hear a voice. 'Dammit! Who is it now?' You tell him.[paragraph break]'Milo McNeeble? Oh. Yeah. It's me. Harley Drotz. But you knew that. What you didn't know is, I've been kept here to help people like you--to help you do better in life. Apparently I'll need to help a bunch of you without you knowing. Like I did in life. They tell me I'll help you in ways I don't know. Whatever. I'll get my reward after. Remember how I tried to help you out? With girls, with sports teams, with ambition, with getting in shape? No? I was tough but fair, wasn't I? Well, now's the chance to show me--or thank me--or give up.[paragraph break]'Oh, one more thing. Snap if you need me. I'm sort of forced to drop by. But don't waste time. I'm saying this for your own good. I'm also taking it easy. So don't feel too good if you win. This is part of my community service or whatever.'";
	wait for any key;

chapter snaping

snaping is an action applying to nothing.

understand the command "snap" as something new.

understand "snap" as snaping.

understand "snap [text]" as a mistake("Just plain SNAP instead.");

carry out snaping:
	if harley's is visible:
		say "No point with Harley here.";
	else:
		say "Harley's ghost appears[one of].[or]. 'You, again.'[or]. 'I hope there's a point to this.'[or]. 'Don't waste my time. Maybe you'll learn not to waste yours.'[cycling]";
		move harley's to location of player;
		now harley-bored is a random number between 5 and 5;
	the rule succeeds;

a concept is a kind of thing.

a concept can be nice, mean or neutral. a concept is usually neutral.

to decide what indexed text is arg of (cc - a concept):
	if cc is nice:
		decide on "+";
	if cc is mean:
		decide on "*";
	if cc is neutral:
		decide on "?";

girls is a concept. money is a concept. body shape is a concept. sport teams is a concept.

the Bowflex Machine is a fixed in place thing in Den. description is "It has a bar you can PULL, or you can SET the machine to a weight other than [setval of bowflex].". "A Bowflex machine, slightly disused, is here. It's currently set up for a lat-pull down. It has a bar you can pull down and is set to [setval of Bowflex]."

the bowflex has a number called setval. setval of bowflex is usually 140.

the bar is part of the bowflex. description is "The bar is narrow and horizontal and can be pulled down."

check pushing:
	try pulling noun instead;

does the player mean pulling the bar: it is very likely.

check pulling:
	if noun is bowflex:
		say "The Bowflex is too heavy, but you can pull the bar.";

instead of asking something about:
	say "Harley deftly changes the subject into how you're lousy at small talk or serious talk, and really, you need to SHOW not tell.";

understand "talk [text]" as a mistake ("Harley deftly changes the subject into how you're lousy at small talk or serious talk, and really, you need to SHOW not tell.")

understand "say [text]" as a mistake ("Harley deftly changes the subject into how you're lousy at small talk or serious talk, and really, you need to SHOW not tell.")

check pulling bar:
	if shape is not neutral:
		say "You've already 'discussed' your physical shape." instead;
	if setval of bowflex > 180:
		say "Too heavy for you. [if harley's is visible]Harley's ghost sniggers. 'Nice try, tough guy.'[else][line break][end if]" instead;
	if setval of bowflex < 150:
		say "It's easy. Too easy. [if harley's is visible]Harley's ghost yawns. He could do that, too.[else][line break][end if]" instead;
	if setval of bowflex < 170:
		say "It's kind of tough, but doable. [if harley's is visible]Harley's ghost yawns a bit. 'Big deal, I guess I could do that a few times.'[else][line break][end if]" instead;
	if Harley's is visible:
		say "Harley begins distracting you with how you can't keep that up, and so forth, but eventually he realizes that you've probably kept in better shape than he has. 'Okay, you're not in bad shape.' You gesture to where the weight was. 'Well, I was busy with my career, dude.' Still, you feel like you scored.";
		now harley-bored is 7;
		now shape is nice instead;
	else:
		say "You don't clank the weights enough for Harley to have to come by and see how well you're doing, but you have to admit you're doing pretty well.";
	the rule succeeds;

does the player mean numsetting bowflex to: it is very likely.

numsetting it to is an action applying to one thing and one number.

understand the command "set [something] to [number]" as something new.
understand "set [something] to [number]" as numsetting it to.

check numsetting:
	if noun is bar:
		say "(bar/bowflex)[line break]" instead;
		try numsetting bowflex to number understood instead;
	if noun is not bowflex:
		say "That doesn't work. You can only set the bowflex in the den." instead;
	if shape is not neutral:
		say "You already 'discussed' physical shape with Harley." instead;
	if number understood < 50 or number understood > 300:
		say "It only goes from 50 to 300." instead;
	if number understood is setval of bowflex:
		say "It already is." instead;
	if number understood > setval of bowflex:
		now setval of bowflex is the number understood;
		say "You crank the Bowflex up to [number understood] pounds[if harley's is visible]. Harley gives a mock approval[end if]." instead;
	if number understood < setval of bowflex:
		now setval of bowflex is the number understood;
		say "You crank the Bowflex down to [number understood] pounds[if harley's is visible]. Harley snickers[end if]." instead;

instead of attacking:
	if noun is harley's:
		say "He's incorporeal." instead;
	if noun is player:
		say "And join Harley for eternity? Hell no." instead;
	say "Vandalism.";

check requesting the score:
	repeat with Z running through concepts:
		say "On the subject of [Z], you [if Z is nice]were nice[else if z is neutral]proved nothing yet[else]were mean[end if] to Harley.";
	the rule succeeds;

after going when ghost was visible:
	say "'Can't win arguments by running.'";
	continue the action;

chapter logining

logining is an action applying to one visible thing.

understand the command "login" and "log in" and "log in as" and "login as" and "login to" and "log in to" as something new.

understand "login [any thing]" and "log in [any thing]" and "log in to [any thing]" and "login to [any thing]" as logining.

carry out logining:
	if money is not neutral:
		say "The living worry too much about money as is." instead;
	if noun is computer:
		say "Hm, but whom to log in as." instead;
	if noun is not a person:
		say "That doesn't work--log in as a person." instead;
	if noun is player:
		if location of player is not living room:
			say "Nothing to log into, here." instead;
		if computer is you-log:
			say "You already are." instead;
		say "[if computer is h-log]You log Harley out, then[else]You[end if] log yourself in.";
		now computer is you-log instead;
	if noun is ghost:
		if  pass-guess is false:
			say "You can't guess Harley's password." instead;
		if computer is h-log:
			say "You already are." instead;
		say "[if computer is you-log]You log yourself out, then[else]You[end if] log Harley in with the password you found on the paper.";
		now computer is h-log instead;
	the rule succeeds;

does the player mean logining player: it is very likely.

the computer is a thing in living room. the computer can be unlog, you-log or h-log. the computer is unlog.

description of computer is "[if computer is you-log]Your mortgage payments, ahead of schedule, are displayed here[else if computer is h-log]Harley's negative-equity mortgage and second mortgage are on display here[else]The computer's set to MondoBank's login page. The address bar is missing, so really, the only thing to do here is LOGIN[end if].";

instead of taking computer:
	say "You may pick up Harley's other stuff, but not his computer." instead;

every turn when number of neutral concepts is 0:
	say "The wind begins to blow. Whoos and ahs prevail. 'It is judgement time for you, Mr. McNeeble! Leave, with the knowledge I was not really trying and that you are lucky you are not the one dead with me rifling through your stuff[if number of carried things > 1]! Speaking of which, give me back mine![end if][if wthru is true]! Oh, and I think you had to cheat to get here. I don't know how, but you did.[end if]'[paragraph break]";
	do-the-end;

to do-the-end:
	repeat through table of endies:
		if goodies entry is number of nice concepts and meanies entry is number of mean concepts:
			if there is no endy entry:
				say "BUG. This should not have happened. Nice/mean [number of nice concepts]/[number of mean concepts].";
			else:
				say "[endy entry]";
			end the story;
			continue the action;
	say "BUG. This should not have happened. Nice/mean [number of nice concepts]/[number of mean concepts].";
	end the story;

table of endies
goodies	meanies	endy
0	0	"'Didn't even show me anything before running, eh?' You rationalize to yourself you don't need to. It would have been nice to shut Harley up just a little, but on the other hand, you won't be hearing from him again.[get-out]Well, you hope Navin has fun with Harley."
0	1	"You got one cheap shot in at Harley, and that is an infinitely higher percentage than you got in high school.[get-out]Maybe there are real live people you can punk and run away. You realize nothing's stopping you."
0	2	"The second time being mean wasn't as fun as the first. But you can see how people like Harley get hooked on just being mean to others because they can, blaming the other guy because he gets less fun to pick on. The heck with that noise.[get-out]You always had a feeling arguers weren't happy, but you're able to shut them out more easily now when you stumble past an argument."
0	3	"You've already done quite a number on Harley. Harley mentions there's a REASON you aren't arguing about [random neutral concept], but you let him stew. Like he did, when he didn't poke at EVERYTHING about you and left you to think.[get-out]Perhaps you were too harsh. But at least you did not twist the knife all the way."
0	4	"'Not bad, McNeeble,' says Harley. 'But you still have a lot of arguments to win before catching up with me. You told me what was what pretty good. I'm sure you like know stuff more than I do but you never cared enough. But maybe if you keep it up like this it'll be easier than you think.'[get-out]A couple weeks later you catch yourself winning arguments you don't need to, arguments you yourself started. It's--well, it's all for a good cause, right? For catching up a bit? You won't be this way forever. You think a bit, try to win the argument with yourself, and don't quite."
1	0	"You tried to go easy on Harley, but he did not seem to take the hint.[get-out]You have no clues if he knows you pissed on his lawn or not--or if Navin pissed on his lawn--but really, you just had to show he wasn't worth more than a token effort, to see if he'd gotten any nicer. He didn't. His problem."
1	1	"Well, you were nice to him once and mean to him once. He was just as obnoxious either way. Why prolong the experiment?[get-out]You remember being scared to try either approach in arguments way back when. You don't need to be, any more. Just take one and see what happens."
1	2	"You remember when Harley switched up nice and mean and left you to wonder about that last bit--no, it was fake nice and mean. On balance, you realize you're pretty comfortable with [random nice concept] and there's no need to press where you don't care.[get-out]. Maybe Navin will finish the job. Or maybe he will realize he doesn't need to."
1	3	"'Unable to finish the deal, there, McNeeble. You just couldn't give me the whole truth about [random nice concept] and win an argument by kayo. A miss is as good as a mile.'[get-out]You stop and think. Maybe you don't want to pour it on, but on the other hand, you don't want to be a total jerk. At any rate, you don't want to do that to most people. They won't be nearly as bad as Harley. But sometimes, they need it. Still, you don't want to BECOME them."
2	0	"You tried to be nice to Harley. Then you tried to be tactful again. But he just wouldn't stop fishing for a fight. Why waste energy? You're big on second chances but not third chances.[get-out]You always had a feeling arguers weren't happy, but you're able to shut them out more easily now when you stumble past an argument."
2	1	"You've tried your best to be nice to Harley, even though you had to trash him about [random mean concept]. Nobody's perfect. Really, there's more important stuff than [random neutral concept].[get-out]. Maybe Navin will find [random neutral concept] more interesting, or maybe his history with Harley is totally different. It doesn't matter--it's not your business. You can move on from real-life arguments a bit better now."
2	2	"'You always were wishy-washy, McNeeble. You think you're right in the center, but that's how you always lose arguments. Can't decide whether to be insulting or nice. It'll eat you up.'[get-out]You know Harley's right. You need to take a stand, have more conviction. But you also don't need to feel you owe thanks to Harley for helping show that. You can probably do what comes naturally and not go out of your way to be too mean or nice."
3	0	"You pause a second. Is it really worth arguing about [random neutral concept]? No. It's not. [harley-bait].[get-out]You reflect that it's important to complete stuff, only if the stuff is important. None of the arguments were."
3	1	"'A token effort to actually winning arguments, McNeeble. Almost worse than being a total nicenik. So you got me on [random mean concept]. But you never could do much more than that.'[get-out]You recognize you didn't quite stay focused on ntot lashing out. That's a problem. But you're confident you can do better. You realized, overall, you're not letting people get to you. And you can stand up for yourself without insulting someone. That's...something."
4	0	"Harley mansplains that although you had the upper hand, you just couldn't be bothered to take the obvious next step and actually win an argument. He was put back here to help people learn from him...and see how he is...and maybe you will see that. Is being happy, or saying you are, really enough? He's working hard to help you understand.[get-out]But of course you already have. You're beyond that, and it's good to have been able to prove that to yourself. Even if you can't prove it to some people that don't matter. You realize there are some. They will be out there."

to say harley-bait:
	say "Harley mentions there's a REASON you aren't arguing about [random neutral concept]"

to say get-out:
	say "'Hey! Out! I'm busy. Go! Go!'[paragraph break]As you go, you hear 'Got someone else to help. Yeah? Who're you? Oh. Navin McNoggleston. Yeah, I remember you. Listen, I was sent here to help people like you. People less exciting than me...I'll get my reward when I'm done. They said so.'[paragraph break]";

harley-bored is a number that varies. harley-bored is 6

every turn when harley's is not visible:
	now harley-bored is a random number between 4 and 6;

definition: a room (called xxx) is unoccupied:
	if xxx is location of player, no;
	if xxx is nothing, no;
	yes;

every turn when harley's is visible:
	if harley-bored is 0:
		say "'Geez, McNeeble. DO something,' says Harley. He disappears to another room. Well, he can't be far.";
		now harley's is in a random unoccupied room;
		the rule succeeds;
	if harley-bored < 7:
		say "Harley [one of]reminds you of a class he got a higher grade in than you[or]reminds you of a class where you got a higher grade but probably learned less about life[or]says he doesn't expect you to be fun, but at least TRY, geez[or]tells you there's still time to get a life[or]asks you to hurry up, for your own good[or]reminds you of the time even stupid people laughed with him at you[or]asks why you whispered secrets about a friend and why he whispered them about you. Then he supplies details[stopping].";
	decrement harley-bored;

[[or]taps a ghostly foot[or]hums a ghostly tune[or]sighs a ghostly sigh[or]howls a ghostly howl[or]whirls around and through things[in random order].";]

check taking picture of fran:
	say "Best keep it in your wallet." instead;

section errors

Rule for printing a parser error when the latest parser error is the I beg your pardon error:
	say "[if harley's is visible]Harley sighs, exasperated[else]You think a minute while Harley is in another room[end if]."

Rule for printing a parser error when the latest parser error is the didn't understand error:
	say "Sorry, I didnt understand that. The main commands are to look, examine, SNAP for Harley, or SHOW him something. You can also [if player is in living room]LOGIN to the computer[else if player is in den]SET the bowflex to a number[else]use different commands for specific thing in other rooms[end if]. If you're desperate, WALKTHROUGH."

Rule for printing a parser error when the latest parser error is the not a verb I recognise error:
	say "Sorry, I didnt understand that. The main commands are to look, examine, SNAP for Harley, or SHOW him something[if player is in living room]. You can also LOGIN to the computer[end if][if player is in den]. You can also SET the bowflex to a number[end if]. If you're desperate, WALKTHROUGH."

chapter walkthroughing

wthru is a truth state that varies.

walkthroughing is an action out of world.

understand the command "walkthrough/hint/help" as something new.

understand "walkthrough" and "hint" and "help" as walkthroughing.

carry out walkthroughing:
	say "Do you wish to see the ways to win each remaining argument?";
	if the player consents:
		now wthru is true;
		if sport teams is neutral, say "Sports: show jersey from under bed or sports page from newspaper.";
		if shape is neutral, say "Weight: show diet pills from under bed or SET BOWFLEX TO 175 and PULL BAR.";
		if money is neutral, say "Money: LOGIN as Harley (password under bed) or yourself, then show computer.";
		if sport teams is neutral, say "Love life: show Dear John letter from under bed, or picture of Fran.";
		do nothing instead;
	say "Do you wish to see all 15 possible endings?";
	if the player consents:
		now wthru is true;
		say "s.y 0/0[line break]show fran to harley.s.y 1/0[line break]show fran to harley.show sports to harley.s.y 2/0[line break]show fran to harley.show sports to harley.n.login me.snap.show computer to harley.s.s.y 3/0[line break]show fran to harley.show sports to harley.w.n.set bowflex to 175.snap.pull bar.e.login me.snap.show computer to harley 4/0[line break]show fran to harley.w.l under bed.snap.show pills.e.s.y 1/1[line break]show fran to harley.w.l under bed.snap.show pills.show jersey.e.s.y 1/2[line break]show fran to harley.show sports to harley.w.l under bed.snap.show pills.e.s.y 2/1[line break]w.l under bed.snap.show jersey to harley.e.s.y 0/1[line break]w.l under bed.snap.show jersey to harley.show pills to harley.e.s.y 0/2[line break]w.l under bed.snap.show jersey to harley.show pills to harley.show letter to harley.e.s.y 0/3[line break]w.l under bed.snap.show jersey to harley.show pills to harley.show letter to harley.x password.n.e.login harley.snap.show computer to harley 0/4[line break]w.l under bed.snap.show pills.show jersey.show letter.n.e.snap.login me.show computer to harley 1/3[line break]show fran to harley.show sports to harley.w.l under bed.snap.show pills to harley.x slip.n.e.login harley.snap.show computer to harley 2/2[line break]show fran to harley.show sports to harley.w.l under bed.snap.show pills to harley.n.e.login me.snap.show computer to harley 3/1[line break]" instead;
	the rule succeeds.

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "This game was originally submitted to EctoComp 2013. It had no testers.[paragraph break]It's basically about one's own fears dealing with a jerk, and how much those fears matter, and how to deal with that.[paragraph break]ClubFloyd members DavidW, Genericgeekgirl, and others played this game and pointed out some bugs and missed implementations. I'm also grateful to fellow EctoComp contestants who provided feedback and ideas and encouragement. If you're interested in writing a brief text adventure, whether you've done so before or not, EctoComp is totally a great venue for that.";
	the rule succeeds;

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "You remember Harley snickering about some in-joke while excoriating nerd trivia. You know how to work around that now, but MAN, that hurt back in the day.";
	the rule succeeds;

volume debug - not for release

when play begins:
	now debug-state is true;

volume tests - not for release

test 00 with "s/y"

test 10 with "show fran to harley/s/y"

test 20 with "show fran to harley/show sports to harley/s/y"

test 30 with "show fran to harley/show sports to harley/n/login me/snap/show computer to harley/s/s/y"

test 40 with "show fran to harley/show sports to harley/w/n/set bowflex to 175/snap/pull bar/e/login me/snap/show computer to harley"

test 11 with "show fran to harley/w/l under bed/snap/show pills/e/s/y"

test 12 with "show fran to harley/w/l under bed/snap/show pills/show jersey/e/s/y"

test 21 with "show fran to harley/show sports to harley/w/l under bed/snap/show pills/e/s/y"

test 01 with "w/l under bed/snap/show jersey to harley/e/s/y"

test 02 with "w/l under bed/snap/show jersey to harley/show pills to harley/e/s/y"

test 03 with "w/l under bed/snap/show jersey to harley/show pills to harley/show letter to harley/e/s/y"

test 04 with "w/l under bed/snap/show jersey to harley/show pills to harley/show letter to harley/x password/n/e/login harley/snap/show computer to harley"

test 13 with "w/l under bed/snap/show pills/show jersey/show letter/n/e/snap/login me/show computer to harley"

test 22 with "show fran to harley/show sports to harley/w/l under bed/snap/show pills to harley/x slip/n/e/login harley/snap/show computer to harley"

test 31 with "show fran to harley/show sports to harley/w/l under bed/snap/show pills to harley/n/e/login me/snap/show computer to harley"
