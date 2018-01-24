/// check_path_empty(x, y, xx, yy, board)
var _x = argument0;
var _y = argument1;
var _xx = argument2;
var _yy = argument3;
var _board = argument4;

var _dis_x = _xx - _x;
var _dis_y = _yy - _y;

var same_block = true;

var starting_block = true;

while(_x!=_xx || _y!=_yy){
    //quit if same
    if (_x==_xx && _y==_yy) break;
    
    //get piece array
    var _arr = _board[# _x, _y];
    var _type = _arr[info.type];
    var _team = _arr[info.team];
    
    //starting block
    if (starting_block){
        if (_team==turn) return false;
    }
    
    //check
    else if (_team!=-1) return false;
    
    //not same block
    same_block = false;
    
    //move closer to dest
    _x += sign(_dis_x);
    _y += sign(_dis_y);
    
    //starting block end
    starting_block = false;
}

if (same_block) return false; else return true;
