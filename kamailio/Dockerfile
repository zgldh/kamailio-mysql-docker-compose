FROM kamailio/kamailio:5.3.4-jessie


ARG SIP_DOMAIN=${SIP_DOMAIN} 

ARG DBRWUSER=${DBRWUSER} 

ARG DBRWPW=${DBRWPW} 

ARG DBROUSER=${DBROUSER} 

ARG DBROPW=${DBROPW} 

ARG DBROOTPW=${DBROOTPW} 

# kamctlrc
COPY ./kamctlrc /etc/kamailio/kamctlrc
RUN sed -i "s/SIP_DOMAIN=SIP_DOMAIN/SIP_DOMAIN=${SIP_DOMAIN}/" /etc/kamailio/kamctlrc && \
  sed -i "s/DBRWUSER=DBRWUSER/DBRWUSER=${DBRWUSER}/" /etc/kamailio/kamctlrc && \
  sed -i "s/DBRWPW=DBRWPW/DBRWPW=${DBRWPW}/" /etc/kamailio/kamctlrc && \
  sed -i "s/DBROUSER=DBROUSER/DBROUSER=${DBROUSER}/" /etc/kamailio/kamctlrc && \
  sed -i "s/DBROPW=DBROPW/DBROPW=${DBROPW}/" /etc/kamailio/kamctlrc && \
  sed -i "s/DBROOTPW=DBROOTPW/DBROOTPW=${DBROOTPW}/" /etc/kamailio/kamctlrc

# kamailio.cfg
COPY ./kamailio.cfg /etc/kamailio/kamailio.cfg
RUN sed -i "s/DBRWUSER:DBRWPW/${DBRWUSER}:${DBRWPW}/" /etc/kamailio/kamailio.cfg

COPY ./entrypoint.sh /etc/entrypoint/entrypoint.sh
ENTRYPOINT [ "/etc/entrypoint/entrypoint.sh" ]