extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func displayDialog(text):
	Main.isFrozen = true
	visible = true
	find_node("DialogText").bbcode_text = text
	$AnimationPlayer.play("DialogAnimation")
	
	
func optionSelect(selectionString):
	Main.isFrozen = false
	visible = false

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		Main.isFrozen = false
		visible = false
