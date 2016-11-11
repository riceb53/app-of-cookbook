class Recipe < ApplicationRecord
  def cook_for_longer
    @prep_time += 10
  end
end
