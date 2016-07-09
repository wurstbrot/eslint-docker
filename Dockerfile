FROM node

MAINTAINER Timo Pagel <dependencycheckmaintainer@timo-pagel.de>
RUN npm install -g eslint && npm install -g eslint-plugin-scanjs-rules && npm install -g eslint-plugin-no-unsafe-innerhtml && npm install -g babel-eslint 

RUN useradd -ms /bin/bash --home /eslint dockeruser 
COPY .eslintrc /eslint

USER dockeruser

CMD eslint

