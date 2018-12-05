sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y --enablerepo=extras install epel-release \
  unzip \
  wget \
  git \
  dos2unix \
  tk \
  tk-devel \
  swig \
  ncurses-libs \
  xterm \
  xorg-x11-fonts-misc \
  java-1.8.0-openjdk-devel \
  boost-python \
  boost-python-devel \
  maven \
  python-devel \
  python-pip \
  python-wheel \
  which \
  gnome-terminal \
  python36-devel \
  python36-setuptools \
  nano && \
  yum clean all
sudo yum groupinstall -y "Development Tools" "Development Libraries" 
sudo yum clean all

sudo ln -s /usr/include/python3.6m/ /usr/local/include/python3.6m
sudo easy_install-3.6 pip
sudo /usr/local/bin/pip3 install numpy

git clone https://github.com/lsst-ts/ts_sal.git -b "v3.8.32"
git clone https://github.com/lsst-ts/salobj.git -b develop
git clone https://github.com/lsst-ts/ts_opensplice.git
git clone https://github.com/lsst-ts/ts_xml.git -b develop
