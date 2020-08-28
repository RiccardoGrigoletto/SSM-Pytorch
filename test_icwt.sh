FILES=output/res50/icwt/MS/1/*.pth

for f in $FILES
do
        CUDA_VISIBLE_DEVICES=3 time python3.6 ./tools/test_net.py --imdb test_TASK2_30objs_manual_ --model $f --cfg experiments/cfgs/res50.yml --net res50 --set ANCHOR_SCALES [8,16,32] ANCHOR_RATIOS [0.5,1,2]
done 
