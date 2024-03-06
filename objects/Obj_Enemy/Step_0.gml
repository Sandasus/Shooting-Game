/// @description Insert description here
// You can write your code in this editor
randomize()
if(not dead){
	
	enemy_gun.image_angle = point_direction(x,y,Obj_Player.x,Obj_Player.y)
	
	enemy_gun.x=x
	
	enemy_gun.y=y
	
	switch(enemystate)
	
	{
		case state.walk:
			if(startwalk = false)
			{
				speed = 3
				direction = irandom_range(0,360)
				if(direction<90 and direction>270)
				{
					image_xscale = 1
				}
				else
				{
					image_xscale = -1
				}
				sprite_index = Spr_EnemyMove
				if(place_meeting(x,y,Obj_Collidleable))
				{
					direction = - direction;
				}
				startwalk = true;
			}
			if(startwalk = true){
				startwalk_timer--
			}
			if(startwalk_timer <=0){
				
				speed =0
				startwalk = false
				startwalk_timer = irandom_range(1*room_speed, 3*room_speed)
				enemystate = state.shoot
			}
			break
		case state.shoot:
				audio_play_sound(Sd_EnemyShoot,1,false)
				var inaccuracy = 10
				var offset = irandom_range(-inaccuracy, inaccuracy)
				
				var bullet = instance_create_depth(x,y,-1,Obj_EnemyBullet)
				
				bullet.direction =  point_direction(x,y,Obj_Player.x,Obj_Player.y)+offset
				
				bullet.image_angle = bullet.direction
				
				bullet.speed = 8
				
				enemystate=state.walk
				
			break;
			
		case state.gethit:
			if(get_hit = false){
				
				enemystate=state.walk
				
			}
			break;
	}
	if(get_hit = true){
		
		get_hit_timer--
		
	}
	if(get_hit_timer<=0){
		
		direction = irandom_range(0,360)
		
		speed = 3
		
		get_hit_timer = .1*room_speed
		
		get_hit = false
		
		enemy_health-=1
		
		sprite_index = Spr_EnemyMove
	}
	if(enemy_health<=0){
		
		dead = true
		
	}
}
if(dead = true){
	
	if(speed > 0){
		
		speed = speed - 0.05
		
	}
	
	sprite_index = Spr_EnemyDead
	
	instance_destroy(enemy_gun)
	
	return;
}


