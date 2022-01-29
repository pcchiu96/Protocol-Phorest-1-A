extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
var touchySensor = Vector2()
var direction
var directionOffset = 40

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		direction = "right"
		velocity.x += 1
		touchySensor.x = directionOffset
		touchySensor.y = 0
		$Sprite.flip_h = true
		$AnimationPlayer.play("Run Right")
	if Input.is_action_pressed("left"):
		direction = "left"
		velocity.x -= 1
		touchySensor.x = -1 * directionOffset
		touchySensor.y = 0
		$Sprite.flip_h = false
		$AnimationPlayer.play("Run Left")
	if Input.is_action_pressed("down"):
		velocity.y += 1
		touchySensor.x = 0
		touchySensor.y = 1
		if (direction == "right"):
			$AnimationPlayer.play("Run Right")
		else:
			$AnimationPlayer.play("Run Left")
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		touchySensor.x = 0
		touchySensor.y = -1 * directionOffset
		if (direction == "right"):
			$AnimationPlayer.play("Run Right")
		else:
			$AnimationPlayer.play("Run Left")
	if (velocity.x == 0 and velocity.y == 0):
		$AnimationPlayer.play("Idle")
		
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	$Front.position = touchySensor
	
	
