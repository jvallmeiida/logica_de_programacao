class Finder
  def index_of(list, value)
    result = []
    list.each_with_index do |strings, index|
      strings.each_char do |s|
        if s == value
          result << index
        end
      end
    end
    result.uniq
  end
end

# buscar o 1 elemento da lista
# "varrer" todos caracteres do primeiro elemento
# verificar se ao varrer a string é encontrado um value
# se for encontrado esse value, retorna o valor do index desse array

# list = array com elementos do tipo string, exemplo: ['a', 's', 'z']
# value = é uma string que passamos para fazer a verificação se ela existe nesse array (list)
