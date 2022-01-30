extends Area2D

var hasTriggered

# Called when the node enters the scene tree for the first time.
func _ready():
	hasTriggered = false

func _physics_process(delta):
	for body in get_overlapping_areas():
		if(!hasTriggered && body.has_method("isTouchySensor")):
			hasTriggered = true
			var animPlayer = find_node("AnimationPlayer")
			animPlayer.play("BurglerAttack")
			triggerAutoInteract()

func triggerAutoInteract():
	#if(Main.gameData["WindowState"] != Main.gameData["SafeWindowState"]):
	#	Main.heartAttack(1.5)
	Main.heartAttack(1.5)
