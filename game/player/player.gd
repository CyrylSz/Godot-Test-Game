extends CharacterBody2D

signal toggle_inventory()

@export var inventory_data: InventoryData
@export var SPEED := 550
@export var equip_inventory_data: InventoryDataEquip
@onready var interact_ray = $Camera/InteractRay
var ZOOM_SPEED: Vector2 = Vector2(0.001, 0.001)
var ZOOM_MIN: Vector2 = Vector2(0.5, 0.5)
var ZOOM_MAX: Vector2 = Vector2(1.0, 1.0)
var health: int = 5
var rotationSpeed := 8.0

func _ready() -> void:
	PlayerManager.player = self

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
	
	if Input.is_action_just_pressed("inventory"):
		toggle_inventory.emit()
	
	if Input.is_action_just_pressed("interact"):
		interact()

func _process(delta):
	var direction: Vector2 = Input.get_vector("left","right","up","down").normalized()
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()
	
	rotateToTarget(get_global_mouse_position(), delta)
	
	if Input.is_action_pressed("zoom_out"): $Camera.zoom = Vector2(min($Camera.zoom.x + ZOOM_SPEED.x, ZOOM_MAX.x), min($Camera.zoom.y + ZOOM_SPEED.y, ZOOM_MAX.y))
	elif Input.is_action_pressed("zoom_in"): $Camera.zoom = Vector2(max($Camera.zoom.x - ZOOM_SPEED.x, ZOOM_MIN.x), max($Camera.zoom.y - ZOOM_SPEED.y, ZOOM_MIN.y))

func rotateToTarget(target: Vector2, delta) -> void:
	var direction = (target - global_position)
	var angleTo = $".".transform.x.angle_to(direction)
	$".".rotate(sign(angleTo) * min(delta * rotationSpeed, abs(angleTo)))

func interact() -> void:
	if interact_ray.is_colliding():
		interact_ray.get_collider().player_interact()

func get_drop_position() -> Vector2:
	return interact_ray.global_position

func heal(heal_value: int) -> void:
	health += heal_value
