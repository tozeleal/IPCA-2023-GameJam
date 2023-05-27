extends Sprite2D

var count=0
var x=100
var input
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	x=x+1
	if(x%100==0):
		print(count)
	
func _input(event):
	if event is InputEventMouseButton:
		var mouse_event = event as InputEventMouseButton
		if mouse_event.button_index == MOUSE_BUTTON_WHEEL_DOWN and count >= 1:
			count -= 1
		elif mouse_event.button_index == MOUSE_BUTTON_WHEEL_UP and count <= 8:
			count += 1
	
	

