FROM alpine:3.14
WORKDIR /app
ENV ROCKETCHAT_URL='<ROCKETCHAT-URL>'
ENV ROCKETCHAT_CHANNEL='<ROCKETCHAT-CHANNEL>'
ENV ROCKETCHAT_USERID='<ROCKETCHAT-USERID>'
ENV ROCKETCAT_API_TOKEN='<ROCKETCAT-API-TOKEN>'
ENV ES_URL='<ES-URL>'
ENV STAGE='<STAGE>'
ENV ENCRYPTION_KEY=<'ENCRYPTION-KEY'>
ENV ENCRYPTION_BYTES=<'ENCRYPTION-BYTES'>
ENV ELASTIC_LOG_URL='<ELASTIC-LOG-URL>'
ENV ELASTIC_LOG_USER='<ELASTIC-LOG-USER>'
ENV ELASTIC_LOG_PASSWORD='<ELASTIC-LOG-PASSWORD>'
# RUN apk update && apk add git
RUN apk update && apk add --no-cache bash
RUN ls -ltra
COPY rocketchat ./
CMD ./rocketchat --rocketchat-url=${ROCKETCHAT_URL} --rocketchat-user=${ROCKETCHAT_USERID} --rocketchat-token=${ROCKETCHAT_API_TOKEN} --rocketchat-es-url=${ES_URL} --rocketchat-channel=${ROCKETCHAT_CHANNEL}