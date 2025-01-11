extends Node
var enemy_scene=preload("res://sceenes/enemy.tscn")
func _ready():
    get_parent().get_node("Area2D").connect("area_entered",_the_end)
    var timer=Timer.new()
    add_child(timer)
    timer.wait_time=1.5
    timer.connect("timeout",_create_enemy)
    timer.start()
func _create_enemy():
    var enemy=enemy_scene.instantiate()
    get_parent().get_node("enemy").add_child(enemy)
func _the_end(body:Node):
    if body.name == "enemyarea":
        get_tree().set_pause(true)
        


    
    
