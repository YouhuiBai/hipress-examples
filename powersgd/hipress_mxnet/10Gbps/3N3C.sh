NCCL_SOCKET_IFNAME=ens14f1 horovodrun -np 3 -H 192.168.2.51:1,192.168.2.58:1,192.168.2.57:1 python /workspace/hipress_mxnet.py --batch-size 16 --num-epochs 1 --log-interval 20 --model vgg19 2>&1