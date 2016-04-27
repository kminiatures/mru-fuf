require "mru/fuf/version"
require "mru/fuf/data"

module Mru
  module Fuf
    DIR      = File.expand_path "~/.vim-fuf-data/mrufile"
    ITEMS    = "items"
    ITEMDIRS = "itemdirs"

    def self.types
      [ITEMS,ITEMDIRS]
    end
  end
end
