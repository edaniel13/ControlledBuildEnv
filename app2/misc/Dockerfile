FROM myrepo/base

RUN yum -y groupinstall "Development Tools"            && \
    yum -y install cmake

RUN echo -e                                         \
      "#!/bin/bash\n"                               \
      "cd /app2/bin/debug\n"                        \
      "./configure\n"                               \
      "make\n"                                      \
      > /entrypoint.sh                           && \
    chmod a+x /entrypoint.sh

ADD . /app2

CMD /bin/bash /entrypoint.sh
