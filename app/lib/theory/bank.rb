# frozen_string_literal: true

module Theory
  class Bank
    def initialize(_options = {})
      @notes = []
      @notes.push Note.new(name: 'C', alias: '1', natural: true, color: '#de43dd', text_color: 'white')
      @notes.push Note.new(name: 'C#', alias: '2', natural: false, color: '#e7cd65', text_color: 'black')
      @notes.push Note.new(name: 'D', alias: '3', natural: true, color: '#2bfd8d', text_color: 'black')
      @notes.push Note.new(name: 'D#', alias: '4', natural: false, color: '#2ecc35', text_color: 'black')
      @notes.push Note.new(name: 'E', alias: '5', natural: true, color: '#95fee8', text_color: 'black')
      @notes.push Note.new(name: 'F', alias: '6', natural: true, color: '#2dd9d8', text_color: 'black')
      @notes.push Note.new(name: 'F#', alias: '7', natural: false, color: '#2ca8d3', text_color: 'white')
      @notes.push Note.new(name: 'G', alias: '8', natural: true, color: '#4d56fb', text_color: 'white')
      @notes.push Note.new(name: 'G#', alias: '9', natural: false, color: '#a37dfc', text_color: 'white')
      @notes.push Note.new(name: 'A', alias: '10', natural: true, color: '#9b3ce9', text_color: 'white')
      @notes.push Note.new(name: 'A#', alias: '11', natural: false, color: '#fc4886', text_color: 'white')
      @notes.push Note.new(name: 'B', alias: '12', natural: true, color: '#ffffff', text_color: 'black')
    end

    attr_reader :notes

    def note_at_position(position)
      # we want to loop around, because the notes restart
      position = position % 12 if position > 12

      @notes[position - 1]
    end
  end
end
