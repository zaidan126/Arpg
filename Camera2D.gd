extends Camera2D

@export var tilemap:TileMap
# Called when the node enters the scene tree for the first time.
func _ready():
	var map=tilemap.get_used_rect()
	var tilesize=tilemap.cell_quadrant_size
	var worldinpixel=map.size*tilesize
	limit_right=worldinpixel.x
	limit_bottom=worldinpixel.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
