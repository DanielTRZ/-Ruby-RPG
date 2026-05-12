














player_hp = 30
monster_hp = 25
potions = 3

puts "🧙‍♂️ Witaj w Ruby RPG!"
puts "Przed Tobą stoi potwór! 🐉"

while player_hp > 0 && monster_hp > 0
  puts "\nTwoje HP: #{player_hp}"
  puts "HP potwora: #{monster_hp}"
  puts "Mikstury: #{potions}"
  puts "\nWybierz akcję:"
  puts "1 - Atak ⚔️"
  puts "2 - Obrona 🛡️"
  puts "3 - Leczenie 🧪"

  print "> "
  choice = gets.to_i

  monster_damage = rand(4..8)

  case choice
  when 1
    damage = rand(5..10)
    monster_hp -= damage
    puts "Zadałeś #{damage} obrażeń!"
    player_hp -= monster_damage
    puts "Potwór zadał #{monster_damage} obrażeń!"
  when 2
    reduced = monster_damage / 2
    player_hp -= reduced
    puts "Obroniłeś się! Otrzymujesz tylko #{reduced} obrażeń."
  when 3
    if potions > 0
      heal = rand(6..12)
      player_hp += heal
      potions -= 1
      puts "Wyleczyłeś się o #{heal} HP!"
      player_hp -= monster_damage
      puts "Potwór zadał #{monster_damage} obrażeń!"
    else
      puts "Nie masz mikstur!"
    end
  else
    puts "Nieprawidłowy wybór!"
  end
end

if player_hp > 0
  puts "\n🎉 Wygrałeś walkę!"
else
  puts "\n💀 Zostałeś pokonany..."
end
