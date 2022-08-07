mpirun --allow-run-as-root -n 4 -H 192.168.2.50:1,192.168.2.51:1,192.168.2.56:1,192.168.2.57:1 -x NCCL_SOCKET_IFNAME=ens14f1 -x NCCL_DEBUG=INFO torchrun --nnodes=4 --nproc_per_node=1 --rdzv_id=1 --rdzv_backend=c10d --rdzv_endpoint="192.168.1.51:43210" /workspace/torchddp_vgg.py --batch-size 16 --num-epochs 1 --log-interval 20 --model vgg19