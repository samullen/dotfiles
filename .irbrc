require 'rubygems'

require 'irb/completion'
require 'awesome-print'

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

$LOAD_PATH.push('.')

def load_irbrc(path)
  return if (path == ENV["HOME"]) || (path == '/')

  load_irbrc(File.dirname path)

  irbrc = File.join(path, ".irbrc")

  load irbrc if File.exists?(irbrc)
end

class Object
  def interesting_methods
    (self.methods - Object.instance_methods).sort
  end
end

class Array
  def self.test_list(x=10)
    (1..x).to_a    
  end
end
class Hash
  def self.test_list
    h = Hash.new
    (:a..:z).to_a.each {|x| h[x] = rand(100) }
    h
  end
end

load_irbrc(Dir.pwd)

