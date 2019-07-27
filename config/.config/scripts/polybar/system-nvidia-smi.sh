#!/bin/bash

# nvidia-smi --loop=1 --query-gpu=display_active,utilization.gpu --format=csv,noheader,nounits | awk '{ print "GPU",""$1"","%"}'
# nvidia-smi --loop=1 --query-gpu=gpu_name,display_active,temperature.gpu,utilization.gpu,utilization.memory,memory.used,memory.total,driver_version --format=csv,noheader,nounits
nvidia-smi --loop=1 --query-gpu=temperature.gpu,utilization.gpu,utilization.memory --format=csv,noheader,nounits | sed -ur 's|([[:digit:]]+)[^[:digit:]]*([[:digit:]]+)[^[:digit:]]*([[:digit:]]+)|  \2% \3% \1°|g'