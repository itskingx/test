apt update -y && apt install -y python python3 python3-pip python-pip p7zip-full libgl1-mesa-glx

git clone https://github.com/hzwer/arXiv2020-RIFE
pip3 install gdown
gdown --id 1wsQIhHZ3Eg4_AfCXItFKqqyDMB4NS0Yd && gdown --id 11GS7urVv4COfjZrG8cGyjLfbka9apdTeQ && 7z e RIFE_trained_model_HDv2.zip
mkdir arXiv2020-RIFE/train_log/ && mv *.pkl arXiv2020-RIFE/train_log/
cd arXiv2020-RIFE && pip install -r requirements.txt

python3 inference_video.py --video=/home/jovyan/filhal.mp4
