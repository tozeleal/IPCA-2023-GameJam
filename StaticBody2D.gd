extends StaticBody2D


var x=1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	x+=1
	print(x)
	if(x%200==0):
		print("a")
		position.x=-200
	if(x==250):
		print("b")
		position.x=-50
		x=1
	
