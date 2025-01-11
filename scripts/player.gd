extends Node2D
var bulletfire=preload("res://sceenes/bullet.tscn")
var direction=0
var speed=200
var halfw=28
var shoot_time=0.6
var shoot_counter=0
var score=0
func _ready():
    pass
func _process(delta):
    
    shoot_counter+=delta
    if Input.is_action_pressed("fire") and shoot_counter>shoot_time:
        shoot_counter=0
        var bullet_instance=bulletfire.instantiate()
        bullet_instance.position.x=position.x
        bullet_instance.position.y=position.y-40
        get_parent().get_node("bullet").add_child(bullet_instance)
        
        
    if Input.is_action_pressed("left"):
        direction=-1
    elif Input.is_action_pressed("right"):
        direction=+1
    else:
        direction=0
    #position.x+=direction*speed*delta
    position.x=clamp(position.x+direction*speed*delta,halfw,400-halfw)
    
