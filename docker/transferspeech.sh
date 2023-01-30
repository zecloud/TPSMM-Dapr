rm nosound.mp4
CUDA_VISIBLE_DEVICES=0 
python demo.py --config config/vox-256.yaml --checkpoint checkpoints/vox.pth.tar --source_image $1 --driving_video $2 --find_best_frame --result_video nosound.mp4
ffmpeg -i nosound.mp4 -i $2 -c copy -map 0:v:0 -map 1:a:0  $3