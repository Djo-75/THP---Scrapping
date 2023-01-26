require 'nokogiri' # comme une balise, équivalent à HTML ou CSS
require 'open-uri'

puts 
puts "Voici mes villes stockées dans un array: "
puts

def array_keys

    array_keys_temp = []

    doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))     # Scrap villes du 95
    raw_keys = doc.xpath('//*[contains(@class,"lientxt")]')                               # Scrapping brut de mes villes

         raw_keys.each do |keys|    # Boucle pour appliquer la même règle à toutes mes datas           
            
            keys_list = keys.text   # Je clean la data en retirant les balises et ne gardant que le texte
            array_keys_temp.push(keys_list) #   Je push les datas dans mon array 
        
         end
    return array_keys_temp
end

print array_keys
puts
puts
puts "Nombre de communes dans le 95 :"
puts array_keys.length
puts 
puts

puts
puts "Voici mes liens stockés dans un array"

def array_link    

    doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))     # Scrap adresses email

    nodeset = doc.css('a.lientxt')  # Je récupère ça en brut : <a class="lientxt" href="./95/arnouville-les-gonesse.html">ARNOUVILLE LES GONESSE</a>
    all_links = nodeset.map{ |i| i['href'] } # De la ligne du haut, je ne garde que ce qui commence par href

    updated_links = all_links.map {|x| x[1..-1]} # Je supprime le '.' en créant un nouvel array qui commencera par 1 (mon nouveau "0") et -1 (toujours le dernier char d'une chaine)
    
    return updated_links
end

print array_link

# faire un array d'emails incluant une boucle de l'espace sur "http://annuaire-des-mairies.com/95/ermont.html" pour récupérer tous les emails 
# associer le array_keys (villes) avec le array d'emails
# faire des hashes uniques dans un array