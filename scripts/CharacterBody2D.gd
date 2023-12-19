extends CharacterBody2D

@export var speed: int = 100

var zoom_speed: Vector2 = Vector2(0.1, 0.1)
var zoom_min: Vector2 = Vector2(0.5, 0.5)
var zoom_max: Vector2 = Vector2(1.0, 1.0)

#func _ready():
	#var anim_sprite: Sprite2D = $Sprite2D
	#var anim: AnimationPlayer = $AnimationPlayer
	#var anim_tree: AnimationTree = $AnimationTree

func _process(_delta):
	var direction: Vector2 = Input.get_vector("left","right","up","down").normalized()
	if direction: velocity = direction * speed
	else: velocity = Vector2.ZERO
	Idle(direction)
	move_and_slide()
	
	if Input.is_action_pressed("scroll_in"): $Camera.zoom = Vector2(min($Camera.zoom.x + zoom_speed.x, zoom_max.x), min($Camera.zoom.y + zoom_speed.y, zoom_max.y))
	elif Input.is_action_pressed("scroll_out"): $Camera.zoom = Vector2(max($Camera.zoom.x - zoom_speed.x, zoom_min.x), max($Camera.zoom.y - zoom_speed.y, zoom_min.y))
	

func Idle(direction):
	match direction:
		Vector2.DOWN: $Sprite2D.frame = 0
		Vector2.LEFT: $Sprite2D.frame = 1
		Vector2.RIGHT: $Sprite2D.frame = 2
		Vector2.UP: $Sprite2D.frame = 3

#func update_player_animation():
#	animation needed
