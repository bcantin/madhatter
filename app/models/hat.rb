class Hat < ActiveRecord::Base
  attr_accessible :name, :price, :color_list, :style_list, :description

  acts_as_taggable_on :colors, :styles

  STYLES =  %w{baseball beanie beret derby cricket deerstalker 
               dunce fedora fez patrol sombereo stetson top zucchetto}
  COLORS = %w{brown black white grey tan blue red green orange}

end
