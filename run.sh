#!/bin/bash
# This is the container entry-point
echo
echo ----------------------------
echo CONTAINER RUN SCRIPT STARTED
echo ----------------------------
echo
cd /application
python3 -m torch.distributed.launch --nproc_per_node=2 \
  train.py  \
  --config experiments/human36m/train/human36m_vol_softmax_CCU_test.yaml \
  --logdir ./logs
