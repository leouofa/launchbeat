# frozen_string_literal: true

class PageController < ApplicationController
  before_action :setup_grid

  def welcome
    @bank = Theory::Bank.new
    @c_maj_scale = Theory::Interval.new(root: 1, scale_pattern: [1, 3, 5, 6, 8, 10, 12])
  end

  def notes

  end

  def majors

  end

  private

  def setup_grid
    @bank = Theory::Bank.new
    @four_row_controller = Controller::Grid.new(width: 4, bank: @bank).build

    @grid = []
    row = []
    (1..64).step do |step|
      row.push @bank.note_at_position(step)
      if (step % 8).zero?
        @grid.push row.dup
        row = []
      end
    end

    @grid = @grid.reverse
  end
end
