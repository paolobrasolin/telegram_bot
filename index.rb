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

uri = URI.parse url

uri.query = URI.encode_www_form payload

res = Net::HTTP.get_response uri

puts res

puts res.body #if res.is_a?(Net::HTTPSuccess)

puts 'Hello, this is a Ruby script.'
puts "Hook['params'] is populated with request parameters"
puts Hook['params']
