if ex.include?(0) then 0 else if (ex.map { |i| i < 0 }.select { |b| b == false }.length % 2 == 0) then 1 else -1 end end
