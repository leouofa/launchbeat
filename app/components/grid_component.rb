# frozen_string_literal: true

class GridComponent < ViewComponent::Base
  def initialize(width: 8)
    note_bank = Theory::NoteBank.new

    @grid = Controller::Grid.new(width: width, note_bank: note_bank).build.reverse
    super
  end

end
