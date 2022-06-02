# frozen_string_literal: true

class PageController < ApplicationController
  before_action :setup_grid

  def welcome; end

  def notes
    # ensuring that the grid is always 8 in width
    @grid = Controller::Grid.new(width: 8, note_bank: @note_bank).build.reverse
  end

  def tunings
    @sequential = Controller::Grid.new(width: 8, note_bank: @note_bank).build.reverse
    @two_finger = Controller::Grid.new(width: 2, note_bank: @note_bank).build.reverse
    @three_finger = Controller::Grid.new(width: 3, note_bank: @note_bank).build.reverse
    @four_finger = Controller::Grid.new(width: 4, note_bank: @note_bank).build.reverse
    @five_finger = Controller::Grid.new(width: 5, note_bank: @note_bank).build.reverse
  end

  private

  def setup_grid
    @note_bank = Theory::NoteBank.new
    session[:grid_width] = 8 if session[:grid_width].nil?
    @grid = Controller::Grid.new(width: session[:grid_width], note_bank: @note_bank).build.reverse
  end
end
