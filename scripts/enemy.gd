extends Area2D
var speed=150
func _ready():
    randomize()
    position=Vector2(randf_range(35,400-35),0)
func _process(delta):
    position.y+=speed*delta
func _on_area_entered(area: Area2D):
    if area.name == "bulletarea":
        Global.global_score+=1
        area.get_parent().queue_free()
        queue_free()
    else: pass
