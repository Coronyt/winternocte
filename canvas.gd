extends Control

var _cells = {
	
}

func _ready():
	for row in self.get_children():
		#_rows.append(row)
		_cells[row] = []
		for cell in row.get_children():
			_cells[row].append(cell)
	#print(_cells)

# takes in a position and returns the cell at that position
func get_cell(pos):
	var i = pos.x
	var j = pos.y
	return _cells[_cells.keys()[j]][i]
