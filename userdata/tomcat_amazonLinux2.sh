# Update the package list
sudo yum update -y

# Upgrade all installed packages to their latest versions
sudo yum upgrade -y

# Install OpenJDK 11
sudo yum install java-11-openjdk-devel -y

# Install Tomcat 9 and its related packages
# Note: Tomcat 9 might not be available in the default repositories, so we'll use Amazon's extras repository if available.
sudo amazon-linux-extras install tomcat9 -y

# Install Git
sudo yum install git –y
