=begin
  1
  11
  21
  1211
  111221
  312211
=end

# Метод для поиска количества одинковых символов начиная с iго символа до первого отличного от него
# puts countSameChar("1122113", 5)
# 2

def countSameChar(s, i = 0)
  count = 1
  while i < s.size do
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
def start(count_lines,item = "1")
  puts item
  i = 0
  while i < count_lines do
    next_item = ""
    j = 0
    while j < item.size do
      next_item += countSameChar(item, j).to_s + item[j]
      # Изменение значения индекса для перехода к следующей группе символов отличного от текущего
      j += countSameChar(item, j) - 1 if countSameChar(item, j) > 0
      # Выход из цикла, если все символы одинаковые
      break if item.delete(item[j]).size == 0
      j += 1
    end

    puts next_item
    item = next_item
    i += 1
  end
end

start(7)