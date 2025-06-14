require 'socket'

class WebServer
  def tcp_request_response
    server = TCPSocket.open('localhost', 80)

    request = 'Hello World!'
    server.puts(request)

    server.gets
    server.close
  end
end

webApp = WebServer.new
webApp.tcp_request_response
