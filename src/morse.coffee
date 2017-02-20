# Description
#   Encode and decode morse
#
# Commands:
#   hubot encode <text> - encodes the given text to morse code
#   hubot decode <text> - decodes the given text from morse code
#
# Optional Configuration:
#   HUBOT_MORSE_SPACE - symbol for space, default: ' '
#   HUBOT_MORSE_LONG - symbol for long, default '-'
#   HUBOT_MORSE_SHORT - symbol for short, default '.'
#
# Notes:
#   morse format example: ... --- ... = SOS
#
# Author:
#   hashashin

xmorse = require('xmorse')


module.exports = (robot) ->
  option =
    space: process.env.HUBOT_MORSE_SPACE || ' '
    long: process.env.HUBOT_MORSE_LONG || '-'
    short: process.env.HUBOT_MORSE_SHORT || '.'

  robot.respond /encode (.*)/i, (msg) ->
    msg.reply xmorse.encode(msg.match[1], option)

  robot.respond /decode (.*)/i, (msg) ->
    msg.reply xmorse.decode(msg.match[1], option)

