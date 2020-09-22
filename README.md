# Scoring functions evaluation for active learning in humanoid robots 

**<a href="https://www.overleaf.com/read/jywqvqyfvwcd">Thesis Manuscript</a>**

<a href="https://riccardogrigoletto.github.io">Grigoletto Riccardo</a>


### License

For Academic Research Use Only!

### Description

This repository contains the code developed for Grigoletto Riccardo's master thesis, the starting point of the code is the SSM pipeline, please refer to the description below for basic installation.

### Strict Requirements

See Strict Requirements below (Same as SSM).

### Dependencies 

See Dependencies below (Same as SSM).

### Datasets/Pre-trained model

See Datasets/Pre-trained model below (Same as SSM).

An additional dataset used is iCWT, the publication is work in progress.

### Usage

1. training

    Before training, please prepare your dataset and pre-trained model and store them in the right path as R-FCN.
You can go to ./tools/ and modify train_net.py to reset some parameters. Then, simply run sh ./train_voc.sh or ./train_icwt.sh.

2. testing

    Before testing, you can modify test.sh to choose the trained model path, then simply run sh ./test_voc.sh or ./test_icwt.sh to get the evaluation result.
    
### Misc

Tested on Ubuntu 18.04 with a Tesla K40 GPU (12G) and Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz.

# SSM (the Unofficial Version of Pytorch Implementation)

**<a href="https://arxiv.org/pdf/1803.09867.pdf">Towards Human-Machine Cooperation: Self-supervised Sample Mining for Object Detection</a>**

<a href="http://kezewang.com">Keze Wang</a>,
<a href="https://yanxp.github.io/">Xiaopeng Yan</a>,
Dongyu Zhang,
<a href="http://www4.comp.polyu.edu.hk/~cslzhang/">Lei Zhang</a>,
<a href="http://www.linliang.net/">Liang Lin</a>

Sun Yat-Sen University, Presented at [CVPR2018](https://arxiv.org/pdf/1803.09867.pdf)	

<p align=center><img width="80%" src="tools/ssm.png"/></p>


### License

For Academic Research Use Only!

### Strict Requirements

Python 3.6

OpenCV

PyTorch 0.3

Note: PyTorch 0.4 or Python 2.7 is not supported !

### Citing SSM

If you find SSM useful in your research, please consider citing:

    @inproceedings{wang18ssm,
        Author = {Keze Wang, Xiaopeng Yan, Dongyu Zhang, Lei Zhang, Liang Lin},
        Title = {{SSM}: Towards Human-Machine Cooperation: Self-supervised Sample Mining for Object Detection},
        Journal = {Proc. of IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
        Year = {2018}
    }

### Dependencies 

The code is built on top of https://github.com/ruotianluo/pytorch-faster-rcnn. Please carefully read through the pytorch-faster-rcnn instructions and make sure pytorch-faster-rcnn can run within your enviornment.

### Datasets/Pre-trained model

1. In our paper, we used Pascal VOC2007/VOC2012 and COCO as our datasets, and res101.pth model as our pre-trained model.

2. Please download ImageNet-pre-trained res101.pth model manually, and put them into $SSM_ROOT/data/imagenet_models


### Usage

1. training

    Before training, please prepare your dataset and pre-trained model and store them in the right path as R-FCN.
You can go to ./tools/ and modify train_net.py to reset some parameters.Then, simply run sh ./train.sh.

2. testing

    Before testing, you can modify test.sh to choose the trained model path, then simply run sh ./test.sh to get the evaluation result.

### Misc

Tested on Ubuntu 14.04 with a Titan X GPU (12G) and Intel(R) Xeon(R) CPU E5-2623 v3 @ 3.00GHz.
