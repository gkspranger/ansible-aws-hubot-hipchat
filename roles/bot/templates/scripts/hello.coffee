# {{ cfg_managed }}
# Description
#   Say "hello" or "good morning" to {{ name }}
#
# Commands:
#   (hello|(good )?morning)
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

module.exports = (robot) ->
  robot.respond /hello/i, (msg) ->
    back = msg.random hellos
    msg.send back.replace "%", msg.message.user.name
    
  robot.respond /(good )?morning/i, (msg) ->
    back = msg.random mornings
    msg.send back.replace "%", msg.message.user.name
