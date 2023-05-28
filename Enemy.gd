
extends CharacterBody2D

var speed = 40
var motion = Vector2(0, 0)

@onready var p = $"Sprite2D/AnimationPlayer"
var go = false

func _physics_process(_delta):
	if go:
		motion = position.direction_to(p.position) * speed
	move_and_collide(motion)

func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		go = true
