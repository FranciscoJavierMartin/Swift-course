struct Matrix{
    let rows: Int, columns: Int
    var grid: [Double]

    init(rows:Int, columns: Int){
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows*columns)
    }

    func indexIsValid(row: Int, column: Int)-> Bool{
        return row>=0 && row<rows && column >= 0 && column < columns
    }

    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), 
                "Index is not available")
            return grid[row*columns+column]
        }
        set{
            assert(indexIsValid(row:row, column: column),
                "Index is not available")
            grid[row*columns+column] = newValue
        }
    }
    
    func matrixForm(){
        for i in 0..<rows{
            var line = ""
            for j in 0..<columns{
                line+="\(self[i,j]) "
            }
            print(line)
        }
    }
}

var matrix = Matrix(rows: 3, columns: 4)
print(matrix.grid)
print(matrix.indexIsValid(row: 5, column: 2))

matrix[1,0] = 2.5
matrix[0,1] = -5.3
matrix[2,3] = -1.2

print(matrix.grid)
matrix.matrixForm()