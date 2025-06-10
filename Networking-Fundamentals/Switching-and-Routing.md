| Module | Networking Fundamentals (DevOps Pre-Requisite) |
| Lesson | [Switching & Routing](https://learn.kodekloud.com/user/courses/devops-pre-requisite-course/module/1790dd89-e589-4173-a51e-7be5efbd210a/lesson/742e5230-91e9-4084-a4de-6341c7eae143) |

![SSH into app servers and adding routes](images/networking-ssh-demo.png)
[image](https://github.com/user-attachments/assets/2ad9814e-8ce3-4aa5-bdfa-1e67bc828870)


> Mirrors “day-zero” network bootstrapping on fresh VMs/containers.

---

## 🌐 Core Ideas

| OSI Layer | Concept (what/why) | Linux tooling |
|-----------|--------------------|---------------|
| **L2**    | *Switching / Bridging* — single broadcast domain, MAC tables | `ip link`, `bridge`, `brctl` |
| **L3**    | *Routing* — move packets between subnets, routing tables | `ip route`, `ip addr`, `sysctl` |

---

## 🧑‍💻 Commands Practised

```bash
# Display interfaces
ip link

# Create a software bridge (switch)
sudo ip link add br0 type bridge
sudo ip link set br0 up
sudo ip link set eth0 master br0

# Enable IP forwarding (enable routing)
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward

# Add static routes (example)
sudo ip addr add 172.16.238.16/24 dev eth0
sudo ip addr add 172.16.239.15/24 dev eth0
