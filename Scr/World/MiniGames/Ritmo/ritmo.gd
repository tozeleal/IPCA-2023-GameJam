extends Node2D

@onready var maxY = 365 - 668 / 2 + 128 / 2
@onready var minY = 348 + 668 / 2 - 128 / 2
@onready var MovObj1 = get_node("MovingObject")
@onready var MovObj2 = get_node("MovingObject2")
@onready var MovObj3 = get_node("MovingObject3")
@onready var MiddleArea1 = get_node("PlaceHolderMiddle")
@onready var MiddleArea2 = get_node("PlaceHolderMiddle2")
@onready var MiddleArea3 = get_node("PlaceHolderMiddle3")

var speed1 = 20
var speed2 = -45
var speed3 = 49

enum MoveDirection{
	moveUp,
	moveDown,
	still
}

var moving1 = MoveDirection.moveDown
var moving2 = MoveDirection.moveUp
var moving3 = MoveDirection.moveDown
var moving1Previous = MoveDirection.moveDown
var moving2Previous = MoveDirection.moveUp
var moving3Previous = MoveDirection.moveDown

var won = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving1 != MoveDirection.still:
		var obj1 = moveObj(MovObj1, speed1, moving1, moving1Previous)
		speed1 = obj1[0]
		moving1 = obj1[1]
		moving1Previous = obj1[2]
		
	
	if moving2 != MoveDirection.still:
		var obj2 = moveObj(MovObj2, speed2, moving2, moving2Previous)
		speed2 = obj2[0]
		moving2 = obj2[1]
		moving2Previous = obj2[2]
	
	if moving3 != MoveDirection.still:
		var obj3 = moveObj(MovObj3, speed3, moving3, moving3Previous)
		speed3 = obj3[0]
		moving3 = obj3[1]
		moving3Previous = obj3[2]
	
	if won == 0:
		pass


func moveObj(body: AnimatableBody2D, value: int, direction: MoveDirection, previousDirection: MoveDirection):
	if body.position.y > minY and direction == MoveDirection.moveDown:
		direction = MoveDirection.moveUp
		value *= -1
	
	if body.position.y < maxY and direction == MoveDirection.moveUp:
		direction = MoveDirection.moveDown
		value *= -1
		
	body.position.y += value
	
	previousDirection = direction
	return [value, direction, previousDirection]


func _on_button_button_up():
	if moving1 != MoveDirection.still:
		moving1 = ObjClicked(MovObj1, moving1)

func _on_button_button_up_2():
	if moving2 != MoveDirection.still:
		moving2 = ObjClicked(MovObj2, moving2)
		
func _on_button_button_up_3():
	if moving3 != MoveDirection.still:
		moving3 = ObjClicked(MovObj3, moving3)

func ObjClicked(body: AnimatableBody2D, direction: MoveDirection) -> MoveDirection:
	if body.position.y > 274 and body.position.y < 436:
		direction = MoveDirection.still
		won -= 1
		print(won)
	else:
		reset()
	return direction

func reset():
	won = 3
	moving1 = moving1Previous
	moving2 = moving2Previous
	moving3 = moving3Previous



#func _input(event):
#	clicked = false
#	if event is InputEventMouseButton:
#		var mouse_event = event as InputEventMouseButton
#		if mouse_event.is_action_released("mouse_left"):
#			clicked = true



