class Exercise
  def initialize(matrix, start_x, start_y, end_x, end_y)
    @start = [start_x, start_y]
    @end =  [end_x, end_y]
    @matrix = matrix
    @max_y = matrix.size
    @max_x = matrix[0].size
  end

  def find_path()
    current_path = [@start]
    rec_find_path(current_path)
  end

  def rec_find_path(current_path)
    return current_path if current_path.last == @end
    return [] unless is_still_valid(current_path)
    x = current_path.last[0]
    y = current_path.last[1]
    valid_paths = []

    valid_paths << rec_find_path(current_path.dup << [x - 1, y    ])
    valid_paths << rec_find_path(current_path.dup << [x    , y - 1])
    valid_paths << rec_find_path(current_path.dup << [x + 1, y    ])
    valid_paths << rec_find_path(current_path.dup << [x    , y + 1])

    valid_paths.select!{|el| el.size > 0}
    valid_paths.size > 0 ?  valid_paths.min {|el| el.size} : []
  end

  def is_still_valid(current_path)
    is_on_matrix(current_path) && is_new_path(current_path) && is_free_wall(current_path)
  end

  def is_on_matrix(current_path)
     (current_path.last[0] < @max_x && current_path.last[0] >= 0) && (current_path.last[1] < @max_y && current_path.last[1] >= 0)
  end

  def is_new_path(current_path)
    current_path.uniq.size == current_path.size
  end

  def is_free_wall(current_path)
    @matrix[current_path.last[1]][current_path.last[0]] == 'f'
  end
end
