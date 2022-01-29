extends StaticBody2D

# id of the interactable used to register into game variables
export (String) var id

var inspectorID

# Called when the node enters the scene tree for the first time.
func _ready():
	Main.registerInteractable(id, self)

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		get_node("InspectIcon").visible = true
		
func interactHover():
	get_node("InspectIcon").visible = true
	
func interactLeave():
	get_node("InspectIcon").visible = false
	
	
