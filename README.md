# Ansible-WSL
Provisioning your Windows by Ansible from WSL

![concept](./docs/concept.png "concept")

## Getting Started

### Prerequisites
First, follow the Ansible offical setup of Windows hosts:
https://docs.ansible.com/ansible/latest/user_guide/windows.html

Next, get the WSL to run Ansible provisioning:
https://www.microsoft.com/ja-jp/p/ubuntu/9nblggh4msv6
(This project only supports Ubuntu).
After Ubuntu setup in WSL, install Ansible by apt: `apt install ansible`.

Clone the source:

```bash
git clone https://github.com/Wintus/Ansible-WSL
cd Ansible-WSL
```

## Setup

Edit the `group_vars/` and/or `host_vars/` to setup connection.
For details, see the guide:
- Windows: https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html#inventory-options
- Ubuntu: refer `localhost`, `connection=local`

### Samples

Windows group

`host_vars/win.yml`

```yaml
ansible_host: localhost
ansible_winrm_server_cert_validation: ignore

# May also be passed on the command-line via --user
ansible_user:

# May also be supplied at runtime with --ask-pass
ansible_password:
```

WSL group

`host_vars/ubuntu.yml`

```yaml
ansible_host: localhost

# May also be passed on the command-line via --user
ansible_user:

# May also be supplied at runtime with --ask-pass
ansible_password:
```
