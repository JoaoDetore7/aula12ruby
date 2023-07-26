class InvalidBookError < StandardError
    def initialize(msg = "O objeto não é um livro válido.")
      super
    end
end

    class Book
        attr_accessor :title, :author
    
        def initialize(title, author)
        @title = title
        @author = author
        end
    end

        class Library
            def initialize
            @books = []
            end
        
            def adicionar_livro(book)
            raise InvalidBookError unless book.is_a?(Book)
            @books << book
            end
        
            def buscar_livro(title)
            finded_book = @books.find { |book| book.title == title }
            raise StandardError, "Livro não encontrado na biblioteca." if finded_book.nil?
            finded_book
            end
        end

            begin
                lib = Library.new
            
                
                livro1 = Book.new("Dom Quixote", "Miguel de Cervantes")
                livro2 = Book.new("1984", "George Orwell")
                livro3 = Book.new("O Senhor dos Anéis", "J.R.R. Tolkien")
            
                lib.adicionar_livro(livro1)
                lib.adicionar_livro(livro2)
                lib.adicionar_livro(livro3)
            
                lib.adicionar_livro("Não sou um livro")
                
                livro = lib.buscar_livro("1984")
                livro_encontrado = lib.buscar_livro("1984")
                puts "#{livro.title}, #{livro.author}"
            
            rescue InvalidBookError => e
                puts "Erro: #{e.message}"
            rescue StandardError => e
                puts "Erro: #{e.message}"
            end