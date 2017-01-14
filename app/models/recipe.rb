class Recipe < ApplicationRecord
  belongs_to :user
  def mardi_gras_time
    prep_time * 2
  end

  def split_ingredients
    ingredients.split(', ')
  end

  def split_directions
    directions
  end

  def hours_and_minutes
    prep_time
    # hours = prep_time / 60
    # minutes = prep_time % 60
    # message = ""
    # if hours > 0
    #   message += "#{hours} hours "
    # end
    # if minutes > 0
    #   message += "#{minutes} minutes"
    # end
    # message
  end

  def pretty_time
    created_at.strftime("%b %d, %Y")
  end
end
