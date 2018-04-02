conn = Faraday.new(...) do |f|
  f.adapter :httpclient do |client| # yields HTTPClient
    client.keep_alive_timeout = 20
    client.ssl_config.timeout = 25
  end
end
