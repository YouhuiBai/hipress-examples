NCCL_DEBUG=INFO NCCL_TREE_THRESHOLD=0 NCCL_IB_DISABLE=1 NCCL_SOCKET_IFNAME=ens14f1 \
horovodrun -np 8 -H 192.168.2.50:1,192.168.2.51:1,192.168.2.58:1,192.168.2.57:1,192.168.2.56:1,192.168.2.54:1,192.168.2.53:1,192.168.2.49:1 --start-timeout 600 python /workspace/hipress_pytorch.py --batch-size 32 --epochs 1 --num-iterations 200 --threshold 0 --partition-threshold 16777216 --model vgg19 --algorithm powersgd