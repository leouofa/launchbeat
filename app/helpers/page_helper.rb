# frozen_string_literal: true

module PageHelper
  def shape_color(start_note, note, shape)
    unless start_note == 1
      shape = shape.collect do |n|
        new_note = n + (start_note - 1)

        if new_note > 12
          new_note - 12
        else
          new_note
        end
      end
    end

    if shape[0] == note.alias.to_i
      'root active'
    elsif shape.include?(note.alias.to_i)
      'root'
    end
  end

  def note_color(note)
    "background-color: #{note.color}; color: #{note.text_color}; opacity: 0.3; filter: grayscale(100%)"
  end
end
