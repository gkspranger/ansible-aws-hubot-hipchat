# {{ cfg_managed }}
# Description
#   Say "hello" or "good morning" to {{ name }}
#
# Commands:
#   (good )?(night|evening)
#

hellos = [
  "Well hello there, %",
  "Hey %, Hello",
  "Good day, %"
]

mornings = [
  "Good morning, %",
  "Good morning to you too, %"
]

nights = [
  "Good night, %",
  "Good night to you too, %",
  "Good evening, %",
  "Good evening to you too, %"
]

module.exports = (robot) ->
  robot.respond /hello/i, id: "hello.hello", (msg) ->
    back = msg.random hellos
    msg.send back.replace "%", msg.message.user.name
    
  robot.respond /(good )?morning/i, id: "hello.morning", (msg) ->
    back = msg.random mornings
    msg.send back.replace "%", msg.message.user.name

  robot.respond /(good )?(night|evening)/i, id: "hello.night", (msg) ->
    back = msg.random nights
    msg.send back.replace "%", msg.message.user.name
