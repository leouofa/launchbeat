# frozen_string_literal: true

module Controller
  class Grid
    def initialize(options = {})
      @width = options[:width]
      @bank = options[:bank]
      @grid = []
    end

    def build
      case @width
      when 8
        build_eight
      when 4
        build_four
      end
    end

    def build_eight
      grid = []
      (0..7).step do |row|
        grid_row = []

        (0..7).step do |column|
          if row.zero?
            grid_row.push column
          else
            previous_note = if column.zero?
                              grid[row - 1][7]

                            # we want to add one from the previous position
                            else
                              grid_row[column - 1]

                              # we want to add one from the previous position
                            end
            new_position = if previous_note == 11
                             0
                           else
                             previous_note + 1
                           end

            grid_row.push new_position

          end
        end

        grid.push grid_row
      end
      fill_grid(grid)
    end

    def build_four
      grid = []
      (0..7).step do |row|
        grid_row = []

        (0..7).step do |column|
          if row.zero?
            grid_row.push column
          else
            if column.zero?
              previous_note = grid[row - 1][7]

              # we want to go back 3 from the previous note
              new_position = previous_note - 3
            else
              previous_note = grid_row[column - 1]

              # we want to add one from the previous position
              new_position = if previous_note == 11
                               0
                             else
                               previous_note + 1
                             end
            end

            grid_row.push new_position

          end
        end

        grid.push grid_row
      end

      fill_grid(grid)
    end

    def fill_grid(grid_with_numbers)
      grid_with_notes = []
      grid_with_numbers.each_with_index do |row, row_index|
        filled_row = []

        row.each_with_index do |_column, column_index|
          filled_row.push @bank.note_at_position grid_with_numbers[row_index][column_index]
        end

        grid_with_notes.push filled_row
      end
      grid_with_notes
    end
  end
end
