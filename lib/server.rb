
require 'socket'
require './lib/parser'

class Server

  attr_reader :server,
              :hello_counter,
              :client,
              :parser

  def initialize
    @server = TCPServer.new(9292)
    @hello_counter = 0
    @counter = 0
    @parser = Parser.new(self)
    end



  def start_server
    @counter += 1
    @hello_counter += 1
    @client = @server.accept
    request_lines = []
    while line = @client.gets and !line.chomp.empty?
      request_lines << line.chomp
    end
    puts request_lines
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
      # hello_world
    make_diagnostics(request_lines)
    end

  def hello_world(request_lines)
    # "<pre>" + "Hello World(#{hello_counter})" + "</pre>"
    "<pre>#{verb}<br>#{host}" + "</pre>"
  end

  def make_diagnostics(request_lines)
    request_lines
  end



  def output(message)
    # "<html><head></head><body><pre>" + "Verb: #{verb}\nPath: #{path}\nProtocol: #{message}\nHost: #{host}\nPort: #{port}\nOrigin: #{origin}\n#{accept}\n"  + "</pre></body></html>"
    "<html><head></head><body>#{message} #{@parser} </body></html>"
  end


  def output_message(output, headers)
    client.puts output
    client.puts headers
  end

  def request_output
    request_output
  end

  def server_response(client, output, response)
  client.puts output
  client.close
  @tcp_server.close if response == "Total Requests:"
  end

  # puts ["Wrote this response:", output_message].join("\n")
  # client.close
  # puts "\nResponse complete, exiting."




end
  x = Server.new
  loop do
    puts "Ready for request"
    x.start_server
  end
