# frozen_string_literal: true

module Controller
  class Grid
    def initialize(options = {})
      @width = options[:width]
      @bank = options[:bank]
      @grid = []
    end

    def build
      row = []
      (1..64).step do |step|

        # first 8 steps are always the same
        if step < 9
          row.push @bank.note_at_position(step)
        else
          case @width
          when 8
            row.push @bank.note_at_position(step)
          when 4
            if get_row(step) > 1
              row.push @bank.note_at_position(step - 4)
            else
              row.push @bank.note_at_position(step)
            end
            # case get_row(step)
            #   when 3
            #     row.push @bank.note_at_position(step - 8)
            #   when 4
            #     row.push @bank.note_at_position(step)
            #   when 6
            #     row.push @bank.note_at_position(step + 4)
            #   when 7
            #     row.push @bank.note_at_position(step)
            # else
            #     row.push @bank.note_at_position(step - 4)
            # end
          when 3
            row.push @bank.note_at_position(step - 5)
          end
        end


        # the new row starts if we can mod by 8
        if (step % 8).zero?
          @grid.push row.dup
          row = []
        end
      end

      @grid.reverse
    end

    def get_row(step)
      if step > 8
        current_row = (step / 8.0)
        Rails.logger.info("step: #{step} - row: #{current_row}")
        if current_row > 1 && current_row <= 2
          2
        elsif current_row > 2 && current_row <= 3
          3
        elsif current_row > 3 && current_row <= 4
          4
        elsif current_row > 4 && current_row <= 5
          5
        elsif current_row > 5 && current_row <= 6
          6
        elsif current_row > 6 && current_row <= 7
          7
        elsif current_row > 7 && current_row <= 8
          8
        end
      else
        1
      end
    end
  end
end
