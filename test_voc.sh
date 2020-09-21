FILES=output/res50/voc0712/MC/4/*.pth

for f in $FILES
do
        CUDA_VISIBLE_DEVICES=0 time python3.6 ./tools/test_net.py --imdb voc_2007_test --model $f --cfg experiments/cfgs/res50.yml --net res50 --set ANCHOR_SCALES [8,16,32] ANCHOR_RATIOS [0.5,1,2]
done 

