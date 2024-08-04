

if (surface_exists(tmp_surf))
{
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	
	surface_set_target(tmp_surf2);
	draw_clear_alpha(c_black,0);
	// you can add water reflection effect when you add certain objects as child on object_parents
	// all of object sprite x-offset, y-offset positions all must be center bottom of mask_index
	with(object_parents)
	{
		var tmp_xx = x - xx;
		var tmp_yy = y - yy;
		draw_sprite_ext(sprite_index,image_index,tmp_xx,tmp_yy,image_xscale,-image_yscale,image_angle,image_blend,image_alpha);
	}
	surface_reset_target();
	
	
	
	surface_set_target(tmp_surf);
	draw_clear_alpha(c_black,0);
	draw_sprite_ext(Sprite1,image_index,x-xx,y-yy,image_xscale,image_yscale,image_angle,c_white,1);
	gpu_set_colorwriteenable(1, 1, 1, 0);
	draw_surface_ext(tmp_surf2,0,0,1,1,0,c_white,reflection_alpha);
	gpu_set_colorwriteenable(1, 1, 1, 1);
	surface_reset_target();
}
else
{
	tmp_surf = surface_create(display_get_width(), display_get_height());
	tmp_surf2 = surface_create(display_get_width(), display_get_height());
}