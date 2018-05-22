require "spec_helper"
require "./app/grid"
require "./app/word"

describe Word do
	before(:all) do
    @grid = Grid.new(2)
		@grid.create_grid
  end

	it "return word list" do
		word = Word.new(@grid)
		word.display_words
		expect(word.list).to eql(["AB", "BA", "AC", "CA", "AD", "BC"])
	end

end
