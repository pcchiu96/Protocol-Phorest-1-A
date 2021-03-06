extends "res://Rooms/Interactable.gd"

export (Array, AudioStreamMP3) var alarmSounds

export (Array, String) var alarmSongsList


func _ready():
	pass

func optionSelect(optionString):
	Main.gameData["SelectedAlarm"] = optionString
	print(Main.gameData["SelectedAlarm"])
	
	Main.growUp(0.5)
		
func triggerAutoInteract():
	var alarm = alarmSounds[alarmSongsList.find(Main.gameData["SelectedAlarm"])]
	var soundPlayer = get_node("AlarmSoundPlayer")
		
	soundPlayer.stream = alarm
	soundPlayer.play()
	print("Play sounds")
	if(Main.gameData["SelectedAlarm"] != Main.gameData["SafeAlarm"]):
		Main.heartAttack(1.5)
