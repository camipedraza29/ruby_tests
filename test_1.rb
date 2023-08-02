PIEDRA = "1"
PAPEL = "2"
TIJERA = "3"

options = [PIEDRA,PAPEL,TIJERA]
user_choice = nil



while user_choice != "0"

    puts "Escribe 1 para Piedra, 2 para Papel o 3 para Tijera"

    user_choice = gets.chomp

    puts "Escogiste #{user_choice}"
    
    if user_choice == "0"
        exit
    end

    if !options.include?(user_choice) 
        puts "Burro"
        break
    end

    pc_choice = options.sample

    puts "El pc escogio #{pc_choice}"

    if user_choice == pc_choice
        puts "Empate"
        exit
    end

    if (user_choice == PIEDRA && pc_choice == PAPEL) || (user_choice == PAPEL && pc_choice == TIJERA) || (user_choice == TIJERA && pc_choice == PIEDRA)
        puts "Perdiste"
    else
        puts "Ganaste"
    end
end

