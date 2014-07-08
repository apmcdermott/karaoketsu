module ApplicationHelper
  def sortable(column, title, direction = "asc")
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil

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
