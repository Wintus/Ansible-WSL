# Ansible-WSL
Provisioning your Windows by Ansible from WSL

## Getting Started

### Prerequisites
First, follow the Ansible offical setup of Windows hosts:
https://docs.ansible.com/ansible/latest/user_guide/windows.html

Next, get the WSL to run Ansible provisioning:
https://www.microsoft.com/ja-jp/p/ubuntu-1804-lts/9n9tngvndl3q
(This project only supports Ubuntu).
After Ubuntu setup in WSL, install Ansible by apt: `apt install ansible`.

Clone the source:

```bash
git clone https://github.com/Wintus/Ansible-WSL
cd Ansible-WSL
```

Edit the `group_vars/` and/or `host_vars/` to setup connection.
For details, see the guide:
- Windows: https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html#inventory-options
- Ubuntu: refer `localhost`, `connection=local`
