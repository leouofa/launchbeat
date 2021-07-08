# frozen_string_literal: true

module Theory
  class ChordBank
    def initialize(_options = {})
      @chords = []
      @chords.push Chord.new(name: 'Major', pattern: [1, 4, 3])
      @chords.push Chord.new(name: 'Minor', pattern: [1, 3, 4])
      @chords.push Chord.new(name: 'Diminished', pattern: [1, 3, 3])
      @chords.push Chord.new(name: 'Augmented', pattern: [1, 4, 4])
      @chords.push Chord.new(name: 'Sustained', pattern: [1, 5, 2])
      @chords.push Chord.new(name: 'Sustained2', pattern: [1, 2, 5])
      @chords.push Chord.new(name: '6th', pattern: [1, 4, 3, 2])
      @chords.push Chord.new(name: '7th', pattern: [1, 4, 3, 3])
      @chords.push Chord.new(name: 'Maj7', pattern: [1, 4, 3, 4])
      @chords.push Chord.new(name: '9', pattern: [1, 4, 3, 3, 4])
      @chords.push Chord.new(name: '5', pattern: [1, 7, 5])
    end

    attr_reader :chords

    # finds a chord based on a name
    def find(chord_name)
      @chords.find { |c| c.name == chord_name }
    end
  end
end
