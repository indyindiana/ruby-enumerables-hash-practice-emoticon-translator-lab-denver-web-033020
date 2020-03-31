# require modules here
require "pry"
require 'yaml'



def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticon {
    get_meaning => emoticons[]
    get_emoticon =>
  }
  
  binding.pry

    

  
  emoticons
end
     # code goes here
    
   

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  item = emoticons.values.find {|faces| faces[0] == emoticon}
  item == nil  ? "Sorry, that emoticon was not found" : item[1]
  # code goes here
end


def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  item = emoticons.find {|name, faces| faces[1] == emoticon }
  item == nil ? "Sorry, that emoticon was not found" : item[0]
  
  
  
  
  # code goes here
end