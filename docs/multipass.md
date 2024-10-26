


> Written with [StackEdit](https://stackedit.io/).
> # RUNNING  DOCKER ON A MULTIPASS VM
>## PART 1
> This document a step-by-step guide for setting up and running Docker within a Multipass Virtual Machine VM.
> 
> 
>### 1. Install Multipass
>For Ubuntu:  
>```
> sudo snap install multipass
> ```
>### 2. Launch a Multipass instance
>write the following command in your Terminal to launch a new Ubuntu instance
>```
>bash
>multipass launch --name docker-vm
>```
>### 3. Acces the Multipass instance 
>Access the Multipass VM once it is running: 
>```
>bash
>multipass shell docker-vm
>```
>### 4. install docker
> Still in the Multipass shell install docker 
>```
>bash
> sudo apt update
> sudo apt install -y docker.io
>```
> ### 5. Test Docker installation 
>  after installation test docker to verify if it is working with a  simple command: 
> ```
> bash
> docker run hello-world
> ```
> ### 6. Using Docker
> **to pull an image :**
> ```
> docker pull < name-image >
> ```
> **to list the running containers:**
> ``` 
>bash
>docker ps
>```
>**to run a container:**
>```
>bash
>docker run -d <image-name>
>```
>### 7. Stop a Multipass instance:
> To stop a multipass instance and remove when your are done use the commands:
>```
>bash
>multipass stop docker-vm
>multipass delete docker-vm
>multipass purge
>```
>## PART 2 : Alias
>  **Aliases** in your shell configuration file (like .zshrc) are shortcuts that allow you to execute longer commands with a simpler, more memorable keyword. 
> in our case to easily run docker commands in mltipass we are going to use an alias. 
>here are the simple steps:
>### 1. open your *.zshrc* file
>```
>bash
>nano ~/.zshrc
>```
>### 2. Add Aliases
>scroll to the bottm of the file and add your desired alias. here is an example:
>```
>bash
>alias docker= "multipass exec docker-vm -- docker"
>```
>this means if you write (*docker ps*)in your host shell it executes (**alias docker= "multipass exec docker-vm -- docker"**) command.
>### 3. Save and Exit
>in nana save the changes by pressing CTRL + O, then hit Enter and exit with CTRL + X.
>### 4.Apply the changes 
> ```
>bash
>source ~/.zshrc
>```
>### 5. Test your Alias
> 
>This setup allows you to experiment with Docker without affecting your host machine.


