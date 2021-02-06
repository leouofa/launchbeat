require 'matrix'

class PageController < ApplicationController
  def welcome
    @bank = Theory::Bank.new

    @grid = []
    row = []
    (1..64).step do |step|
      row.push @bank.note_at_position(step)
      if step % 8 == 0
        @grid.push row.dup
        row = []
      end
    end
    @grid = @grid.reverse


  end
end
