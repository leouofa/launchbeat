# frozen_string_literal: true
module Theory
  class Chord
    def initialize(options = {})
      @name     = options[:name]
      @pattern  = options[:pattern]
    end
    attr_reader :name, :pattern

    # returns an array of notes to be played
    def notes
      notes = []
      @pattern.each_with_index do |p, index|
        if index.zero?
          notes[index] = p
        else
          notes << notes[index-1] + p
        end
      end
      notes
    end
  end
end
