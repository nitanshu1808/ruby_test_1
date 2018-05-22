class Word
  attr_accessor :list

  def initialize(grid)
    @grid       = grid.arr
    self.list   = []
    @word       = ""
  end

  def display_words
    puts "Horizontal characters from left to right(WORD) in your grid #{left_to_right_horizontal_word}"
    puts "Horizontal characters from right to left(WORD) in your grid #{right_to_left_horizontal_word}"
    puts "Vertical characters from top to bottom(WORD) in your grid #{top_to_bottom_vertical_word}"
    puts "Vertical characters from bottom to top(WORD) in your grid #{bottom_to_top_vertical_word}"
    puts "Diagonal characters from left to right(WORD) in your grid #{diagonal_word_from_left_to_right}"
    puts "Diagonal characters from right to left(WORD) in your grid #{diagonal_word_from_right_to_left}"
  end

  private

  def left_to_right_horizontal_word
    fetch_horizontal_word(@grid[0])
    add_word_in_list
  end

  def right_to_left_horizontal_word
    fetch_horizontal_word(@grid[0].reverse )
    add_word_in_list
  end

  def top_to_bottom_vertical_word
    fetch_vertical_word(@grid)
    add_word_in_list
  end

  def bottom_to_top_vertical_word
    fetch_vertical_word(@grid.reverse)
    add_word_in_list
  end

  def diagonal_word_from_left_to_right
    @grid.each_with_index {|val,index| make_word(val[index]) }
    add_word_in_list
  end

  def diagonal_word_from_right_to_left
    @grid.each_with_index {|val,index| make_word(val.reverse[index]) }
    add_word_in_list
  end

  def fetch_horizontal_word(arr)
    arr.each { |char| make_word(char)}
  end

  def fetch_vertical_word(arr)
    arr.each {|row| make_word(row[0]) }
  end

  def add_word_in_list
    @list << @word
    _dup, @word = @word, ""
    return _dup
  end

  def make_word(char)
    @word << char
  end
end
