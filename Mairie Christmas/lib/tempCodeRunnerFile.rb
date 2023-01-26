
# doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))     # Scrap adresses email

#     nodeset = doc.css('a.lientxt')  # Je récupère ça en brut : <a class="lientxt" href="./95/arnouville-les-gonesse.html">ARNOUVILLE LES GONESSE</a>
#     all_links = nodeset.map{ |i| i['href'] } # De la ligne du haut, je ne garde que ce qui commence par href

#     updated_links = all_links.map {|x| x[1..-1]} # Je supprime le '.' en créant un nouveau array qui commencera par 1 (mon nouveau "0") et -1 (toujours le dernier char d'une chaine)
    
# # puts updated_links


# doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))     # 
# doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|