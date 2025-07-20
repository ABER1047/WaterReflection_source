
if (keyboard_check(vk_control))
{
	camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])-12.8,camera_get_view_height(view_camera[0])-7.2);
}
else
{
	reflection_alpha += (reflection_alpha < 1) ? 0.1 : 0;
}