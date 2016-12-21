# Description
#   Authorizes
#

http = require "http"

module.exports = (robot) ->
  robot.listenerMiddleware (context, next, done) ->
    http.get "http://localhost:8001/bot/authorize_user/", (res) ->
      robot.logger.info "authorize event = user: #{context.response.message.user.name}/#{context.response.message.user.id}; command id: #{context.listener.options.id}"
      robot.logger.info "authorize status code = #{res.statusCode}"
      
      if res.statusCode == 200
        next()
      else
        robot.messageRoom(context.response.message.user.room,
                          "#{context.response.message.user.name}, you do not have access to this command .. Please contact your bot administrator if you like to be added")
        done()
