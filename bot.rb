require 'discordrb'

bot = Discordrb::Commands::CommandBot.new(
  token: "NTc1OTMwNzI2ODM5NzQ2NTgx.XNPHgw.6Tj7waA_kw7HZX2_qGr8SiPqEk4",
  client_id: 575930726839746581,
  prefix: '/')

bot.message(with_text: 'オレのソウルメイト') do |event|
  event.respond 'オレ'
end

bot.command(:rb) do |event, *code|
  ret = eval(code.join(' '))
  event.respond ret
end

bot.run




