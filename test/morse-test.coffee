Helper = require 'hubot-test-helper'
sinon = require 'sinon'
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/morse.coffee')

describe 'morse', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'encode morse', ->
    @room.user.say('alice', '@hubot encode sos').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot encode sos']
        ['hubot', '@alice ... --- ...']
      ]

  it 'decode morse', ->
    @room.user.say('alice', '@hubot decode ... --- ...').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot decode ... --- ...']
        ['hubot', '@alice SOS']
      ]
