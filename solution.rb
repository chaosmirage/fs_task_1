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
def get_lines(count_lines, line = "1")
  for i in 0..count_lines - 1
    puts line
    next_line = ""
    j = 0
    while (j < line.size)
      state = "CreatingNewLineChars" if count_equal_char(line, j) > 0
      case state
      when "CreatingNewLineChars"
          next_line += count_equal_char(line, j).to_s + line[j]
          j += count_equal_char(line, j)
      end
    end
    line = next_line
  end
end

get_lines(8)
