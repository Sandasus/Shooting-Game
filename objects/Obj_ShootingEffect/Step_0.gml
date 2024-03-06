
shade_disappear--;


if(shade_disappear<=0){
	instance_destroy();
}


if( 90 < image_angle && image_angle <270 )
{
	
	image_yscale=-1;
	
}else{
	
	image_yscale = 1;
	
}





