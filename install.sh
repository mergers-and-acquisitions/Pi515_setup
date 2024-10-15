#!/bin/bash
echo "export PATH=\"$PATH:/home/user/anaconda3/bin\"" >> ~/.bashrc
export PATH="$PATH:/home/user/anaconda3/bin"

# update everything
sudo apt update
sudo apt upgrade

sudo apt install libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libxtst6 libxi6 curl python3-pip

curl -O https://repo.anaconda.com/archive/Anaconda3-2024.06-1-Linux-x86_64.sh

bash Anaconda3-2024.06-1-Linux-x86_64.sh

conda install -c conda-forge jupyterlab

conda install matplotlib numpy pandas

# turn off terminal bell
# bind 'set bell-style none'

echo "alias python='python3'" >> ~/.bashrc

echo "#!/bin/bash" > ~/Desktop/dev_env_start.sh
echo "jupyter lab" >> ~/Desktop/dev_env_start.sh

rm Anaconda3-2024.06-1-Linux-x86_64.sh
