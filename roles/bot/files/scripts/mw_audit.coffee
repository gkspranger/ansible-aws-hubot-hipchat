# Commands:
#   None

AUDIT_CHANNEL = process.env.AUDIT_CHANNEL or '#botlog'

module.exports = (robot) ->
  # log hubot commands, with issuer and chatroom
  robot.listenerMiddleware (context, next, done) ->
    room = context.response.message.user.room
    issuer = context.response.message.user.name
    cmd = context.response.message.text
    switch room
      when AUDIT_CHANNEL # ignore AUDIT_CHANNEL to avoid recursion
      else
        robot.messageRoom(AUDIT_CHANNEL, "#{room}: <#{issuer}> #{cmd}")
        
    next()

  # log hubot's answer for the command that hubot listened to earlier
  robot.responseMiddleware (context, next, done) ->
    return unless context.plaintext?
    switch context.response.envelope.room
      when AUDIT_CHANNEL # ignore AUDIT_CHANNEL to avoid recursion
      else
        robot.messageRoom(AUDIT_CHANNEL, s) for s in context.strings

    next()
