require "openssl"
require 'net/http'


puts "YO!" and return unless Hook['params']['message']

chat_id = Hook['params']['message']['chat']['id']
user = Hook['params']['message']['from']['first_name']
text = Hook['params']['message']['text']



text = "Pace in terra!"




token = Hook['env']['autonomous_war_domination_robot_token']
url = 'https://api.telegram.org/bot' + token + '/sendMessage'
uri = URI url
payload = { chat_id: chat_id, text: text }

http = Net::HTTP.start uri.host, uri.port,
                       use_ssl: uri.scheme == 'https',
                       verify_mode: OpenSSL::SSL::VERIFY_NONE

uri.query = URI.encode_www_form payload
request = Net::HTTP::Get.new uri.path + '?' + uri.query
response = http.request request

# puts response

# puts 'Hello, this is a Ruby script.'
# puts "Hook['params'] is populated with request parameters"
# puts Hook['params']
