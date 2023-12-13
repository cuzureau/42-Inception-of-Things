puts "yoooooooooooooooooo"
# Import de l'environnement
if File.exist?('../confs/env.sh')
  puts "FILE EXISTS"
  File.foreach('../confs/env.sh') do |line|
    # Ignorer les lignes vides ou les lignes de commentaire
    next if line.strip.empty? || line.strip.start_with?("#")
    
    # Utiliser une regex pour ignorer les commentaires de fin de ligne
    match = line.match(/^export\s+(\w+)="?([^"#]+)"?/)
    next unless match
    
    key, value = match.captures
    # Supprime les espaces blancs potentiels et stock dans l'ENV
    ENV[key] = value.strip
    puts key
    puts ENV[key]
  end
end
puts "BIG FINISH"
