#Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).

abc = ('a'..'z')
vowels = ['a', 'e', 'i', 'o', 'u', 'y']
numbers_vowel = {}
abc.each.with_index(1) do|abc, integer|
  numbers_vowel[abc] = integer if vowels.include?(abc)

end
puts numbers_vowel