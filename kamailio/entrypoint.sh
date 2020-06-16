#!/bin/bash

whoami
cat /etc/kamailio/kamctlrc

kamdbctl create
kamailio -DD -E