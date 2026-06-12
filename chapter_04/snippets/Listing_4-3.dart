/* The for Loop
Listing 4-3: Using nested for loops to iterate through a two-dimensional grid */

void main() {
  var grid = [
    [10, 20, 30],
    [40, 50, 60],
    [70, 80, 90],
  ];

  print('Rows: ${grid.length}, Columns: ${grid[0].length}');

  for (int row = 0; row < grid.length; row++) {
    for (int col = 0; col < grid[row].length; col++) {
      print('grid[$row][$col] = ${grid[row][col]}');
    }
  }
}

Rows: 3, Columns: 3
grid[0][0] = 10
grid[0][1] = 20
grid[0][2] = 30
grid[1][0] = 40
grid[1][1] = 50
grid[1][2] = 60
grid[2][0] = 70
grid[2][1] = 80
grid[2][2] = 90
