extends Node2D

var speed = 40

@onready var p = get_node("Player")
@onready var e = get_node("enemy")
var go = false

func _physics_process(_delta):
	if go:
		var motion = e.position.direction_to(p.position) * speed
		e.move_and_slide(motion)

func _on_area_2d_body_entered(body):
	if body.has_method("Player"):
		go = true
