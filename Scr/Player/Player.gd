extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -600.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

enum{
	MOVE_RIGHT,
	MOVE_LEFT
}
var state = MOVE_RIGHT

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += (gravity + 100) * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction < 0 && state != MOVE_LEFT:
		state = MOVE_LEFT
		scale.x *= -1
	elif direction > 0 && state != MOVE_RIGHT:
		state = MOVE_RIGHT
		scale.x *= -1
		

	move_and_slide()

func savePosition():
	SceneManager.PlayerPosition = position
