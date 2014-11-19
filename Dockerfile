FROM csanchez/jenkins-swarm-slave
MAINTAINER Christophe Labouisse <christophe@labouisse.org>
USER root
RUN apt-get update && apt-get install -y bzip2 ruby ruby-dev make binutils libffi-dev gcc && rm -rf /var/lib/apt/lists
RUN gem install compass
RUN apt-get autoremove -y ruby-dev make binutils libffi-dev gcc
USER jenkins-slave
