# frozen_string_literal: true

module Theory
  class Note

    # starting to play with the idea of creating a different alias
    # for notes to make it easier to learn
    def initialize(options = {})
      @name       = options[:name] || 'c'
      @alt_name   = options[:alt_name]
      @alias      = options[:alias] || '1'
      @natural    = options[:natural]
      @color = options[:color]
      @text_color = options[:text_color] || 'black'
    end

    attr_reader :name, :alias, :natural, :color, :text_color

    # returns the enharmonic name for un-natural notes
    def alt_name
      return @name if @natural

      @alt_name
    end
  end

end
