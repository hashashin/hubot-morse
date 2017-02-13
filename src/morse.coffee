# Description
#   Encode and decode morse
#
# Commands:
#   hubot encode <text> - encodes the given text to morse code
#   hubot decode <text> - decodes the given text from morse code
#
# Notes:
#   morse format example: ... --- ... equal SOS
#
# Author:
#   hashashin

xmorse = require('xmorse')

module.exports = (robot) ->
  option =
    space: ' '
    long: '-'
    short: '.'

  robot.respond /encode (.*)/i, (msg) ->
    msg.reply xmorse.encode(msg.match[1], option)

  robot.respond /decode (.*)/i, (msg) ->
    msg.reply xmorse.decode(msg.match[1], option)

