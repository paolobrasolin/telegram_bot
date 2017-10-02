require "openssl"
# puts OpenSSL::OPENSSL_VERSION
# puts "SSL_CERT_FILE: %s" % OpenSSL::X509::DEFAULT_CERT_FILE
# puts "SSL_CERT_DIR: %s" % OpenSSL::X509::DEFAULT_CERT_DIR

require 'net/http'

token = Hook['env']['autonomous_war_domination_robot_token']

# chat_id = Hook['params']['message']['chat']['id']
# user = Hook['params']['message']['from']['first_name']
# text = Hook['params']['message']['text']

chat_id = "asd"
user = "asd"
text = "asd"

url = 'https://api.telegram.org/bot' + token + '/sendMessage'

payload = { chat_id: chat_id, text: text }

uri = URI url
uri.query = URI.encode_www_form payload


http = Net::HTTP.start uri.host, uri.port,
                       use_ssl: uri.scheme == 'https',
                       verify_mode: OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new uri

# response = http.request request

# puts response



puts 'Hello, this is a Ruby script.'
puts "Hook['params'] is populated with request parameters"
puts Hook['params']
