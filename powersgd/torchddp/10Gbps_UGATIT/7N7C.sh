mpirun --allow-run-as-root -n 7 -H 192.168.2.58:1,192.168.2.57:1,192.168.2.56:1,192.168.2.54:1,192.168.2.53:1,192.168.2.50:1,192.168.2.49:1 -x NCCL_SOCKET_IFNAME=ens14f1 -x NCCL_DEBUG=INFO -x NCCL_TREE_THRESHOLD=0 --mca btl tcp,self --mca btl_tcp_if_include ens14f1 -bind-to none -map-by slot torchrun --nnodes=7 --nproc_per_node=1 --rdzv_id=1 --rdzv_backend=c10d --rdzv_endpoint="192.168.1.58:43210" /workspace/torchddp_ugatit/main.py --light True --batch_size 1