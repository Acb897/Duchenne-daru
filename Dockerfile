FROM rubydata/minimal-notebook:94284f1ddacc
RUN whoami
USER root
ENV TAG=94284f1ddacc
COPY ./binder .
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get install -y libtool-bin autotools-dev autoconf
RUN bundle config   && bundle install --verbose 


