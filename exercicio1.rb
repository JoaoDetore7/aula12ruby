#!/usr/bin/env ruby

require 'json'

class Blog
  BLOG_DIR = 'blog_posts'.freeze

  def initialize
    Dir.mkdir(BLOG_DIR) unless Dir.exist?(BLOG_DIR)
  end

  def create_post(title, content)
    post = { title: title, content: content }

    File.open("#{BLOG_DIR}/#{title}.json", 'w') do |file|
      file.write(JSON.pretty_generate(post))
    end
  end

  def list_posts
    Dir.entries(BLOG_DIR).each do |post|
      puts post unless ['.', '..'].include?(post)
    end
  end

  def read_post(title)
    file = File.read("#{BLOG_DIR}/#{title}.json")
    post = JSON.parse(file)

    puts "Title: #{post['title']}"
    puts "Content: #{post['content']}"
  end
end

# Crie uma nova instância da classe Blog
my_blog = Blog.new

# Crie algumas postagens de blog
my_blog.create_post('Primeira Postagem', 'Esta é a primeira postagem do meu blog.')
my_blog.create_post('Segunda Postagem', 'Esta é a segunda postagem do meu blog.')

# Liste todas as postagens do blog
puts 'Listando todas as postagens do blog:'
my_blog.list_posts

# Leia uma postagem do blog
puts "Lendo a 'Primeira Postagem':"
my_blog.read_post('Primeira Postagem')