# frozen_string_literal: true

class PageController < ApplicationController
  before_action :setup_grid

  def welcome
    @bank = Theory::Bank.new
    @c_maj_scale = Theory::Interval.new(root: 1, scale_pattern: [1, 3, 5, 6, 8, 10, 12])
  end

  def notes
    @grid = @four_row_controller
  end

  def majors

  end

  private

  def setup_grid
    @bank = Theory::Bank.new
    # we are reversing the grid to make displaying easier (since we iterate backwards)
    @eight_row_controller = Controller::Grid.new(width: 8, bank: @bank).build.reverse
    @four_row_controller = Controller::Grid.new(width: 4, bank: @bank).build.reverse
  end
end
