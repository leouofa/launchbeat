# frozen_string_literal: true

module Theory
  class Bank
    def initialize(_options = {})
      @notes = []
      @notes.push Note.new(name: 'C', alias: '1', natural: true)
      @notes.push Note.new(name: 'C#', alias: '2', natural: false)
      @notes.push Note.new(name: 'D', alias: '3', natural: true)
      @notes.push Note.new(name: 'D#', alias: '4', natural: false)
      @notes.push Note.new(name: 'E', alias: '5', natural: true)
      @notes.push Note.new(name: 'F', alias: '6', natural: true)
      @notes.push Note.new(name: 'F#', alias: '7', natural: false)
      @notes.push Note.new(name: 'G', alias: '8', natural: true)
      @notes.push Note.new(name: 'G#', alias: '9', natural: false)
      @notes.push Note.new(name: 'A', alias: '10', natural: true)
      @notes.push Note.new(name: 'A#', alias: '11', natural: false)
      @notes.push Note.new(name: 'B', alias: '12', natural: true)
    end

    attr_reader :notes

    def note_at_position(position)
      # we want to loop around, because the notes restart
      position = position % 12 if position > 12

      @notes[position - 1]
    end
  end
end
