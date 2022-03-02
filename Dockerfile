FROM fedora

RUN yum install tor torsocks -y
RUN chown -R root:root /run/tor
COPY desolator.sh desolator.sh
COPY sites.txt sites.txt

CMD ["/bin/bash", "desolator.sh"]