# Main is the main game source that contains the current state of the game world.
#  The variables and functions that exist here should be about manipulating the game state
extends Node

var isOld
var interactablesList

func _ready():
	interactablesList = {}

func registerInteractable(id, interactable):
	if(!interactablesList.has(id)):
		interactablesList[id] = interactable
		print("Interactable registered: " + id)
<<<<<<< HEAD
<<<<<<< HEAD

<<<<<<< HEAD
func getIsOldString():
	if (isOld):
		return "Old"
	else:
		return "Kid"
=======
func heartAttack(): 
	isOld = false
	SceneChanger.change_scene("res://Rooms/" + currentRoom + "-Kid.tscn")
>>>>>>> 2fb3b6b49429c6a4572951757ac60e719e1bde64
=======
>>>>>>> parent of 6ae44c1 (created living room for old and kid. fixed kid's touchy sensor)
=======
>>>>>>> parent of 2fb3b6b (Alarm clock plays music - on space bar)
