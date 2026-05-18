# Linux MOTD Automation

A simple Linux automation project that dynamically generates and updates the system MOTD (Message of the Day) using Bash scripts, systemd services, and timers.

This project demonstrates Linux system administration concepts such as:
- Bash scripting
- systemd services
- systemd timers
- File automation
- Linux system information management

---

## Project Structure

motd_creator.sh
service_file_creator.sh
timer_creator.sh

---

## Scripts Overview

### 1. motd_creator.sh

This script generates the MOTD file located at:
/etc/motd

It collects and writes system information using:
hostnamectl

---

### 2. service_file_creator.sh

This script creates a systemd service file:
/etc/systemd/system/motd.service

The service executes:
/usr/local/bin/motd

which runs the MOTD generation script.

---

### 3. timer_creator.sh

This script creates a systemd timer file:
/etc/systemd/system/motd.timer

The timer automatically runs the service periodically.

Current configuration:
- Starts 2 minutes after boot
- Runs every 1 hour

---

## Features
- Automated MOTD generation
- Dynamic system information display
- systemd service automation
- Periodic execution using timers
- Lightweight Bash implementation

---

## Technologies Used
- Bash
- Linux
- systemd

---

## Setup Instructions
### 1. Download or Clone Repository and navigate to its location

---

### 2. Give Execute Permission
- chmod +x *.sh

---

### 3. Run the Service Creator
- sudo ./service_file_creator.sh

---

### 4. Run the Timer Creator
- sudo ./timer_creator.sh

---

### 5. Enable and Start Timer
- sudo systemctl enable motd.timer
- sudo systemctl start motd.timer

---

## Verify Status
Check service:
- systemctl status motd.service`

Check timer:
- systemctl status motd.timer

List active timers:
- systemctl list-timers

---

## Example Output

System Information:
-------------------
 Static hostname: linux-machine
 Operating System: Ubuntu Linux
 Kernel: Linux 6.x
 Architecture: x86-64

---

## Learning Outcomes

This project helped in understanding:
- Linux automation
- systemd services and timers
- Bash scripting practices
- Linux file management
- Background task scheduling

---
