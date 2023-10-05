extends Node2D

var collectible = preload("res://UnicornImage.png")
var bucket = preload("res://bucketTemplate.tscn")
var paintNames = ["Green","Red","Blue","Violet","Orange","Indigo","Yellow"]
var randomPositions = []

var rng = RandomNumberGenerator.new()
#var paintList = [$RedPaintBucket]
# Called when the node enters the scene tree for the first time.
func _ready():
	var temp = Vector2(32,32)
	for i in range(7):
		var bucketscene = bucket.instantiate()
		bucketscene.colorIndex = i
		bucketscene._setup()
		temp = Vector2((rng.randi_range(0,12)*64)+32,(rng.randi_range(0,5)*64)+32)
		while(len(randomPositions) != 7):
			temp = Vector2((rng.randi_range(0,6)*64)+32,(rng.randi_range(0,5)*64)+32)
			if(not randomPositions.has(temp)):
				randomPositions.append(temp)
		bucketscene.position = randomPositions[i]
		add_child(bucketscene)
	#print(randomPositions)
	#print(len(randomPositions))
	#$RedPaintBucket.position = Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#var sub = collectible.instance()
	#sub.position = get_global_mouse_position()
	#add_child(sub)
	pass
