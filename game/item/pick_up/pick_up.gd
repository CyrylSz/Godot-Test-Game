extends Node2D

@export var slot_data: SlotData
@onready var sprite_2d = $Sprite2D
var is_within_range := false
var entered_body = null

func _ready() -> void:
	sprite_2d.texture = slot_data.item_data.texture

func _physics_process(_delta) -> void:
	if entered_body and Input.is_action_just_pressed("interact"):
		if entered_body.inventory_data.pick_up_slot_data(slot_data):
			queue_free()

func _on_area_2d_body_entered(body):
	entered_body = body

func _on_area_2d_body_exited(_body):
	entered_body = null
