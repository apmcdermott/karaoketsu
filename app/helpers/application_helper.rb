module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper

  def midi_to_named(midi)
    note_letters = ["C", "C\u266F", "D", "E\u266D", "E", "F", "F\u266F", "G", "A\u266D", "A", "B\u266D", "B"]
    octave = midi / 12 - 1
    index = midi % 12
    note_letters[index]+octave.to_s
  end

  def sortable(column, title, direction = "asc")
    title ||= column.titleize
    css_class = (column == sort_column) ? "sorter current #{sort_direction}" : "sorter disabled"

    # lets you explicitly declare a sort direction
    # reverses sort direction on 2nd click of same column
    if column == sort_column && sort_direction == "asc"
      direction = "desc"
    elsif column == sort_column && sort_direction == "desc"
      direction = "asc"
    else
      direction
    end

    link_to title, {sort: column, direction: direction}, {:class => css_class}
  end
end
