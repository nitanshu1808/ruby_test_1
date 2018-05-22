require "spec_helper"
require "./app/grid"

describe Grid do
	before(:all) do
    @grid = Grid.new(2)
		@grid.create_grid
  end

	it "return a grid" do
		expect(@grid.arr).to eql([["A", "B"], ["C", "D"]])
	end

end
