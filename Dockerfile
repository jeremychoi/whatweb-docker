FROM ruby:2.6

ENV WHATWEB_VERSION v0.5.1

RUN gem install rchardet mongo json
RUN git clone --branch $WHATWEB_VERSION https://github.com/urbanadventurer/WhatWeb.git /src/whatweb

WORKDIR /src/whatweb

CMD /src/whatweb/whatweb
RUN bundle install
