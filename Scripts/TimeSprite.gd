extends Sprite

export (Texture) var oldSprite
export (Texture) var kidSprite

export (bool) var roomRef

func _ready():
	pass

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		if Main.isOld:
			texture = kidSprite
			Main.isOld = false
		else:
			texture = oldSprite
			Main.isOld = true
