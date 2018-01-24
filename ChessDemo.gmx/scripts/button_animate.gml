//hover animation
if (position_meeting(mouse_x, mouse_y, id)){
    scale = 1.1;
}
else{
    scale = 1;
}

image_xscale = lerp(image_xscale, scale, 0.3);
image_yscale = image_xscale;

//button animation
if (object_index!=obj_settings){
    image_alpha = abs(obj_settings.x-x)/20;
}
