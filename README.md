# Ubuntu 16.04 with Ansible installed and systemd enabled, for test-kitchen usage.

A Docker image based on Ubuntu 16.04, with ansible installed, that runs systemd with a minimal set of services.

Used to test ansible playbooks/roles that need systemd, useful for test-kitchen automation with docker as backend.

Setup:

docker run --rm --privileged -v /:/host ironcore864/ubuntu16-ansible-systemd setup

Running:

docker run -d --name systemd --security-opt seccomp=unconfined --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro -t ironcore864/ubuntu16-ansible-systemd
