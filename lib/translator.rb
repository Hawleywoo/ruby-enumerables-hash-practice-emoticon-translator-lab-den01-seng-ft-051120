# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  # code goes here
  updated_library = {}
  library_hash = YAML.load_file(file_path)
  library_hash.each do |key, values|
    updated_library[key] = {
      :english => library_hash[key][0],
      :japanese => library_hash[key][1]}
  end
  updated_library
end

def get_japanese_emoticon
  # code goes here

end

def get_english_meaning(file_path, jap_emoticon)
  # code goes here
  updated_library = load_library(file_path)
  #p updated_library['wink']
  updated_library.each do |name_of, values|
    puts name_of
    puts values
    values.each do |language, elements|
      puts language
      puts elements
      if language == :english
        puts elements

      end


    end

    #p item[:english].class
    #p item[:japanese].class
    #p name[item][:english]
  end
end
get_english_meaning('./lib/emoticons.yml',"(＾ｖ＾)")
