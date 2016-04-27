require 'yaml'
module Mru
  module Fuf
    class Data
      def self.load(type, limit: 1000, reverse: false)
        path = path_of_type(type)
        raise "Nothing Dir: [#{DIR}]" unless Dir.exist? DIR
        raise "Nothing File: #{path}" unless File.readable? path

        range = reverse ? (limit * -1)..-1 : 0..limit 

        buf = []
        IO.readlines(path)[range].tap{|x| break x.reverse if reverse }.each do |line|
          buf << YAML.load(line)['word']
        end
        buf
      end

      def self.path_of_type(type)
        "#{DIR}/#{type}"
      end
    end
  end
end
