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
  english_meaning = ''
  updated_library = load_library(file_path)
  #p updated_library['wink']
  updated_library.each do |name_of, values|
    values.each do |language, elements|
      if elements == jap_emoticon
        english_meaning = name_of
      end
    end
  end
  if english_meaning == ''
    return 'Sorry, that emoticon was not found'
  else
    return english_meaning
  end
end
get_english_meaning('./lib/emoticons.yml',"(＾ｖ＾)")
