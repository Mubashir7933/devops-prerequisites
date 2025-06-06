# Linux Services Management (Systemd)

## Course: DevOps Pre-Requisite Course (KodeKloud)

### 📅 Date: 6 June 2025
### 🔗 [Course Link](https://learn.kodekloud.com/user/courses/devops-pre-requisite-course/module/c990b480-a646-4321-89b4-a6fbc217f4e2/lesson/0a7c8acf-aa82-4c19-93f2-d7a34aec6f61)

---

## What I Learned:

- Services are background processes (daemons) that start at boot or manually.
- Managed by **init systems**:  
    - Legacy: `init`, `SysVinit`
    - Modern: `systemd` (most common now)
- Use `systemctl` to control services in systemd.

---

## Common systemctl Commands

| Task | Command |
|------|---------|
| Check status of a service | `systemctl status <service>` |
| Start a service | `systemctl start <service>` |
| Stop a service | `systemctl stop <service>` |
| Restart a service | `systemctl restart <service>` |
| Enable service on boot | `systemctl enable <service>` |
| Disable service on boot | `systemctl disable <service>` |

---

## Key Takeaways:

- Services keep critical functions like SSH, web servers, databases running.
- Understanding service management is essential for troubleshooting Linux systems.
- `systemd` is the default in most modern Linux distros.

---

## Practice Commands:

```bash
sudo systemctl status sshd
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl restart nginx
