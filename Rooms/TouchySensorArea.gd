extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#a list of objects that have been interacted with for clean up
var interactedHover = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	var overlappingBodies = get_overlapping_bodies()
	var cleanUpHoverList = []
	
	for body in interactedHover:
		if(!overlappingBodies.has(body)):
			print("Remove")
			body.interactLeave()
			cleanUpHoverList.append(body)
	
	for body in overlappingBodies:
		if(!interactedHover.has(body) && body.has_method("interactHover")):
			print("interactHover")
			body.interactHover()
			interactedHover.append(body)
			
	for body in cleanUpHoverList:
		interactedHover.erase(body)
			
