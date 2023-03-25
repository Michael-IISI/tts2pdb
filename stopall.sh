#!/bin/bash
. cdb2

export ORAENV_ASK=NO
. oraenv
export ORAENV_ASK=YES

dbshut $ORACLE_HOME
