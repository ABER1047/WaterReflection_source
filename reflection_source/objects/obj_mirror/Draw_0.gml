

var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
draw_surface(tmp_surf,xx,yy);



draw_text(xx+32,yy+32,"reflection alpha [mouseWheel to control] : "+string(reflection_alpha));