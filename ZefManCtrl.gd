extends CharacterBody2D
class_name ZefManCtrl

var speed := 100
var movement_direction := Vector2.ZERO

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		movement_direction = Vector2(1, 0)
	if Input.is_action_pressed('ui_left'):
		movement_direction = Vector2(-1, 0)
	if Input.is_action_pressed('ui_up'):
		movement_direction = Vector2(0, -1)
	if Input.is_action_pressed('ui_down'):
		movement_direction = Vector2(0, 1)
		
	velocity = movement_direction * speed

func _physics_process(delta):
	get_input()

	move_and_slide()
