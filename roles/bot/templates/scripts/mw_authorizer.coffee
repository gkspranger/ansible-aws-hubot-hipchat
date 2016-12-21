# {{ cfg_managed }}
# Description
#   Logs every command executed and by whom
#

module.exports = (robot) ->
  robot.listenerMiddleware (context, next, done) ->
    robot.logger.info "authorize event = user: #{context.response.message.user.name}/#{context.response.message.user.id}; command id: #{context.listener.options.id}"
    # via some YTBC RBAC tool, authorize a user's execution of this command
    next()
