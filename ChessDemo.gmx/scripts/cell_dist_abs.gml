/// cell_dist_abs(dist_x, dist_y, cell_x, cell_y, sel_x, sel_y);

var _x_d = argument0;
var _y_d = argument1;

var _x = argument4;
var _y = argument5;
var _x_c = argument2;
var _y_c = argument3;

if (abs(_x - _x_c)==_x_d && abs(_y - _y_c)==_y_d) return true; else return false;
