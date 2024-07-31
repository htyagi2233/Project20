# Update the package list
sudo yum update -y

sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Install OpenJDK 11
sudo yum install java-11-openjdk-devel -y

# Install Git
sudo yum install git –y
