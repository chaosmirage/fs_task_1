# 1
# 11
# 21
# 1211
# 111221
# 312211
# 13112221
# 1113213211

# Метод для поиска количества одинковых символов начиная с iго символа до
#   первого отличного от него.
def count_same_char(s, i = 0)
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
def start(count_lines, s = "1")
  puts s

  i = 0
  while i < count_lines
    next_s = ""

    j = 0
    while j < s.size
      next_s += count_same_char(s, j).to_s + s[j]
      # Изменение значения индекса для перехода к следующей группе символов
      #   отличного от текущего
      if count_same_char(s, j) > 0
        j += count_same_char(s, j)
      else
        j += 1
        break
      end
    end

    s = next_s
    puts next_s

    i += 1
  end
end

start(7)
