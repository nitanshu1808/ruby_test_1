class Main
  load 'search.rb'
  load 'word.rb'
  load 'grid.rb'

  def execute
    puts "Enter the number(N) inorder to generate N x N Grid"
    n = gets.chomp.to_i

    until n > 1
      puts "Wrong Input. Num should be positive and greater than 1 \n\n"
      puts "Enter the number(N) inorder to generate N x N Grid"
      n = gets.chomp.to_i
    end

    grid = Grid.new(n)
    grid.create_grid

    puts grid.arr
    word = Word.new(grid)
    word.display_words

    search = Search.new(word)
    search.search_listed_words      
  end
end
m =  Main.new
m.execute

