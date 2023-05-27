extends Sprite2D

var totalFrames=10
@onready var animatedSprite= $AnimationPlayer

var currentFrame=0
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _input(event):
	if event is InputEventMouseButton:
		var mouse_event = event as InputEventMouseButton
		if mouse_event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			animatedSprite.play_backwards("muda")
		elif mouse_event.button_index == MOUSE_BUTTON_WHEEL_UP:
			animatedSprite.play("muda")


func _on_frame_changed():
	animatedSprite.pause()
	pass # Replace with function body.
