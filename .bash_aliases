alias python='ipython3'
alias rqt_reconfigure='rosrun rqt_reconfigure rqt_reconfigure'
alias subup='git submodule update --init --recursive'
alias udev_info='udevadm info -a -p $(udevadm info -q path -n /dev/bus/usb/002/005)'
alias ros_env='env | grep ROS'
alias sbash='source ~/.bashrc'
alias qt='~/apps/Qt/Tools/QtCreator/bin/qtcreator'




#### Mars Rover Aliases ####

alias mntjet='sshfs nvidia@tx2:/home/nvidia/ /home/seth/rover_home/'
alias umntjet='fusermount -u /home/seth/rover_home/'
alias sjet='ssh nvidia@tx2'
alias jet='ping tx2'
alias obj='cd ~/tb_detection/models/research/object_detection/'
alias mapviz='roslaunch mapviz_tf mapviz.launch'
alias rover_autonomous='roslaunch navigation rover_autonomous.launch'
alias base_autonomous='roslaunch navigation base_autonomous.launch'
alias base_arm='roslaunch hal_control base_arm.launch'
alias laptop_autonomous='roslaunch navigation laptop_autonomous.launch'
map_server() {
    sudo docker stop $(sudo docker ps -aq)
    sudo docker rm $(sudo docker ps -aq)
    sudo docker run -p 8080:8080 -t -v ~/mapproxy:/mapproxy danielsnider/mapproxy
}
