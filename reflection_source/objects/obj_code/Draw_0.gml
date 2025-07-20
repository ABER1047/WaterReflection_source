var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var xx_w = camera_get_view_width(view_camera[0]);
var yy_h = camera_get_view_height(view_camera[0]);
var txt_scale = xx_w/1280;

draw_set_font(font_normal);
draw_text(xx+32,yy+32,"reflection alpha [mouseWheel to control] : "+string(obj_mirror.reflection_alpha));

draw_set_font(global.outlined_font_light);
draw_text_ext_transformed(xx+32,yy+128,"outline_text test",64,9999,txt_scale,txt_scale,0);