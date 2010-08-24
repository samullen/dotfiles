require 'rubygems'
require 'wirble'
require 'pp'

def load_irbrc(path)
  return if (path == ENV["HOME"]) || (path == '/')

  load_irbrc(File.dirname path)

  irbrc = File.join(path, ".irbrc")

  load irbrc if File.exists?(irbrc)
end

Wirble.init
Wirble.colorize

load_irbrc(Dir.pwd)

