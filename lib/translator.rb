# require modules here
require 'yaml'
require 'pry'

def load_library(emoticon_lib)
  emoticons = YAML.load_file(emoticon_lib)
    emoticon_hash = {}
  emoticons.each do |key, value|
    #binding.pry
    emoticon_hash[key] = {}
    emoticon_hash[key][:english] = value[0]
    emoticon_hash[key][:japanese] = value[1]
  end
  emoticon_hash
end


def get_japanese_emoticon(emoticon_file, emoticon)
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib[emoticon][:japanese]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
  # code goes here
end

def get_english_meaning(emoticon_file, emoticon)
  emoticon_lib = load_library(emoticon_file)
  english_meaning = emoticon_lib['get_meaning'][emoticon]
  english_meaning ? english_meaning : 'Sorry, that emoticon was not found'
  # code goes here
end
