FROM nginx 
 
RUN rm -rf /usr/share/nginx/html/* 
 
COPY conf/default.conf /etc/nginx/conf.d/ 
 
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]