set +x;
SCRIPTDIR="$(dirname "$0")";
cd $SCRIPTDIR
sudo easy_install pip
sudo -H pip install -r requirements.txt
python fetch-macos.py -l
pkgutil --expand ./macOS\ Install\ Data/InstallESDDmg.pkg ./macOS\ Install\ Data/InstallESD
exit;
