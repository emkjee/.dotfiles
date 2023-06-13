if [[ $(command -v python3) == "/usr/local/bin/python3" ]]; then
   python3 -m pip install --upgrade setuptools
   python3 -m pip install --upgrade pip
   pip3 install virtualenv
else
   echo "python3 is not the brewed one!"
fi