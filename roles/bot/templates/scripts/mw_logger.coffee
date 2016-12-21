# {{ cfg_managed }}
# Description
#   Logs every command executed and by whom
#

module.exports = (robot) ->
  robot.listenerMiddleware (context, next, done) ->
    robot.logger.info "user: #{context.response.message.user.name}; executed: #{context.response.message.text}"
    next()
