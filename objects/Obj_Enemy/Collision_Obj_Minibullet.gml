/// @description Insert description here
// You can write your code in this editor



if(not dead)
{
	
var effect = instance_create_depth(x,y,-2,Obj_ShootingEffect)

effect.image_angle = direction

sprite_index = Spr_EnemyGetHit;

direction = other.direction

speed=5

enemystate = state.gethit

get_hit  = true

instance_destroy(other)

}



