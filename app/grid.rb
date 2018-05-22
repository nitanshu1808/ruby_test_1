class Grid
  ARRAY_OF_CHARACTERS = ("A".."Z").to_a
  attr_accessor :num, :arr

  def initialize(number)
    @counter  		= 0
    self.num      = number - 1
    self.arr      = Array.new(number){Array.new(number)}
  end

  #Assigning value to two dimensional array and printing the grid
  def create_grid
    for row in 0..@num           #Iterating over the row
      for col in 0..@num         #Iterating over the column
        val   = fetch_char    	 #assigning character
        @counter += 1         
        @arr[row][col] = val
        print_grid(val, col)
      end   
    end
  end

  private
  def fetch_char
    @counter = 0 if @counter > 25
    return ARRAY_OF_CHARACTERS[@counter]
  end

  #prints the grid
  def print_grid(val, col)
    print "   #{val}"
    puts "" if col == @num
  end

end
