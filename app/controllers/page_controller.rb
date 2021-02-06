class PageController < ApplicationController
  def welcome
    @bank = Theory::Bank.new
  end
end
