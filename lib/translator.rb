# require modules here
require "yaml"

def load_library(file_path)
  emoticon_hash = YAML.load_file(file_path)
  returned_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
    emoticon_hash.each do |emoticon_name, (english,japanese)|
      returned_hash["get_meaning"]["#{japanese}"] = "#{emoticon_name}"
      returned_hash["get_emoticon"]["#{english}"] = "#{japanese}"
    end
    
    returned_hash
end


def get_japanese_emoticon(file_path, emoticon)
  translation_hash = load_library(file_path)
  translation_hash["get_emoticon"][emoticon]
end



def get_english_meaning
  # code goes here
end