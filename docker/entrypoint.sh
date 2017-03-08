#!/usr/bin/env bash

/hbase/bin/start-hbase.sh

tail -f /hbase/logs/* &

wait || :
