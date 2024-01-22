require 'securerandom'
class PasswordGenerator
    def initialize #inicalização do objeto se for necessário
    end

    # Logica para gerar a enha com base nas opções
    def generate_password (length, include_special_chars, include_numbers, include_uppercase)
        chars = 'abcdefghijklmnopqrstuvwxyz'
        chars += "ABCDEFGHIJKLMNOPQRSTUVWXYZ" if include_uppercase
        chars += "0123456789" if include_numbers
        chars += '!@#$%^&*()_-+=[]{}|;:,.<>?/' if include_special_chars

        password = ''
        length.times { password += chars[SecureRandom.random_number(chars.length)]}
        password
    end

    #Logica para copiar o texto para a area de transferencia
    def copy_to_clipboard(text)
    end

    # logica para salvar a senha em um arquivo
    def save_to_file(password)
    end

    # logica principal da interface de linha de comando
    def start_cli
        puts "Bem Vindo ao Gerador de Senhas!"

        print "Comprimento da Senha: "
        length = gets.chomp.to_i

        print "Incluir Caracteres Especiais? (y/n): "
        include_special_chars = gets.chomp.downcase == 'y'

        print "Incluir Numeros? (y/n): "
        include_numbers = gets.chomp.downcase == 'y'

        print "Incluir Letras Maiusculas? (y/n): "
        include_uppercase =  gets.chomp.downcase == 'y'

        password = generate_password(length, include_special_chars, include_numbers, include_uppercase)

        puts "\nSenha gerada: #{password}"

        print "Copiar para area de transferencia? (y/n): "
        copy_to_clipboard(password) if gets.chomp.downcase == 'y'

        print "Salvar em um arquivo? (y/n): "
        save_to_file(password) if gets.chomp.downcase == 'y'

        puts "Obrigado por usar o gerador de senhas!"

    end

end


PasswordGenerator.new.start_cli
