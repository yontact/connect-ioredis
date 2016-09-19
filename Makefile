
index.html: lib/connect-redis.js
	dox \
		--title "Connect ioRedis" \
		--desc "Redis session store backed by [ioredis](https://github.com/luin/ioredis) which support sentinels and clusters." \
		--ribbon "https://yontact/connect-ioredis" \
		$< > $@
