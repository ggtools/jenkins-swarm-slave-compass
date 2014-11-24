FROM csanchez/jenkins-swarm-slave
MAINTAINER Christophe Labouisse <christophe@labouisse.org>
USER root

RUN apt-get update && apt-get install -y npm git bzip2 ruby ruby-dev make binutils libffi-dev gcc && rm -rf /var/lib/apt/lists

RUN ln -s /usr/bin/nodejs /usr/local/bin/node

RUN gem install compass
RUN npm install -g grunt-cli bower phantomjs

RUN apt-get autoremove -y ruby-dev make binutils libffi-dev gcc
USER jenkins-slave
