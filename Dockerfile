FROM developeranaz/qbittorrent-to-rclone:superbeta
ENV DEBIAN_FRONTEND=noninteractive
RUN export PATH=$PATH:/usr/local/go/bin
#emergency envs
ARG username="developeranaz"
ARG password="developeranaz"
ARG PORT="8080"
ARG GITCLONE="https://github.com/developeranaz/test-108898214"
ARG REPONAME="test-108898214"
ARG BRANCH="cf.agro-and-individual.nginx.index"
ENV username="developeranaz"
ENV password="developeranaz"
ENV PORT="8080"
ENV GITCLONE="https://github.com/developeranaz/test-108898214"
ENV REPONAME="test-108898214"
ENV BRANCH="cf.agro-and-individual.nginx.index"
RUN wget -O /usr/bin/cloudflared "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64"; chmod +x /usr/bin/cloudflared 
RUN apt update 
RUN apt install jupyter -y
RUN apt install nginx -y
CMD jupyter notebook --ip=0.0.0.0 --port=$(echo $(echo $PORT)) --NotebookApp.token='' --NotebookApp.password=''
