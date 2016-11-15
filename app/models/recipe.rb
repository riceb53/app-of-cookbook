class Recipe < ApplicationRecord
  def mardi_gras_time
    prep_time * 2
  end
end
