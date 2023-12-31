extends Area2D
#@export_enum("Red:0","Green:1")var enumCoords
var colorIndex: int #so how do i tell it to use a specific number from mainlevel then
var colorCoord = [
	Rect2(0,0,64,64),
	Rect2(64,0,64,64),
	Rect2(128,0,64,64),
	Rect2(0,64,64,64),
	Rect2(64,64,64,64),
	Rect2(128,64,64,64),
	Rect2(0,128,64,64)
]
var moving = false
var move_speed = 60
# Called when the node enters the scene tree for the first time.
#also seems like one bucket isnt moved properly, not sure
func _setup():
	$BucketSprite2D.texture = $BucketSprite2D.texture.duplicate()
	$BucketSprite2D.texture.region = colorCoord[colorIndex] #didnt know i could do that

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_go_there(delta)

func _go_there(delta):
	if moving:
		self.global_position = self.global_position.move_toward(Vector2(320,320), delta*move_speed)
	if self.global_position == Vector2(320,320):
		moving = false
	
func _on_area_entered(area):
	if area.is_in_group("Player"):
		moving = true # Replace with function body.
