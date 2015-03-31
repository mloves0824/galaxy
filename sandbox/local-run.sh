#!/usr/bin/env sh
echo "start master "
nohup ../output/bin/master --port=8102 >./master.log 2>&1 &
sleep 1
echo "start agent"
nohup ../output/bin/agent --work_dir=./ --port=8201 --master=localhost:8102 >./agent1.log 2>&1 &
nohup ../output/bin/agent --work_dir=./ --port=8202 --master=localhost:8102 >./agent2.log 2>&1 &
#use cgroup
#nohup ../output/bin/agent --port=8202 --container=cgroup --master=localhost:8102 >/tmp/agent.log 2>&1 &
