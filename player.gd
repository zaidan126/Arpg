extends CharacterBody2D
@export var speed=25
@onready var animation=$AnimationPlayer
func handleinput():
	var movedirection=Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity=movedirection*speed
	
func update_animation():
	if velocity.length()==0:
		animation.stop()
	else:
		var direction="Down"
		if velocity.x<0: direction="Left"
		elif  velocity.x>0: direction="Right"	
		elif  velocity.y<0: direction="Up"
		animation.play(direction)
func _physics_process(delta):
	handleinput()
	move_and_slide()
	update_animation()

