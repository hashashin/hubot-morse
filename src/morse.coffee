# Description
#   Encode and decode morse
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET - Describe any optional/required environment variables.
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   hashashin

xmorse = require('xmorse')

module.exports = (robot) ->

  robot.respond /encode (.*)/i, (msg) ->
    msg.reply xmorse.encode(msg.match[1])

  robot.respond /decode (.*)/i, (msg) ->
    msg.reply xmorse.decode(msg.match[1])

