=begin
  1
  11
  21
  1211
  111221
  312211

  case 1: найти количество повторений для данного символа в строке
  case 2: найти и вывести уникальный символ

=end

# Метод для поиска количества одинковых символов начиная с iго символа до первого другого
# puts countSameChar("1122113, 5")
# 2

def countSameChar(s, i = 0)
  countSameChar = 1
  while i < s.size do
    if s[i] == s[i + 1]
      countSameChar += 1
    else
      i += 1
      break
    end
    i += 1
  end
  return countSameChar
end

# Метод для вывода последовательности длины count_lines
def start(count_lines,item = "1")
  puts item
  i = 0

  while i < count_lines do
    next_item = ""
    j = 0

    while j < item.size do
      # puts "j: #{j}"

      # puts "#{next_item}(next_item) = #{countSameChar(item, j).to_s}(item.count(item[j]).to_s) + #{item[j]}(item[j])"

      next_item = next_item + countSameChar(item, j).to_s + item[j]

      # Изменение значения индекса для перехода к следующей группе символов
      if countSameChar(item, j) > 0
        j += countSameChar(item, j) - 1
      end

      # puts "current item: #{item}"

      # Выход из цикла, если все символы одинаковые
      break if item.delete(item[j]).size == 0

      j += 1
    end

    puts "#{next_item}"
    item = next_item

    i += 1
  end
end

start(7)