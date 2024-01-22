class PasswprdGenerator
    def initialize #inicalização do objeto se for necessário
    end

    # Logica para gerar a enha com base nas opções
    def generate_password (length, include_special_chars, include_numbers, include_uppercase)
    end

    #Logica para copiar o texto para a area de transferencia
    def copy_to_clipboard(text)
    end

    # logica para salvar a senha em um arquivo
    def save_to_file(password)
    end

    # logica principal da interface de linha de comando
    def start_cli
    end

end


PasswprdGenerator.new.start_cli
