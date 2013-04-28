class HatsController < ApplicationController

  def index
    params[:style] ||= []
    params[:color] ||= []
    @hats = Hat.searchable(params)

    @hat_styles = {}
    @hats.facets["current-styles"]["terms"].each {|f| @hat_styles[f['term']] = f['count']}

    @hat_colors = {}
    @hats.facets["global-colors"]["terms"].each {|f| @hat_colors[f['term']] = f['count']}
  end

end