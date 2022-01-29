# Main is the main game source that contains the current state of the game world.
#  The variables and functions that exist here should be about manipulating the game state
extends Node

var isOld
var interactablesList

func _ready():
	interactablesList = {}
	isOld = true

func registerInteractable(id, interactable):
	if(!interactablesList.has(id)):
		interactablesList[id] = interactable
		print("Interactable registered: " + id)

func getIsOldString():
	if (isOld):
		return "Old"
	else:
		return "Kid"
