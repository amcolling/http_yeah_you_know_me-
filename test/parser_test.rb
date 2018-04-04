require './lib/server'
require './lib/parser'


class  TestParser< Minitest::Test
  def test_it_exists
  parser = Parser.new
  assert_instance of Parser, parser
  end

  def test_verb
    parser = Parser.new
    assert_equal "POST", Parser, parser
  end

  def test_host
    parser = Parser.new
    assert_equal "/", Parser, parser
  end 
  # def test_strings_into_hash
  #   parser = Parser.new
  #   assert_equal request_lines, Parser, parser
  # end


end






    # <pre>
    # Verb: POST
    # Path: /
    # Protocol: HTTP/1.1
    # Host: 127.0.0.1
    # Port: 9292
    # Origin: 127.0.0.1
    # Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
    # </pre>
