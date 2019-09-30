# require modules here
require "yaml"

def load_library(file_path)
  emoticon_hash = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticons = {}
    emoticon_hash.each do |emoticon_name, (english,japanese)|
      get_meaning[japanese] = {}
      get_emoticons[english] = {}
    end
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
end

def get_english_meaning
  # code goes here
end