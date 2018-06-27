FROM nginx 
 
RUN rm -rf /usr/share/nginx/html/* 
 
COPY conf/default.conf /etc/nginx/conf.d/ 
COPY --from=production-ui /usr/src/pika/build/ /usr/share/nginx/html 
 
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]