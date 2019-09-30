# require modules here
require "yaml"

def load_library(file_path)
  emoticon_hash = YAML.load_file(file_path)
  returned_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
    emoticon_hash.each do |emoticon_name, (english,japanese)|
      #p english
      #p japanese
      returned_hash["get_meaning"]["#{japanese}"] = "#{english}"
      returned_hash["get_emoticon"]["#{english}"] = "#{japanese}"
    end
    
    returned_hash
    p returned_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
end

def get_english_meaning
  # code goes here
end