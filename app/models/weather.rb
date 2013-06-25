class Weather

  def process_file file, index_1, index_2
    min_val = nil
    File.open("public/#{file}") do |f|
      while line = f.gets
        min_val = min(min_val, process_line(index_1, index_2, line)) if line.present?
      end
    end
    min_val
  end

  def process_line index_1, index_2, line
    record = line.split(" ")
    (record[index_1].to_i - record[index_2].to_i).abs
  end

  def min (left, right)
    return right if left == nil
    return left if right == nil
    [left, right].min
  end
end
