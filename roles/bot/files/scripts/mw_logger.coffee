# Description
#   Logs every command executed and by whom
#

module.exports = (robot) ->
  robot.listenerMiddleware (context, next, done) ->
    robot.logger.info "bot event = user: #{context.response.message.user.name}/#{context.response.message.user.id}; command id: #{context.listener.options.id}; command text: #{context.response.message.text}"
    # next step is to send this data to the local database via localhost:8001/bot/
    next()
