class Search
  require 'byebug'

  FILE_PATH   = Dir.pwd + '/dict.txt'
  attr_accessor :result

  def initialize(word)
    @word_list  =   word.list
    self.result = {}
  end

  def search_listed_words
    array = File.readlines(FILE_PATH)
    @word_list.each do |word|
      @result[word] = binary_search(word, array)
    end
  end

  def binary_search(item, array)
    first = 0
    last  = array.length - 1
    while first <= last
      mid   = (first + last) / 2
      word  = split_string(array[mid])
      if word[0] == item
        puts "#{item} found at position #{mid}"
        return word[1].chomp
      elsif word[0] > item
        last = mid - 1
      elsif word[0] < item
        first = mid + 1 
      end
    end
    puts "No Result found for the Element #{item} in the file"
    return nil
  end

  def split_string(line)
    line.split(" ", 2)
  end
end
