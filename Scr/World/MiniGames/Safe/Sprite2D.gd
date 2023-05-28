extends Sprite2D

@onready var animatedSprite= $AnimationPlayer

var mouseIn = false
var value = 1

enum{
	WheelUp,
	Stop
}
var wheelState = Stop

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if value == 9:
		value = 0

var first = true
var second2 = true

func _input(event):
	if mouseIn and event is InputEventMouseButton and wheelState == Stop:
		var mouse_event = event as InputEventMouseButton
		if mouse_event.button_index == MOUSE_BUTTON_LEFT:
			wheelState = WheelUp
		wheelMove()


func wheelMove():
	if wheelState == WheelUp:
		wheelState = Stop
		value += 0.5
		if first:
			value = -0.5
		elif second2:
			second2 = false
		
		if !first:
			animatedSprite.play("muda")
		first = false

func _on_frame_changed():
	animatedSprite.pause()
	pass # Replace with function body.


func _on_area_2d_mouse_entered():
	mouseIn = true


func _on_area_2d_mouse_exited():
	mouseIn = false
