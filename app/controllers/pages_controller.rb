class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contact
    @members = ["rodrigo", "mariana", "thiago", "hilda", "daniela", "patricia", "maya", "chloe", "don", "perola"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

end
