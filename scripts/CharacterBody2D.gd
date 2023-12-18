extends CharacterBody2D

@export var speed: int = 100

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

func Idle(direction):
	match direction:
		Vector2.DOWN: $Sprite2D.frame = 0
		Vector2.LEFT: $Sprite2D.frame = 1
		Vector2.RIGHT: $Sprite2D.frame = 2
		Vector2.UP: $Sprite2D.frame = 3

#func update_player_animation():
#	animation needed
