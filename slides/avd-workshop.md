---
marp: true
theme: jobs
author: Petr Ankudinov
size: 16:9
paginate: true
math: mathjax
style: |
    img[alt~="custom"] {
      float: right;
    }
    .columns {
      display: grid;
      grid-template-columns: repeat(2, minmax(0, 1fr));
      gap: 1rem;
    }
    .columns3 {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 1rem;
    }
    footer {
      font-size: 14px;
    }
    section::after {
      font-size: 14px;
    }
    img {
      background-color: transparent;
    }
    img[alt~="center"] {
      display: block;
      margin: 0 auto;
    }

---

# TBD

<style scoped>section {font-size: 26px;}</style>

<!-- Do not add page number on this slide -->
<!--
_paginate: false
-->

```sh
$ whoami
# Petr Ankudinov, Senior Solutions Engineer
pa #@arista.com
$ date +"%b %Y"                 
Mar 2025
```

<!-- Add footer starting from this slide -->
<!--
footer: '![h:20](https://www.arista.com/assets/images/logo/Arista_Logo.png)'
-->

---

# Agenda

- TBD

![bg left](img/pexels-suzy-hazelwood-1226398.jpg)

---

# What is AVD

![bg right:40% fit](img/avd-roles-overview-dark.png)

<style scoped>section {font-size: 18px;}</style>

- [AVD is an open-source project](https://avd.arista.com)
- AVD stands for "Architect, Validate, and Deploy"
- [Supported designs](https://avd.arista.com/5.2/ansible_collections/arista/avd/roles/eos_designs/index.html) as of AVD 5.2:
  - L3LS EVPN / L2LS / MPLS / Campus
  - WAN AutoVPN/CV Pathfinder
- Roles:
  - `arista.avd.eos_designs` - abstracted to low level variables
  - `arista.avd.cli_config_gen` - parse templates to build plain text configs
  - `arista.avd.cv_deploy` - push configurations to Arista CloudVision Portal (replaced `eos_config_deploy_cvp`)
  - `arista.avd.eos_config_deploy_eapi` - push configs to switches directly. Based on [`arista.eos.eos_config`](https://docs.ansible.com/ansible/latest/collections/arista/eos/eos_config_module.html). [`arista.eos`](https://galaxy.ansible.com/arista/eos) is maintained by RedHat ⚠️
  - `arista.avd.eos_validate_state` - validate operational state of Arista EOS devices (with ANTA)

---

# Q&A

![bg left](img/pexels-valeriia-miller-3020919.jpg)

- [Ansible AVD](https://avd.arista.com/)
- [This repository](https://github.com/ankudinov/avd-workshop-may-2025)

```diff
- One more slide!
+ No more slides.
```

```bash
git commit -m "The END!"
```

<!-- Add footer starting from this slide -->
<!--
footer: '![h:20](https://www.arista.com/assets/images/logo/Arista_Logo.png)'
-->
