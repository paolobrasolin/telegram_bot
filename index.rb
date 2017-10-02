# import requests

# user=Hook['params']['message']['from']['first_name']
# testo=u'\U0001F916'+Hook['params']['message']['text'].replace(" ", "").upper()+user.upper()
# chatID=Hook['params']['message']['chat']['id']
# URL='https://api.telegram.org/bot' + Hook['env']['autonomous_war_domination_robot_token'] + '/sendMessage'
# richiesta=requests.get(URL,verify=False,data={'chat_id':chatID,'text':testo})

puts 'Hello, this is a Ruby script.'
puts "Hook['params'] is populated with request parameters"
puts Hook['params']
