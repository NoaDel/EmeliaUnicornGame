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
# Called when the node enters the scene tree for the first time.
#also seems like one bucket isnt moved properly, not sure
func _setup():
	$BucketSprite2D.texture = $BucketSprite2D.texture.duplicate()
	$BucketSprite2D.texture.region = colorCoord[colorIndex] #didnt know i could do that

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	print("test") # Replace with function body.
