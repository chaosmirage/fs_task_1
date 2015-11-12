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

# Процедура для поиска количества одинковых символов начиная с iго символа до первого другого
# puts count_same_char("1122113, 5")
# 2

def count_same_char(s, i = 0)
  count_same_char = 1
  while i < s.size do
    if s[i] == s[i + 1]
      count_same_char += 1
    else
      i += 1
      break
    end
    i += 1
  end
  return count_same_char
end

# Процедура для вывода последовательности длины count_lines
def start(count_lines,item = "1")
  puts item
  i = 0

  while i < count_lines do
    next_string = ""
    j = 0

    while j < item.size do
      # puts "j: #{j}"

      # puts "#{next_string}(next_string) = #{count_same_char(item, j).to_s}(item.count(item[j]).to_s) + #{item[j]}(item[j])"

      next_string = next_string + count_same_char(item, j).to_s + item[j]

      # Изменение значения индекса для перехода к следующей группе символов
      if count_same_char(item, j) > 0
        j += count_same_char(item, j) - 1
      end

      # puts "current item: #{item}"

      # Выход из цикла, если все символы одинаковые
      break if item.delete(item[j]).size == 0

      j += 1
    end

    puts "#{next_string}"
    item = next_string

    i += 1
  end
end

start(7)