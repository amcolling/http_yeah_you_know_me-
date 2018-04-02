# Iteration 0 - Hello, World
# Build a web application/server that:
#
# listens on port 9292
# responds to HTTP requests
# responds with a valid HTML response that displays the words Hello, World! (0) where the 0 increments each request until the server is restarted
require 'socket'

class Server

  attr_reader :server,
              :count,
              :client

  def initialize
    @server = TCPServer.new(9292)
    @counter = 0
    end


  def start_server
    @client = @server.accept
    puts "Ready for a request"
    request_lines = []
    while line = @client.gets and !line.chomp.empty?
      request_lines << line.chomp
    end
    message = response(request_lines)
    output_2 = output(message)
    headers_2 = headers(output_2)
    output_message(headers_2, output_2)
  end

  def headers(output)
    ["http/1.1 200 ok",
     "date: #{Time.now.strftime('%a, %e %b %Y %H:%M:%S %z')}",
     "server: ruby",
     "content-type: text/html; charset=iso-8859-1",
     "content-length: #{output.length}\r\n\r\n"].join("\r\n")
  end


  def response(request_lines)
    "<pre>" + "Hello World" + "</pre>"
  end


  def output(message)
    "<html><head></head><body>#{message}</body></html>"
  end


  def output_message(headers,output)
    client.puts headers
    client.puts output
  end

  # puts "Got this request:"
  # puts @request_lines.inspect
  #
  # puts "Sending response."
  #
  #   puts ["Wrote this response:", headers, output].join("\n")
  #   client.close
  #   puts "\nResponse complete, exiting."
  # end
end
  x = Server.new
  x.start_server
