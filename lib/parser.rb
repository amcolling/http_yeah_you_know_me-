require 'pry'
class Parser


  def initialize(server)
    @server = server
  end


  def verb(request_lines)
    request_lines[0]
  end

  def host(request_lines)
    request_lines[1]
  end

  def protocol(request_lines)
    request_lines[2]
  end

  def port(request_lines)
    request_lines[3]
  end

  def origin(request_lines)
    request_lines[4]
  end

  def accept(request_lines)
    request_lines[5]
  end

  def request_output(request_lines)

      verb = request_lines[0].split(" ")[0]
      path = request_lines[0].split(" ")[1]
      protocol = request_lines[0].split(" ")[2]
      host = request_lines.select {|line| line.start_with?("Host:") }[0].split(":")[1].strip
      port = request_lines.select {|line| line.start_with?("Host:") }[0].split(":")[2]
      origin = host
      accept = request_lines.select {|line| line.start_with?("Accept:") }[0]
      "<pre>" + "Verb: #{verb}\nPath: #{path}\nProtocol: #{protocol}\nHost: #{host}\nPort: #{port}\nOrigin: #{origin}\n#{accept}\n"  + "</pre>"
    end

    # def output(message)
    #   "<pre>" + "Verb: #{verb}\nPath: #{path}\nProtocol: #{protocol}\nHost: #{host}\nPort: #{port}\nOrigin: #{origin}\n#{accept}\n"  + "</pre>"
    #   # "<html><head></head><body>#{message} #{@parser} </body></html>"
    # end




end



  # response = http.request(request)
  # puts response.read_body

  #
  # def get_verb(request_lines)
  #   "Verb: get#{request_lines[0].split[0]} "
  # end
  #
  # def get_path(request_lines)
  #   server.router.determine_path(request_lines[0].split[0], request_lines[0].split[1])
  # end
  #
  #
  #
  #
  # def get_protocol(request_lines)
  #   "Protocol: #{request_lines[0].split[2]}"
  # end
  #
  # def get_host(request_lines)
  #   "Host:#{request_lines[1].split(":")[1]}"
  # end
  #
  # def get_port(request_lines)
  #   "Port: #{request_lines[1].split(":")[2]}"
  # end
  #
  # def get_origin(request_lines)
  #   "Origin:#{request_lines[1].split(":")[1]}"
  # end
  #
  # def get_accept(request_lines)
  #   accept = ""
  #   request_lines.each do |element|
  #     if element.include?("Accept:")
  #     accept += element
  #     end
  #   end
  #   "Accept:#{accept.split(":")[1]}"
  # end
  #
  # def get_content_length(request_lines)
  #   content_length = ""
  #   request_lines.each do |element|
  #     if element.include?("Content-Length:")
  #     content_length += element
  #     end
  #   end
  #   "#{content_length.split(": ")[1]}".to_i
  # end
  #
  # def final_response(request_lines)
  #   if get_path(request_lines) == "/"
  #     ("\n") + get_verb(request_lines) + ("\n") +
  #     "Path: #{get_path(request_lines)}" + ("\n") +
  #     get_protocol(request_lines) + ("\n") +
  #     get_host(request_lines) + ("\n") +
  #     get_port(request_lines) + ("\n") +
  #     get_origin(request_lines) + ("\n") +
  #     get_accept(request_lines) + ("\n")
  #   else
  #     get_path(request_lines)
  #   end
  # end
