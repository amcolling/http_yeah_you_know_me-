require 'pry'
class Parser
  attr_reader     :request_lines,
                  :router,
                  :server

  def initialize(server)
    @server = server
  end

  def get_verb
    parser.get_verb
    end


  # response = http.request(request)
  # puts response.read_body
  # def make_diagnostics
  #   #get verb
  #   #get Path
  #   #get Port
  # end

  # def get_verb(request_lines)
  #   "Verb: "POST"#{request_lines[0].split[0]} "
  # end

  def get_path(request_lines)
    server.router.determine_path(request_lines[0].split[0], request_lines[0].split[1])
  end


end

#     message = response(request_lines)
#     output_2 = output(message)
#     headers_2 = headers(output_2)
#     output_message(headers_2, output_2)
#   end
#
#
#   def get_protocol(request_lines)
#     "Protocol: #{request_lines[0].split[2]}"
#   end
#
#   def get_host(request_lines)
#     "Host:#{request_lines[1].split(":")[1]}"
#   end
#
#   def get_port(request_lines)
#     "Port: #{request_lines[1].split(":")[2]}"
#   end
#
#   def get_origin(request_lines)
#     "Origin:#{request_lines[1].split(":")[1]}"
#   end
#
#   def get_accept(request_lines)
#     accept = ""
#     request_lines.each do |element|
#       if element.include?("Accept:")
#       accept += element
#       end
#     end
#     "Accept:#{accept.split(":")[1]}"
#   end
#
#   def get_content_length(request_lines)
#     content_length = ""
#     request_lines.each do |element|
#       if element.include?("Content-Length:")
#       content_length += element
#       end
#     end
#     "#{content_length.split(": ")[1]}".to_i
#   end
#
#   def final_response(request_lines)
#     if get_path(request_lines) == "/"
#       ("\n") + get_verb(request_lines) + ("\n") +
#       "Path: #{get_path(request_lines)}" + ("\n") +
#       get_protocol(request_lines) + ("\n") +
#       get_host(request_lines) + ("\n") +
#       get_port(request_lines) + ("\n") +
#       get_origin(request_lines) + ("\n") +
#       get_accept(request_lines) + ("\n")
#     else
#       get_path(request_lines)
#     end
#   end
# end
