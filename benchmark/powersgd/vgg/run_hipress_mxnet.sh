horovodrun -np 4 -H local-docker:4 python hipress_mxnet.py --batch-size 16 --num-epochs 1 --log-interval 20 --model vgg19