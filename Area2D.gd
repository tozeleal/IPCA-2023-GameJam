extends Area2D
enum{
	wander,
	jump
}
var state=wander
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func seek_player():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	match state:
		wander:
			pass
		jump:
			pass
