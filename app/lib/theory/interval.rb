# frozen_string_literal: true

module Theory
  class Interval
    def initialize(options = {})
      @root = options[:root]
      @scale_pattern = options[:scale_pattern]
    end
  end
end
