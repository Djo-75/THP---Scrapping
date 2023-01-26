require 'nokogiri' # comme une balise, équivalent à HTML ou CSS
require 'open-uri'

def cryptocurrency              # Premier array de l'exercice 
array_curr = []
node = 0

    doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
    doc.xpath('//*[contains(@class,"cmc-table__column-name--name cmc-link")]').each do |node|
    string_key = node.text
    array_curr.push(string_key)
    end
return array_curr
end

puts "Voici toutes mes cryptos dans un array : "
puts

print cryptocurrency

puts 
puts

def crypto_value              # Deuxième array de l'exercice 

array_value = []
node = 0

doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
doc.xpath('//*[contains(@class,"sc-8bda0120-0 dskdZn")]').each do |node|
    
   string_value = node.text.delete("$")
    if string_value.include?(",")
        string_value = string_value.delete(",")
    end
   string_value.to_f.round(2)
   array_value.push(string_value)
end
   return array_value
end

puts "Voici toutes les valeurs dans un autre array :"
puts

print crypto_value

# # .each do |crypto_value.length|

# # end

# # crypto = ["Bitcoin"]    # - Je sais créer un hash à partir de 2 arrays
# # value = [65000]
# # rank = crypto.zip(value).to_h

# # crypto = ["Bitcoin"]    # - Je sais créer un hash à partir de 2 arrays
# # # value = [65000]
# # rank = cryptocurrency.zip(crypto_value).to_h

def final_hash

final_array = []
single_hash = {}

0.upto(crypto_value.length - 1) do |index|                 # potentiel -1

    single_hash = Hash.new
    single_hash[cryptocurrency[index]] = (crypto_value[index])
    final_array.push(single_hash)
    end
return final_array
puts final_hash
end
puts
puts
puts "Last but not least, voici la liste des cryptos et leurs valeurs convertis en hashes individuels contenus dans un array :"
puts
print final_hash
puts


# # hash
# # valeur 0 de cryptocurrency
# # valeur 0 de cryptovalue




# # arr = Array.new         # - Je sais créer un array
# # arr2 = arr.push(4, 6)
         

# # arr_crypto = arr2(cryptocurrency)
# # puts arr_crypto


# # crypto = ["Bitcoin"]    # - Je sais créer un hash à partir de 2 arrays
# # value = [65000]
# # rank = crypto.zip(value).to_h

# # new_arr = Array.new     # - Je sais créer un hash dans un array
# # new_arr2 = new_arr.push(rank)

# # link = {"c" => 300}     # Je sais pusher un hash dans un array de hash
# # new_arr3 = new_arr2.push(link)
# # print new_arr3
