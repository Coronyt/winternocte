class_name Canvas extends Control

var _cells: Dictionary[Row, Array] = {}

func _ready():
	for row: Row in self.get_children():
		_cells[row] = []
		for cell: Cell in row.get_children():
			_cells[row].append(cell)

# takes in a position and returns the cell at that position
func get_cell(pos: Position) -> Cell:
	var i: int = pos.x
	var j: int = pos.y
	return _cells[_cells.keys()[j]][i]
