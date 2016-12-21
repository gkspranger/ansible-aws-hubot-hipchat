# Description
#   Logs every command executed and by whom
#

http = require "http"

module.exports = (robot) ->
  robot.listenerMiddleware (context, next, done) ->
    
    http.get "http://localhost:8001/bot/authorize_user", (res) ->
      robot.logger.info "authorize event = user: #{context.response.message.user.name}/#{context.response.message.user.id}; command id: #{context.listener.options.id}"
      robot.logger.info "authorize status code = #{res.statusCode}"
      
      # via some YTBC RBAC tool, authorize a user's execution of this command
      next()
