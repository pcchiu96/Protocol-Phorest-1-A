extends "res://Rooms/Interactable.gd"

export (String) var roomname

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		get_node("InspectIcon").visible = true
		
		SceneChanger.change_scene("res://Rooms/" + roomname + "-"+  Main.getIsOldString() +".tscn")
		
func interactHover():
	get_node("InspectIcon").visible = true
	
func interactLeave():
	get_node("InspectIcon").visible = false
