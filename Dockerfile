FROM ensoulify2021/erpfrappe

WORKDIR /home
ARG REPO_FOLDER=frappe-docker-setup
ARG GIT_REPO=https://github.com/MagedMRawash/${REPO_FOLDER}.git

ECHO 
RUN sudo git clone ${GIT_REPO}

WORKDIR ${REPO_FOLDER}

RUN ./init.sh 
ENTRYPOINT ["./boot.sh"]
CMD ["/usr/bash"]
