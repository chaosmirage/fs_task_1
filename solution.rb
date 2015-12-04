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
  loop do
    s[i] == s[i + 1] ? count += 1 : break
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
    while (j < line.size) && (count_equal_char(line, j) > 0)
      # Изменение значения индекса для перехода к следующей группе символов
      #   отличного от текущего
      next_line += count_equal_char(line, j).to_s + line[j]
      j += count_equal_char(line, j)
    end

    line = next_line
    puts next_line

    i += 1
  end
end

start(7)
