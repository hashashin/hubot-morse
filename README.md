# hubot-morse [![Build Status](https://img.shields.io/travis/hashashin/hubot-morse.svg?maxAge=2592000&style=flat-square)](https://travis-ci.org/catops/hubot-morse) [![npm](https://img.shields.io/npm/v/hubot-morse.svg?maxAge=2592000&style=flat-square)](https://www.npmjs.com/package/hubot-morse)

Encode and decode morse

See [`src/morse.coffee`](src/morse.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-morse --save`

Then add **hubot-morse** to your `external-scripts.json`:

```json
["hubot-morse"]
```

## Sample Interaction

```
user1>> hubot encode sos
hubot>> .../---/...
```

```
user1>> hubot decode .../---/...
hubot>> SOS
```
