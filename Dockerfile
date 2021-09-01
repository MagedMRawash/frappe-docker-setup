FROM ensoulify2021/erpfrappe

WORKDIR /home

ARG GIT_REPO=https://github.com/MagedMRawash/ensoulify.git


RUN git clone ${GIT_REPO}

WORKDIR ensoulify

CMD ["/usr/bash","thebash.sh"]
