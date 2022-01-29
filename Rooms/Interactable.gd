extends CollisionShape2D

# id of the interactable used to register into game variables
export (String) var id

# Called when the node enters the scene tree for the first time.
func _ready():
	Main.registerInteractable(id, self)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
