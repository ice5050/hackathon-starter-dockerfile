FROM bitnami/node:6.3.0-r0

ENV APP_HOME /srv/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# Clone hackathon-starter to APP_HOME and Install dependencies
RUN git clone --depth=1 https://github.com/sahat/hackathon-starter.git $APP_HOME
RUN npm install

CMD node app.js
