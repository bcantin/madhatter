class Hat < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  
  attr_accessible :name, :price, :color_list, :style_list, :description

  acts_as_taggable_on :colors, :styles

  STYLES =  %w{baseball beanie beret derby cricket deerstalker 
               dunce fedora fez patrol sombereo stetson top zucchetto}
  COLORS = %w{brown black white grey tan blue red green orange}

  def self.searchable(opts={})
    @hats = Hat.search(page: opts[:page] || 1) do
      query { string opts[:search] }           if opts[:search].present?
      filter(:terms, style_list: opts[:style]) if opts[:style].present?
      filter(:terms, color_list: opts[:color]) if opts[:color].present?
      facet "current-styles" do
        terms :style_list, size: STYLES.size
      end        
    end
  end

  def to_indexed_json
    { name: name,
      description: description,
      price: price,
      color_list: color_list,
      style_list: style_list}.to_json
  end

end
