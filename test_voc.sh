CUDA_VISIBLE_DEVICES=0 time python3.6 ./tools/test_net.py --imdb voc_2007_test --model output/res50/voc0712/ICV/ --cfg experiments/cfgs/res50.yml --net res50 --set ANCHOR_SCALES [8,16,32] ANCHOR_RATIOS [0.5,1,2]


