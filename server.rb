require 'socket'

server = TCPServer.new '127.0.0.1', 80

loop do
  client = server.accept
  client.puts 'Hello world!'
  client.puts "time is #{Time.now}"
  client.close
end
