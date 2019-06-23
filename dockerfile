FROM docker:latest

RUN apk add --update nodejs yarn

ENV HEROKU_CLI_VERSION '7.25.0'
ENV HEROKU_TOKEN = ""
RUN yarn global add heroku@$HEROKU_CLI_VERSION

ADD run.sh .
ENTRYPOINT ["sh", "run.sh" ]