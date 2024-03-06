/// @description Insert description here
// You can write your code in this editor

speed = 8

enum state{
	walk,
	shoot,
	gethit,
}

enemystate=state.walk

enemy_health = 2

dead = false

startwalk = false

startwalk_timer = irandom_range(1*room_speed, 3*room_speed)

get_hit_timer = .1*room_speed

get_hit = false

shoot_cool_down = false

enemy_gun = instance_create_depth(x,y,-1,Obj_EnemyGun)