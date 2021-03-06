FROM ensoulify2021/erpfrappe

WORKDIR /home
ARG REPO_FOLDER=frappe-docker-setup
ARG GIT_REPO=https://github.com/MagedMRawash/${REPO_FOLDER}.git

USER root

RUN  echo $(whoami)

RUN sudo git clone ${GIT_REPO}

WORKDIR ${REPO_FOLDER}

#RUN  echo $(whoami)
COPY . .
RUN ["chmod", "+x", "./init.sh"]
RUN ./init.sh
# RUN mv boot.sh /home/
RUN ["chmod", "+x", "./boot.sh"]
#RUN screen  -d -m -S vs code-server

ENTRYPOINT ["./boot.sh"]

CMD ["bash"]
