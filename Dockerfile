FROM developeranaz/qbittorrent-to-rclone:superbeta
RUN export PATH=$PATH:/usr/local/go/bin
#emergency envs
ENV username="developeranaz"
ENV password="developeranaz"
ENV PORT="8080"
ENV GITCLONE="https://github.com/developeranaz/test-108898214"
ENV REPONAME="test-108898214"
ENV BRANCH="cf.agro-and-individual.nginx.index"

CMD cd /; git clone "$GITCLONE"; chmod +x /$REPONAME/start.sh; /$REPONAME/start.sh
