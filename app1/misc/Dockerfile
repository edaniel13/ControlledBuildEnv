FROM myrepo/base

RUN yum -y groupinstall "Development Tools"            && \
    yum -y install cmake

RUN echo -e                                         \
      "#!/bin/bash\n"                               \
      "cd /app1/bin/debug\n"                        \
      "./configure\n"                               \
      "make\n"                                      \
      > /entrypoint.sh                           && \
    chmod a+x /entrypoint.sh

ADD . /app1

#VOLUME /app1

CMD /bin/bash /entrypoint.sh
#ENTRYPOINT ["/bin/bash" "/app1/misc/entrypoint.sh"]
#ENTRYPOINT ["/bin/bash"]
