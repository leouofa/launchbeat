# frozen_string_literal: true

module Theory
  class Note

    # starting to play with the idea of creating a different alias
    # for notes to make it easier to learn
    def initialize(options = {})
      @name       = options[:name] || 'C'
      @alias      = options[:alias] || 'N1'
      @natural    = options[:natural]
    end

    attr_reader :name, :alias, :natural
  end
end
