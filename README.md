# A docker image based on Ubuntu 16.04

For faster and easier use with test-kitchen

Changes:

- latest ansible installed, so that when you do `kitchen converge`, you don't waste time installing Ansible
- systemd enabled, to test playbooks/roles that need it

Setup for systemd:

    docker run --rm --privileged -v /:/host ironcore864/ubuntu16-ansible-systemd setup

Running:

    docker run -d --name systemd --security-opt seccomp=unconfined --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro -t ironcore864/ubuntu16-ansible-systemd

See .kitchen.yml for an example

