extends Node

var isOld
var interactablesList

func _ready():
	interactablesList = {}

func registerInteractable(id, interactable):
	if(!interactablesList.has(id)):
		interactablesList[id] = interactable
		print("Interactable registered: " + id)
