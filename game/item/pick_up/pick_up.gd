extends Node2D

@export var slot_data: SlotData
@onready var sprite_2d = $Sprite2D

func _ready() -> void:
	sprite_2d.texture = slot_data.item_data.texture

func _physics_process(_delta) -> void:
	pass # może jakaś animacja migotania itemu jak leży

func _on_area_2d_body_entered(body):
	#if Input.is_action_just_pressed("ui_cancel") \
			#and body.inventory_data.pick_up_slot_data(slot_data):
	if body.inventory_data.pick_up_slot_data(slot_data):
		queue_free()
