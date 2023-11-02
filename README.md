![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/f23268ba-eff5-4d6a-a824-0078923c793c)

# Over view
> A "reverse vector" generally refers to a data structure or array where the elements or elements' order are reversed from their original order.
 The term "reverse vector" itself is not standard terminology in computer science or programming, but it's often used to describe the process of reversing the 
 elements within a vector, list, or array.
# Example 
> For example, if you have a vector with elements [1, 2, 3, 4, 5], reversing the vector would result in [5, 4, 3, 2, 1]. The order of the elements has been 
 reversed.
 Reversing a vector can be a common operation in programming when you need to process data in the reverse order or when you want to reverse the order of 
 elements for various reasons, such as user interface display, data manipulation, or algorithm requirements.

<details>
<summary>RTL Simulation</summary>
<br>
  

```
iverilog pes_reverse_vector.v pes_reverse_vector_tb.v
./a.out
gtkwave reverse_vector_tb.vcd

```

![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/f34a2b4a-52d1-4b14-a0ce-3cb27350d2dd)

</details>

<details>
<summary>RTL Synthesis</summary>
<br>
  

```

read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog pes_reverse_ector.v
synth -top VectorReverse
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show

```

![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/ecd410e3-ef49-4459-9b28-5eb9872eef30)

</details>

<details>
<summary>RTL Gate Level Simulation</summary>
<br>
  
### Gate-Level Simulation

```
iverilog ../my_lib/verilog_model/primitives.v ../my_lib/verilog_model/sky130_fd_sc_hd.v pes_reverse_vector_netlist.v pes_reverse_vector_tb.v
./a.out
gtkwave reverse_vector_tb.vcd
```
![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/9e8fdbc1-07d6-4a18-84c2-797c643e9a1f)

![image](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/f3c0699b-7d96-463b-ada3-732c55797df4)

</details>

### Prerequisites Installation - For (RTL2GDSII - OPENLANE)

#### Magic Installation
For magic installation please enter the following commands in the terminal.
```
sudo apt-get install m4
sudo apt-get install tcsh
sudo apt-get install csh
sudo apt-get install libx11-dev
sudo apt-get install tcl-dev tk-dev
sudo apt-get install libcairo2-dev
sudo apt-get install mesa-common-dev libglu1-mesa-dev
sudo apt-get install libncurses-dev
git clone https://github.com/RTimothyEdwards/magic
cd magic
./configure
sudo make
sudo make install
```
#### Ngspice Installation
For ngspice installation please enter the following commands in the terminal.
```
sudo apt install ngspice
```

#### Openlane-2 Installation
#### Installing the pre-requisites
```
sudo apt-get update
sudo apt-get upgrade
sudo apt install -y build-essential python3 python3-venv python3-pip make git
```

#### Uninstall conflicting packages of docker if present
```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

#### Install Docker using apt repository
+ Setup Docker's apt repository
```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```
+ Install other packages
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
+ Verify that the Docker Engine installation is successful by running the hello-world image.
```
sudo docker run hello-world
```

+ Making Docker available without root (Linux)
```
sudo groupadd docker
sudo usermod -aG docker $USER
sudo reboot # REBOOT!
```
+ Checking the docker installation after reboot
```
docker run hello-world
```

+ Checking Installation Requirements
```
git --version
docker --version
python3 --version
python3 -m pip --version
make --version
python3 -m venv -h
```
#### Download and Install Openlane
Run these one after the other
```
git clone --depth 1 https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane/
make
make test
```
### RTL2GDSII - OPENLANE

<details>
<summary>Interactive OpenLane flow</summary>
<br>

In terminal input these commands
```
cd OpenLane/ 
make mount 
./flow.tcl -interactive
package require openlane 0.9
prep -design pes_reverse_vector
```
![1_1](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/68396e23-4250-45a5-90b6-78549d1db011)

[Back to top ](https://github.com/udayM-design/pes_reverse_vector/edit/main/README.md#rtl2gdsii---openlane)
</details>

<details>
<summary>Synthesis,Floorplan,Placement,CTS,Routing</summary>
<br>

## Synthesis
```
run_synthesis
```
![2](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/0aeac14e-c2d2-4c59-b16e-d8555f0f16ad)

## Floorplan
```
run_floorplan
```
![3](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/7868fa6f-bf56-41ce-96ca-7c10e5255c17)

Note: we need to use libs.tech file so we need to gitclone this https://github.com/hwiiiii/sky130A into pdks folder

```
git clone https://github.com/hwiiiii/sky130A
```
```
magic -T /home/uday/OpenLane/pdks/sky130A/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.nom.lef def pes_reverse_vector.def &
```
![5](https://github.com/udayM-design/pes_reverse_vector/assets/93391726/d39e6bd2-2d51-480a-a747-508a7ef34487)

## Placement
```
run_placement
```
