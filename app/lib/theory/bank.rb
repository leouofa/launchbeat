# frozen_string_literal: true
module Theory
  class Bank
    def initialize(options = {})
      @notes = []
      @notes.push Note.new(name: 'C', alias: 'N1')
      @notes.push Note.new(name: 'C#', alias: 'N2')
      @notes.push Note.new(name: 'D', alias: 'N3')
      @notes.push Note.new(name: 'D#', alias: 'N4')
      @notes.push Note.new(name: 'E', alias: 'N5')
      @notes.push Note.new(name: 'F', alias: 'N6')
      @notes.push Note.new(name: 'F#', alias: 'N7')
      @notes.push Note.new(name: 'G', alias: 'N8')
      @notes.push Note.new(name: 'G#', alias: 'N9')
      @notes.push Note.new(name: 'A', alias: 'N10')
      @notes.push Note.new(name: 'A#', alias: 'N11')
      @notes.push Note.new(name: 'B', alias: 'N12')
    end

    def notes
      @notes
    end
  end
end