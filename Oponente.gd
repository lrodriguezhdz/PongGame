extends KinematicBody2D

var speed=800
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ball

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	ball = get_parent().find_node("Ball")
	
func _physics_process(delta):
	var direction = Vector2(0,_get_direction())
	move_and_slide(direction * speed)	

func _get_direction():
	if abs(ball.position.y-position.y) > 25:
		if ball.position.y>position.y:
			return 1
		else:
			return -1	
		
	else:
		return 0
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
