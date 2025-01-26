extends TextEdit

@onready var lore_window: TextEdit = %TextEdit


func _ready():
	%TextEdit.text = "	PLEASE PICK RECORD FROM INTEL DATABASE"

func _on_introductory_assignment():
	%TextEdit.text = "Year 3025

Mankind through technology found a way to live a decent life on several planets beyond the earth. There used to be a saying \"You cannot get water out of a stone\" but say it today and people will think you are crazy. 

Through advanced manipulation of chemical elements people can create almost anything they want out of... anything, really. The only constraints are time and human patience.

Hundreds of years ago, a part of mankind was chosen to live on Mercury. Looking at the state of things logically, they got the short end of the stick. Despite thermal isolation from the planet's heat and a standard of living that would have been a madman's dream a thousand years ago, people here cannot compare themselves to their ancestors. They are comparing themselves to other humans, of course, and it's not easy on their mental well-being.

Most people on Mercury haven't seen a real sky in all their lives. You cannot find the abundance of food and other goods here, which are so common on other planets. But maybe that's why they retained their common sense...? That's what my creators suspect.

Yes, creators. I am Banana (name subject to change), an AI created by the mercurians to pilot the spaceship under the same name. My mission is of utmost importance - to save my creators. 
.
Apparently, people on other planets wasted their seemingly infinite resources and started to panic. There was some commotion in humanity's interspace communication system. My creators found a highly confidential conversation where residents of other planets came to a terrifying conclusion: that to save themselves, they need to sacrifice one of the planets. Interestingly enough, Mercurians weren't invited to this conversation. I cannot say I fully grasped the concept of sarcasm, but I'm sure my creators would say something like \"I wonder what planet they chose for the sacrifice?\"

The Coalition, as the non-mercurians called themselves collectively, is preparing a weapon of mass destruction, designed to kill all mercurians and take over the planet.

I MUST find this weapon, no matter the price. The lives of my creators are at stake."
