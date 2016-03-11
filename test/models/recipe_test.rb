require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

	def setup
		@recipe = Recipe.new(name: "lasagna", summary: "this is the best lasagna recipe",
							description: "lay tomato sauce, add cheese, add noodles and repeat")
	end

	test "recipe should be valid" do 
		assert @recipe.valid?
	end

	test "name should be present" do
		@recipe.name = " "
		assert_not @recipe.valid?
	end

end