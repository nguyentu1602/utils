# install anaconda
cd /tmp &
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh &
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3 -to-bash-profile yes &
cd $HOME
