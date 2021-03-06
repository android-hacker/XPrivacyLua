#!/bin/bash
. tools/config.sh

#https://github.com/mendhak/Crowdin-Android-Importer
#git clone https://github.com/mendhak/Crowdin-Android-Importer.git
#sudo apt-get install python python-pip
#sudo apt-get install libssl-dev libcurl4-openssl-dev
#pip install pycurl

rm -R ${project_dir}/app/src/main/res/values-iw/
rm -R ${project_dir}/app/src/main/res/values-ar-rBH/
rm -R ${project_dir}/app/src/main/res/values-ar-rEG/
rm -R ${project_dir}/app/src/main/res/values-ar-rSA/
rm -R ${project_dir}/app/src/main/res/values-ar-rYE/
rm -R ${project_dir}/app/src/main/res/values-fi*

python ${importer_dir}/crowdin.py --p=app/src/main -a=get -i xprivacylua -k ${api_key}

mkdir -p ${project_dir}/app/src/main/res/values-iw/
mkdir -p ${project_dir}/app/src/main/res/values-ar-rBH/
mkdir -p ${project_dir}/app/src/main/res/values-ar-rEG/
mkdir -p ${project_dir}/app/src/main/res/values-ar-rSA/
mkdir -p ${project_dir}/app/src/main/res/values-ar-rYE/

cp -R ${project_dir}/app/src/main/res/values-he/* ${project_dir}/app/src/main/res/values-iw/
cp -R ${project_dir}/app/src/main/res/values-ar/* ${project_dir}/app/src/main/res/values-ar-rBH/
cp -R ${project_dir}/app/src/main/res/values-ar/* ${project_dir}/app/src/main/res/values-ar-rEG/
cp -R ${project_dir}/app/src/main/res/values-ar/* ${project_dir}/app/src/main/res/values-ar-rSA/
cp -R ${project_dir}/app/src/main/res/values-ar/* ${project_dir}/app/src/main/res/values-ar-rYE/
