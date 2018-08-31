#/bin/bash
# a really quick and dirty script to download a few installers we need

# get fcrepo if it doesn't already exist
if [ ! -f /vagrant/files/fcrepo-webapp-4.7.5.war ]; then
  echo 'Downloading fcrepo4...'
  wget -O /vagrant/files/fcrepo-webapp-4.7.5.war "https://github.com/fcrepo4/fcrepo4/releases/download/fcrepo-4.7.5/fcrepo-webapp-4.7.5.war"
fi

# get fits if it doesn't already exist
if [ ! -f /vagrant/files/fits-1.3.0.zip ]; then
  echo 'Downloading fits...'
  wget -O /vagrant/files/fits-1.3.0.zip "https://projects.iq.harvard.edu/files/fits/files/fits-1.3.0.zip"
fi

# get LibreOffice if it doesn't already exist
if [ ! -f /vagrant/files/LibreOffice_6.0.6_Linux_x86-64_rpm.tar.gz ]; then
  echo 'Downloading LibreOffice...'
  wget -O /vagrant/files/LibreOffice_6.0.6_Linux_x86-64_rpm.tar.gz "https://ftp.osuosl.org/pub/tdf/libreoffice/stable/6.0.6/rpm/x86_64/LibreOffice_6.0.6_Linux_x86-64_rpm.tar.gz"
fi

# get Solr if it doesn't already exist
if [ ! -f /vagrant/files/solr-7.4.0.tgz ]; then
  echo 'Downloading Solr...'
  wget -O /vagrant/files/solr-7.4.0.tgz "https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz"
fi

# Get FFmpeg if it doesn't already exist
if [ ! -f /vagrant/files/ffmpeg-release-64bit-static.tar.xz ]; then
  echo 'Downloading FFmpeg...'
  wget -O /vagrant/files/ffmpeg-release-64bit-static.tar.xz "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz"
fi

# Get Tomcat if it doesn't already exist
if [ ! -f /vagrant/files/apache-tomcat-7.0.67.tar.gz ]; then
  echo 'Downloading Tomcat...'
  wget -O /vagrant/files/apache-tomcat-7.0.67.tar.gz "http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.67/bin/apache-tomcat-7.0.67.tar.gz"
fi

# Copy Tomcat to the location where the role looks for it
if [ -f /vagrant/files/apache-tomcat-7.0.67.tar.gz ]; then
  echo 'Copying Tomcat to role download location...'
  cp /vagrant/files/apache-tomcat-7.0.67.tar.gz /usr/local/apache-tomcat-7.0.67.tar.gz
fi
exit 0
