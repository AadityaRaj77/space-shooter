extends Node2D
var bulletspeed=500
func _ready():
     pass
func _process(delta):
    position.y-=bulletspeed*delta
    if (position.y<0):
        queue_free()
        
    
