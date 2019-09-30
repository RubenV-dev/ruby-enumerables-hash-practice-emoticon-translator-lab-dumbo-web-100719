# require modules here
require "yaml"

def load_library(file_path)
  emoticon_hash = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticon = {}
    emoticon_hash.each do |emoticon_name, (english,japanese)|
      get_meaning[japanese] = {}
      get_emoticon[english] = {}
    end
    returned_hash = {}
    returned_hash.merge(get_meaning)
    returned_hash.merge(get_emoticon)
    returned_hash
    p returned_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
end

def get_english_meaning
  # code goes here
end