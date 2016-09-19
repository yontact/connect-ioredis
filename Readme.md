# Connect ioRedis

connect-ioredis is a Redis session store backed by [ioredis](https://github.com/luin/ioredis), and is insanely fast :). Requires redis >= `2.0.0` for the _SETEX_ command.

Since this is forked from connect-redis, now we only modified the following version to support ioredis:

- 1.4.5, which is compatible with Sails.js v0.11

## Installation

	  $ npm install connect-ioredis

## Options
  
  - `client` An existing redis client object you normally get from `redis.createClient()`
  - `host` Redis server hostname
  - `port` Redis server portno
  - `ttl` Redis session TTL in seconds
  - `db` Database index to use
  - `pass` Password for Redis authentication
  - `prefix` Key prefix defaulting to "sess:"
  - `sentinels` Redis sentinels array
  - `name` Redis sentinels name
  - `hosts` Redis cluster hosts array, with object of `host` and `port`
  - ...    Remaining options passed to the redis `new Redis()` method.

## Usage

 Due to npm 1.x changes, we now need to pass connect to the function `connect-ioredis` exports in order to extend `connect.session.Store`:

    var connect = require('connect')
	 	  , RedisStore = require('connect-ioredis')(connect);

    connect()
      .use(connect.session({ store: new RedisStore(options), secret: 'keyboard cat' }))
 

 This means express users may do the following, since `express.session.Store` points to the `connect.session.Store` function:
 
    var RedisStore = require('connect-ioredis')(express);

# License

  MIT
