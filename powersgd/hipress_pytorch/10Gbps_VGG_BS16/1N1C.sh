NCCL_DEBUG=INFO NCCL_TREE_THRESHOLD=0 NCCL_IB_DISABLE=1 NCCL_SOCKET_IFNAME=ens11f0 horovodrun -np 2 -H localhost:2 python /workspace/hipress_pytorch.py --batch-size 16 --epochs 1 --num-iterations 200 --threshold 0 --partition-threshold 16777216 --model vgg19 --algorithm powersgd