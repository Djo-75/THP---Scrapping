require 'nokogiri' # comme une balise, équivalent à HTML ou CSS
require 'open-uri'

# doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))     # Scrap villes du 95
# doc.xpath('//*[contains(@class,"lientxt")]').each do |node|

#     puts node.text
# end

# nombre villes = 185 communes

# all_city_names.each do |city_name|
#     puts city_name.text

# doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))     # Scrap adresses email

#     nodeset = doc.css('a.lientxt')  # Je récupère ça en brut : <a class="lientxt" href="./95/arnouville-les-gonesse.html">ARNOUVILLE LES GONESSE</a>
#     all_links = nodeset.map{ |i| i['href'] } # De la ligne du haut, je ne garde que ce qui commence par href

#     updated_links = all_links.map {|x| x[1..-1]} # Je supprime le '.' en créant un nouvel array qui commencera par 1 (mon nouveau "0") et -1 (toujours le dernier char d'une chaine)
    
# # puts updated_links


# doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))     # 
# doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|

    0.upto (updated_links.length -1) do |index|

    
    link_to_replace = "http://annuaire-des-mairies.com/95/sannois.html"  
    linkname_changed = link_to_replace.gsub('sannois.html', |index|) # Je sais changer le texte d'un lien et le remplacer*
    end


    puts linkname_changed

    # il va de 0 à nb de villes dans l'array (185)
#    il doit créer un index