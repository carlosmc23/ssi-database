FROM microsoft/mssql-server-linux:latest

ADD . /tmp/sql
ENV PATH="/opt/mssql-tools/bin:${PATH}"
RUN chmod +x /tmp/sql/*.sh

CMD /bin/bash /tmp/sql/entrypoint.sh
