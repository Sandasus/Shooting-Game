/// @description Insert description here
// You can write your code in this editor
var effect = instance_create_depth(x,y,-2,Obj_ShootingEffect)

effect.image_angle = direction

get_hit  =true

if(dead = false){
	
sprite_index = Spr_PlayergetHit

}

direction = other.direction

speed=5

Obj_Camera.direction = other.direction

Obj_Camera.speed = 5


instance_destroy(other)








