FROM centos
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

#RUN yum -y update

# Install tools
RUN yum install -y java-1.8.0-openjdk 
#RUN yum install -y maven
#RUN yum install -y git 
#RUN yum install -y unzip

# Create application runtime folders
RUN mkdir -p /demoApp/runtime/application

#Copy artifacts from dist to runtime folders 
ADD target/demoApp*.jar /demoApp/runtime/application

# Open the port on which application listens
#EXPOSE 	443