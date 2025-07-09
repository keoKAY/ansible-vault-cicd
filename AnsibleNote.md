## Working with ansible 

### 1. Inventory 
- can be with .ini , .yaml 
```bash 

ansible -i inventory.ini  name|group|all -m ping 
ansible -i inventory.yaml name|group|all -m ping 

```

### 2. Adhoc command 
```bash 
# run uptime command on group dev 
 ansible -i inventory2.yaml dev -m command -a "uptime"
ansible -i inventory2.yaml dev -m command -a "which nginx" 

ansible -i inventory2.yaml dev -m command -a "sudo apt purge nginx" --become
ansible -i inventory2.yaml dev -m command -a "sudo apt autoremove nginx -y" --become

# install nginx on group dev 
ansible -i inventory2.yaml dev -m apt -a "name=nginx state=present"
ansible -i inventory2.yaml dev -m apt -a "name=nginx state=absent"

```


### 3. Ansible Playbook 

```bash 

ansible-playbook -i inventory2.yaml playbooks/one.yaml 

```