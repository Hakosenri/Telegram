# coding: UTF-8
require 'telegram/bot'

token = '1929560920:AAH2jhWkadyddy6JUqFlP1Jqmu04bn8uz-Y'

answer = [
    "Что-угодно",
    "У меня константные ответы, сори"
]
Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
        case message.text
        when '/start', '/begin'
            bot.api.send_message(
            chat_id: message.chat.id,
            text: "Hello, #{message.from.first_name}")
        else
            bot.api.send_message(
            chat_id: message.chat.id,
            text: answer.sample)
        end
    end
end