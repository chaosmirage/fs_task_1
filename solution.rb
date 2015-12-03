# 1
# 11
# 21
# 1211
# 111221
# 312211
# 13112221
# 1113213211

# Метод для поиска количества одинаковых символов начиная с iго символа до
#   первого отличного от него.
def count_equal_char(s, i = 0)
  count = 1
  while i < s.size
    if s[i] == s[i + 1]
      count += 1
    else
      i += 1
      break
    end
    i += 1
  end

  count
end

# Метод для вывода последовательности длины count_lines
def start(count_lines, line = "1")
  puts line

  i = 0
  while i < count_lines
    next_line = ""

    j = 0
    while j < line.size
      next_line += count_equal_char(line, j).to_s + line[j]
      # Изменение значения индекса для перехода к следующей группе символов
      #   отличного от текущего
      if count_equal_char(line, j) > 0
        j += count_equal_char(line, j)
      else
        j += 1
        break
      end
    end

    line = next_line
    puts next_line

    i += 1
  end
end

start(7)
