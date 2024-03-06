/// @description Insert description here
// You can write your code in this editor
xspd = 5

yspd = 5

get_hit = false

get_hit_timer = .1*room_speed

bounce_off = false

player_health  = 3

dead = false

player_gun = instance_create_depth(x,y,-1,Obj_PlayerGun)

audio_play_sound(Sd_BGM,2,true)




