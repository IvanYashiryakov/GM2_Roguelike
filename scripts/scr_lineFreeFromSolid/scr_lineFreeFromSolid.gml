function scr_lineFreeFromSolid(argument0, argument1, argument2, argument3) {
	// scr_lineFreeFromSolid(x1, y1, x2, y2);

	var _x1 = argument0;
	var _y1 = argument1;
	var _x2 = argument2;
	var _y2 = argument3;

	if (_x1 == _x2) {
	    if (_y1 > _y2) {
	        _y1 = argument3;
	        _y2 = argument1;
	    }
	    for (var yy = _y1+1; yy < _y2; yy++) {
	        if (scr_cellContains(_x1, yy, gameObjects.Wall))
	            return false;
	    }
	} else if (_y1 == _y2) {
	    if (_x1 > _x2) {
	        _x1 = argument2;
	        _x2 = argument0;
	    }
	    for (var xx = _x1+1; xx < _x2; xx++) {
	        if (scr_cellContains(xx, _y1, gameObjects.Wall))
	            return false;
	    }
	} else return false;

	return true;



}
