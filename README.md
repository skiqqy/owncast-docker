# owncast-docker
My owncast docker image that I use when streaming.

## Building
Simply run something like,
```
$ sudo docker build -t "owncast:latest" .
```

## Using
Something like,
```
$ docker run --name skiqqy_instance \
		-p 8080:8080 \
		-p 1935:1935 \
		--env DEV=0 \
		skiqqy:latest
```

Once the image has been built and run, go to `http://localhost:8080/admin`, you will be
prompted for login details, they are:
* user: admin
* password: abc123

It is highly recommended you change the password (aka the key) once logged in.
This can be done here `http://localhost:8080/admin/config-server-details/` under
`Stream Key`.
