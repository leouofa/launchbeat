class ChordsController < ApplicationController

  before_action :enable_note_selector, only: %w[show]
  before_action :setup_grid, only: %w[show]
  before_action :setup_chord_bank, only: %w[show]

  def index
  end

  def show
    @chord = @chord_bank.find(params[:id].capitalize)
    redirect_to action: :index if @chord.nil?
  end

  private

  def setup_grid
    @note_bank = Theory::NoteBank.new
    session[:grid_width] = 8 if session[:grid_width].nil?
    @grid = Controller::Grid.new(width: session[:grid_width], note_bank: @note_bank).build.reverse
  end

  def setup_chord_bank
    @chord_bank = Theory::ChordBank.new
  end

  def enable_note_selector
    @note_selector = true
  end
end
