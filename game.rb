def in_front
  puts "Vizzini says: \"Now, a clever man would put the poison into his own goblet, \nbecause he would know that only a great fool would reach for what he was given.\"\n\n"
  puts "\nDo you still want to drink the wine in front of you? y/n"

  print "> "
  choice = $stdin.gets.chomp.downcase

  if choice == "y"
    puts "\nVizzini suddenly exclaims: \"What in the world can that be?\"\n\n"
    puts "You look, but see nothing.\n\n"
    puts "You drink from your goblet.  Vizzini starts to laugh.\n\n"
    puts "Vizzini exclaims: \"I switched glasses when your back was turned. Ha! You fool!"
    puts "You fell victim to one of the classic blunders. The most famous is \"never get involved in a land war in Asia\", \nbut only slightly less well known is this - never go in against a Sicilian when death is on the line. Ahahaaaahaa!  Aa..\"\n\n"
    puts "Vizzini drops to the ground dead.  You win the battle of the wits."

  elsif choice == "n"
    puts "Vizzini looks at you distrustfully. \"Then you choose the wine opposite you?\" y/n"

    print "> "
    choice = $stdin.gets.chomp.downcase

    if choice == "y"
      opposite
    elsif choice == "n"
      puts "You drink the wine in front of you, albeit reluctantly."
      puts "Vizzini suddenly exclaims: \"What in the world can that be?\""
      puts "You look, but see nothing.\n"
      puts "You drink from your goblet.  Vizzini starts to laugh."
      puts "I switched glasses when your back was turned. Ha! You fool!"
      puts "You fell victim to one of the classic blunders. The most famous is \"never get involved in a land war in Asia\", but only slightly less well known is this - never go in against a Sicilian when death is on the line. Ahahaaaahaa!  Aa..\n\n"
      puts "Vizzini drops to the ground dead.  You win the battle of the wits."
    else
      puts "Vizzini gets impatient. You must choose! Enter (y)es or (n)o."
    end
  end
end

def opposite
  puts "Vizzini says: \"A clever man would put the poison into his own goblet, \nbecause he would know that only a great fool would reach for what he was given.\"\n\n"
  puts "You are not a great fool, and so reach for the glass opposite you and drink from it.\n\n"
  puts "You both salute each other, and drink.  \nMoments later, Vizzini drops dead.  \n\nYou win the battle of the wits."
end


def start
  puts "You are sitting in front of a short Sicilian called Vizzini.  In front of you are two goblets.\n\n"
  puts "Vizzini says: \"The battle of wits has begun.\nIt ends when you decide and we both drink, and find out who is right and who is dead.\"\n\n"
  puts "Do you pick the wine in front of (y)ou or (V)izzini?"

  print "> "
  choice = $stdin.gets.chomp.downcase

  if choice == "y"
    in_front
  elsif choice == "v"
    opposite
  else
    puts "This word, I do not think it means what you think it means.  Pick again."
    start
  end
end

start
