FROM  ljhiyh/chat-client-base

RUN mkdir -p /home/node/chat-client

COPY ./ /home/node/chat-client/.

RUN cp /home/node/chat-client/src/app/images/apple.jpg /home/node/chat-client/src/app/images/main.jpg

WORKDIR /home/node/chat-client

EXPOSE 4200

CMD cd /home/node/chat-client && \
    cp /home/external/environment.ts src/environments/environment.ts && \
    npm start

#CMD ['npm start']
#ENTRYPOINT ['npm start']
