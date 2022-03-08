# Print a formatted grid

def print_grid(grid)
  system "clear" # clears screen

  grid.each do |row|
    puts row.join(" ") # prints each row formatted with a space between elements
  end
end

# Runner Code

grid = [
          [" ", "X", "-", "-", "-", "-", "-", "X"],
          [" ", "-", "X", "-", "-", "-", "X", "-"],
          [" ", "-", "-", "X", "-", "X", "-", "-"],
          [" ", "-", "-", "-", "X", "-", "-", "-"],
          [" ", "-", "-", "X", "-", "X", "-", "-"],
          [" ", "-", "X", "-", "-", "-", "X", "-"],
          [" ", "X", "-", "-", "-", "-", "-", "X"]
        ]

grid_height = grid.length

grid_height.times do |index|
  grid[(grid_height - 1) - index][0] = "M" # Make a change to the data
  print_grid(grid)                         # call print method
  sleep(0.5)                               # pauses for 1 half second before continuing, to see the changes
end