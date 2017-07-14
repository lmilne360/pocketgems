class PagesController < ApplicationController
  def search
  end

  def favorite
  end

  def search_gems
    result = Gems.search(params["search-term"]).select { |e| e['name'] == params['search-term'] }

    if result.blank?
       @error = "Oh no! Looks like that gem can't be found."
    else
       @gem = GemService.new(result[0]).create_gem
    end
    render :search
  end
end
