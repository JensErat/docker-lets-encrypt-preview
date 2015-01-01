# Lets Encrypt Demo Client as Docker Image

(c) 2015 Jens Erat <email@jenserat.de>, MIT license

[Let’s Encrypt](https://letsencrypt.org/) is a free, automated, and open certificate authority (CA), run for the public’s benefit. Let’s Encrypt is a service provided by the Internet Security Research Group (ISRG). _(Taken from the Let's Encrypt about page)_

This Docker image packages the [letsencrypt preview client](https://github.com/letsencrypt/lets-encrypt-preview) together with required dependenices and an Apache 2 web server for easy evaluation and testing of the client.

## Usage

Run the example publishing ports 80 and 443, and set an environment variable `servername` to the host name of your machine. The host name must be resolvable from DNS and reachable from the internet.

    docker run -ti \
      --env servername=www.example.com \
      --publish 80:80 \
      --publish 443:443 \
      jenserat/lets-encrypt

Apache's default web site will automatically be reconfigrued for your `$servername`. When Apache 2 is started, you will be dropped to a bash. The `letsencrypt` client is already present in your path. See `letsencrypt --help`, the [letsencrypt README on GitHub](https://github.com/letsencrypt/lets-encrypt-preview#command-line-usage) and the [official web site](https://letsencrypt.org/howitworks/) for details.

No volumes are exported for persistance. If you've got any use case requiring persistance, feel free to provide a patch or issue a bug report.
