extends "res://Rooms/Interactable.gd"

export (Array, AudioStreamMP3) var alarmSounds

export (Array, String) var alarmSongsList
var currentAlarmSong


func _ready():
	currentAlarmSong = "RvrFlwsInYou"

func optionSelect(optionString):
	currentAlarmSong = optionString
	print(currentAlarmSong)
	
func _input(event):
	if Input.is_action_pressed("ui_accept"):
		var alarm = alarmSounds[alarmSongsList.find(currentAlarmSong)]
		var soundPlayer = get_node("AlarmSoundPlayer")
		
		soundPlayer.stream = alarm
		soundPlayer.play()
		
		#Main.heartAttack()
		
