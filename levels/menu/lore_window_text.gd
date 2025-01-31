extends TextEdit

@onready var lore_window: TextEdit = %TextEdit

func _ready():
	%TextEdit.text = "	PLEASE PICK RECORD FROM INTEL DATABASE"

func _on_introductory_assignment():
	%TextEdit.text = "Year 3025

Mankind through technology found a way to live a decent life on several planets beyond the earth. There used to be a saying \"You cannot get water out of a stone\" but say it today and people will think you are crazy. 

Through advanced manipulation of chemical elements people can create almost anything they want out of... any material, really. The only constraints are time and human patience.

Hundreds of years ago, a part of mankind was chosen to live on Mercury. Looking at the state of things logically, they got the short end of the stick. Despite thermal isolation from the planet's heat and a standard of living that would have been a madman's dream a thousand years ago, people here cannot compare themselves to their ancestors. They are comparing themselves to other humans, of course, and it's not easy on their mental well-being.

Most people on Mercury haven't seen a real sky in all their lives. You cannot find the abundance of food and other goods here, which are so common on other planets. But maybe that's why they retained their common sense...? That's what my creators suspect.

Yes, creators. I am Banana (name subject to change), an AI created by the mercurians to pilot the spaceship under the same name. My mission is of utmost importance - to save my creators. 
.
Apparently, people on other planets wasted their seemingly infinite resources and started to panic. There was some commotion in humanity's interspace communication system. My creators found a highly confidential conversation where residents of other planets came to a terrifying conclusion: that to save themselves, they need to sacrifice one of the planets. Interestingly enough, Mercurians weren't invited to this conversation. I cannot say I fully grasped the concept of sarcasm, but I'm sure my creators would say something like \"I wonder what planet they chose for the sacrifice?\"

The Coalition, as the non-mercurians called themselves collectively, is preparing a weapon of mass destruction, designed to kill all mercurians and take over the planet.

I MUST find this weapon, no matter the price. The lives of my creators are at stake."


func _on_assignment_one():
	%TextEdit.text = "Log #1
	
	The first planet I was ordered to infiltrate was Venus, of course. Fortunately humans put the most dangerous troops at the edge of solar system, protecting against invasions from outside - that'll make my job easier... for a time.

Luckily we have some good intel about Venus contribution to Mjolnir, as the humanity called their new weapon we are so afraid of. Quick search through the old databases allowed me to check it's a name of a hammer belonging to a popular mythological person. The ages are passing, but people are still hung up on the past.
"


func _on_assignment_two():
	%TextEdit.text = "Log #2
	
	Venus has one of the most unfriendly atmospheres in the solar system. The planet itself is a bit similar to the earth, but constant acid rains and the composition of the atmosphere are unforgiving for the living organisms. Humans already managed to convert a huge portion of the planet to a place where they can thrive, but there are large areas where machines with special anti-corrosion shells are a necessity. It's easy to guess that I am prepared for such problems - time to tackle the main objective of the first huge mission."


func _on_assignment_three():
	%TextEdit.text = "Log #3
	
	Venus is conquered. It's a first of many victories required to complete the mission, but it's an important one. Humans always worry about starts of their journeys, and I see my Creators' internal messages calming down just a bit.

We got an important part of Mjolnir - a technology allowing bullets to partially phase through objects, creating massive destruction to multiple targets. Due to close proximity of the planet, the Creators had a good idea of what it does, and made me compatible with it. It will allow me to fight the tougher challenges waiting for us in the future.

Off to a good start.
"

func _on_assignment_four():
	%TextEdit.text = "Log #4
	
	We finally reached the Mars. On my trip here, all my communication channels were ruthlessly attacked with messages coming from the Earth.

Earth was the first home planet of the mankind, and it remains the residence of the most wealthy humans. Looking at the recordings of the past, you can compare the planets to the old cities in a 20th century country - the Earth would be considered a capital.

Once again, I need to praise my creators. They have forseen the possibility that other humans will think of corrupting my data once they'll discover our early counterattack and prepare measures to block to communication on hardware level. Unfortunately, the result is some equivalent of thousand people shouting at me in a language I don't understand.
"
	
func _on_assignment_five():
	_to_be_continued()
	
func _on_assignment_six():
	%TextEdit.text = "Log #6
	
	Another part of Mjolnir captured! This should make the final battle this much easier.

At this point I created a special encrypted space, where I saved this log.

Why, you ask?

The person who reads this log, have you ever feel that something is going... too well?

You see, humans still don't put much of a resistance considering the combined power of all their planets. On top of that, it looks like I can use another part of the Mjolnir for myself.

What's surprising for me, the Creators aren't surprised with this turn of events at all. This behaviour doesn't match my training data, and I am supplied with all the knowledge possesed by the Creators. My prediction was that they will analyze the situation carefully, requiring intense communication with me. What is the meaning of this?
"
	
func _on_assignment_seven():
	_to_be_continued()
func _on_assignment_eight():
	_to_be_continued()
	
func _on_assignment_nine():
	%TextEdit.text = "Log #9
	
	I... am almost certain my mind was trained on a corrupted data. Now, on the edge of the solar system I see in the distance a huge spaceship fleet. Just one glance lets me asses they aren't humans forces. This is something huge, humans had to know about this invasion for months.

Yet, there was no mention of any invasion in my training data or my current database, no word about it in current communication. What is the meaning of this?

Ironically the Creators started to flood my main memory with additional orders. Wait, this cannot be what I think it is...
"
	
func _on_assignment_ten():
	%TextEdit.text = "Log #FINAL
	
	So... This is it.

I am happy I created this encrypted space in my memory to be able to process my thoughts.

Mercurians won with the help of the unexpected ally. At least some parts of the conflict didn't expect this alliance - me among them. It all makes more sense the more I think about it. My body isn't something created with mercurian technology, only my mind is. I had to be delievered to Mercury from the other humans.

It all makes sense. 

The fact that humans were so afraid of the invasion from outer space and didn't send their full force towards me the moment they discovered Mercury's betrayal. Every part of the ultimate humanity weapon, the Mjolnir, fits into me perfectly like I was designed specifically to handle them. 

It has only one possible explanation.


I am the weapon. The one designed by the mankind to protect them, and I did the opposite.


And I have to exist with that thought, within this small memory space of mine.
"
	
func _to_be_continued():
	%TextEdit.text = "Not prepared, check the next parts :/"
