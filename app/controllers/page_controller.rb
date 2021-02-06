class PageController < ApplicationController
  def welcome
    @notes = Theory::Bank.new
  end
end
