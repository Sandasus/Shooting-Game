

var collision_check =15

if(not get_hit and not dead)// and not place_meeting(x+10*image_xscale,y,Obj_Collidleable))
{
	if(keyboard_check(ord("A"))and not place_meeting(x-collision_check,y,Obj_Collidleable))
	{
		image_xscale=-1
		
		x-=xspd
		
		Obj_Camera.x -=xspd
	}
	if(keyboard_check(ord("D"))and not place_meeting(x+collision_check,y,Obj_Collidleable))
	{
		
		x+=xspd;

		Obj_Camera.x +=xspd
	}
	if(keyboard_check(ord("W"))and not place_meeting(x,y-collision_check,Obj_Collidleable))
	{
		
		y-=yspd;
		
		Obj_Camera.y -=yspd
	}
	if(keyboard_check(ord("S"))and not place_meeting(x,y+collision_check,Obj_Collidleable))
	{
	
		y+=yspd;
	
		Obj_Camera.y +=yspd
	}
}
if(keyboard_check(ord("S")) or (keyboard_check(ord("A"))) or (keyboard_check(ord("D"))) or (keyboard_check(ord("W"))) and not get_hit){
	
	sprite_index = Spr_PlayerMove
	
}
else if(not get_hit){
	if(keyboard_check(ord("T"))){
	sprite_index = Spr_Playertaunt
	audio_play_sound(Sound5,1,0)
}else{
	sprite_index = Spr_Playeridle
}
}

if(get_hit = true){
	if(place_meeting(x,y,Obj_Collidleable)){
		
		direction=-direction
		
		Obj_Camera.direction =-Obj_Camera.direction
		
		speed=3
		
		Obj_Camera.speed = 3
		
		camera_set_view_pos(view_camera[0],Obj_Camera.x,Obj_Camera.y)
		

sprite_index = Spr_PlayergetHit

		
	}
	get_hit_timer--;
}
if(get_hit_timer<=0){
	
	player_health -=1
	
	screenshake(10,3,0.4)
	
	speed = 0
	
	Obj_Camera.speed=0
	
	get_hit_timer = .1*room_speed
	
	get_hit = false;
	
	sprite_index = Spr_Playeridle
	
}
if(player_health<=0){
	dead = true
}
if(dead = true){
	

	audio_pause_sound(Sd_BGM)
	
	if(audio_is_playing(Sd_Death) == false) {
		
    audio_play_sound(Sd_Death, 10, false)
	
}
	
	sprite_index = Spr_PlayerDead
	
	instance_destroy(Obj_PlayerGun)


	
	if(keyboard_check_released(vk_space)){
		audio_pause_sound(Sd_Death)
		room_goto(Rm_startmenu)	
	}
	
}
