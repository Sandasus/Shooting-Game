/// @description Insert description here
// You can write your code in this editor
if(Obj_Player.dead = false){
	
if(x<0){
	
	x=0
	
}
if(x+camera_get_view_width(view_camera[0])>room_width){
	
	x = room_width-camera_get_view_width(view_camera[0])
	
}

if(y+camera_get_view_height(view_camera[0])>room_height){
	
	y = room_height - camera_get_view_height(view_camera[0])
	
}

camera_set_view_pos(view_camera[0],x,y)

var camera_move_x = mouse_x-Obj_Player.x

var camera_move_y = mouse_y-Obj_Player.y

camera_set_view_pos(view_camera[0],x,y)

camera_set_view_pos(view_camera[0],x+0.2*camera_move_x,y+0.2*camera_move_y)


if (shake) { 
	var temp_x =camera_get_view_x(view_camera[0])
	var temp_y =camera_get_view_y(view_camera[0])
	
	
   shake_time -= 1
   
   var _xval = choose(x + 0.2*camera_move_x - shake_magnitude, x + 0.2*camera_move_x + shake_magnitude)
   
   var _yval = choose(y + 0.2*camera_move_y - shake_magnitude, y + 0.2*camera_move_y + shake_magnitude)
  
  camera_set_view_pos(view_camera[0], _xval, _yval)


   if (shake_time <= 0){ 
	   
      shake_magnitude -= shake_fade

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0],temp_x,temp_y)
		 
         shake = false; 
      } 
   } 
}
}

