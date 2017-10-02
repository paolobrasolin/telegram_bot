require 'net/http'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

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

Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
  request = Net::HTTP::Get.new uri
  response = http.request request # Net::HTTPResponse object
  puts response.body #if res.is_a?(Net::HTTPSuccess)
end



puts 'Hello, this is a Ruby script.'
puts "Hook['params'] is populated with request parameters"
puts Hook['params']
