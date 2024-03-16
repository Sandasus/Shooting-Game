
randomize()
shoot_cool_down--;
x=Obj_Player.x;

y=Obj_Player.y;

//image_xscale = Obj_Player.image_xscale;

depth = -2;
if(shoot_cool_down<=0 and mouse_check_button(mb_right) or shoot_cool_down<=0 and mouse_check_button(mb_left))
{
	var muzzle_offset_x = sprite_width-2; 
    var muzzle_offset_y = 2;

    var muzzle_x = x + lengthdir_x(muzzle_offset_x, image_angle) - lengthdir_y(muzzle_offset_y, image_angle);
    var muzzle_y = y + lengthdir_y(muzzle_offset_x, image_angle) + lengthdir_x(muzzle_offset_y, image_angle);

	var bullet = instance_create_depth(x+1/2*image_yscale*sprite_width,y,-1,Obj_Minibullet);
	var shooting_effect = instance_create_depth(muzzle_x, muzzle_y,-5,Obj_Shootinge2);
	shoot_cool_down = 0.05*room_speed;
	var ammo  = instance_create_depth(x,y,0,Obj_Ammomini);
	var inaccuracy = 10;
	var offset = irandom_range(-inaccuracy, inaccuracy); 
	bullet.direction = point_direction(x,y,mouse_x,mouse_y) + offset;
	bullet.image_angle = bullet.direction;
	bullet.image_yscale *=1.5;
	bullet.image_xscale *=1.5;
	audio_play_sound(Sd_mini,1,false);
	screenshake(10,2,0.4);
	shooting_effect.direction =Obj_Mini.direction;
	shooting_effect.image_angle =shooting_effect.direction;
}
image_angle = point_direction(x,y,mouse_x,mouse_y);

if(90<image_angle and image_angle<270)
{
	image_yscale=-1;
}else
{
	image_yscale = 1;
}

