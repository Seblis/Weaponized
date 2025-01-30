extends TextEdit

@onready var lore_window: TextEdit = %TextEdit

var lore_intro = [
	"The first planet I was ordered to infiltrate was venus, of course. Fortunately humans put the most dangerous troops at the edge of solar system, protecting against invasions from outside - that'll make my job easier... for a time.

Luckily we have some good intel about Venus contribution to Mjölnir, as the humanity called their new weapon we are so afraid of. Quick search through the old databases allowed me to check it's a name of a hammer belonging to a popular mythological person. The ages are passing, but people are still hung up on the past.
",


"Venus has one of the most unfriendly atmospheres in the solar system. The planet itself is a bit similar to the earth, but constant acid rains and the composition of the atmosphere are unforgiving for the living organisms. Humans already managed to conver a huge portion of the planet to a place where they can thrive, but there are large areas where machines with special anti-corrosion shells are a necessity. It's easy to guess that I am prepared for such problems - time to tackle the main objective of the first huge mission.",


"Venus is conquered. It's a first of many victories required to complete the mission, but it's an important one. Humans always worry about starts of their journeys, and I see my Creators' internal messages calming down just a bit.

We got an important part of Mjölnir,  description_of_the_first_upgrade. Due to close proximity of the planet, the Creators had a good idea of what it does, and made me compatible with it. It will allow me to fight the tougher challenges waiting for us in the future.

Off to a good start.
"
]

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
