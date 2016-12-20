# {{ cfg_managed }}
# Description
#   Ask {{ name }} who you are
#
# Commands:
#   who am i
#

module.exports = (robot) ->
  robot.respond /who am i/i, (msg) ->
    msg.send "your name is %".replace "%", msg.message.user.name
    msg.send "your id is %".replace "%", msg.message.user.id
    msg.send "your email address is %".replace "%", msg.message.user.email_address
    msg.send "you are in room %".replace "%", msg.message.user.room
