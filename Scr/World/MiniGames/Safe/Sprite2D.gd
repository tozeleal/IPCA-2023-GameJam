extends Sprite2D

@onready var animatedSprite= $AnimationPlayer

var mouseIn = false
var value = 1

enum{
	WheelDown,
	WheelUp,
	Stop
}
var wheelState = Stop

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	print(wheelState)
	print(value)
	
	if wheelState == WheelDown:
		value -= 1
		animatedSprite.play_backwards("muda")
	elif wheelState == WheelUp:
		value += 1
		animatedSprite.play("muda")
		
	wheelState = Stop

func _input(event):
	if mouseIn and event is InputEventMouseButton:
		var mouse_event = event as InputEventMouseButton
		if mouse_event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			wheelState = WheelDown
		if mouse_event.button_index == MOUSE_BUTTON_WHEEL_UP:
			wheelState = WheelUp


func _on_frame_changed():
	animatedSprite.pause()
	pass # Replace with function body.


func _on_area_2d_mouse_entered():
	mouseIn = true


func _on_area_2d_mouse_exited():
	mouseIn = false
