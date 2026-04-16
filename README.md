# 🐧 linux-nvidia-prime-vfio-passthrough - Run Linux, games, and Windows apps

[![Download](https://img.shields.io/badge/Download-blue?style=for-the-badge&logo=github)](https://github.com/jeanite777/linux-nvidia-prime-vfio-passthrough)

## 📥 Download

Visit this page to download:
https://github.com/jeanite777/linux-nvidia-prime-vfio-passthrough

## 🧭 What this is

This guide helps you set up a Linux system with NVIDIA Prime offloading, GPU passthrough with VFIO, and Looking Glass.

It is made for people who want one computer to do more than one job:

- use the built-in or secondary GPU for Linux
- pass a GPU to a Windows virtual machine
- switch tasks without rebooting
- use Looking Glass to see the VM screen on Linux

## ✅ What you need

Before you start, make sure you have:

- a Windows PC with internet access
- a modern Linux install
- an NVIDIA GPU
- a second GPU or integrated graphics for Linux display
- enough RAM for Linux and a virtual machine
- admin access on the machine
- a USB drive if you want to move files easily

## 🛠️ What you will get

This setup helps with:

- Linux desktop use with NVIDIA Prime offloading
- GPU passthrough with VFIO
- Windows virtual machine use
- smoother game and app performance in the VM
- Looking Glass display sharing
- less need to reboot when switching between systems

## 🚀 Getting started

1. Open the download page.
2. Save the repository or guide to your computer.
3. Read through the setup steps in order.
4. Gather the hardware and software you need.
5. Follow each section before moving to the next one.

If you are new to Linux, take your time with each step. This setup works best when you follow the guide in order.

## 💻 Install on Windows

If you are using Windows to read or prepare the guide:

1. Open the download page in your browser.
2. Download the repository contents or save the page.
3. If you use a ZIP download, extract it to a folder.
4. Open the README.md file and read from the start.
5. Keep the file open while you work through the setup on your Linux machine.

This repository is a guide, so you will follow the steps on Linux after you review the instructions on Windows.

## 🔧 Setup steps

### 1. Check your hardware

Make sure your system can support GPU passthrough:

- one GPU for Linux
- one GPU for the virtual machine
- a CPU with virtualization support
- a motherboard that supports IOMMU
- enough power supply headroom

If your system uses an integrated GPU and one NVIDIA card, that can work well for this setup.

### 2. Turn on virtualization in BIOS

Restart your computer and open BIOS or UEFI setup.

Turn on these options if you see them:

- Intel VT-x or AMD-V
- Intel VT-d or AMD IOMMU
- Above 4G Decoding
- Resizable BAR, if your setup needs it
- Secure Boot off, if your system blocks VFIO setup

Save the changes and restart.

### 3. Prepare Linux

Use a current Linux distribution that supports:

- NVIDIA drivers
- KVM
- QEMU
- libvirt
- VFIO tools

Install the packages for virtualization and GPU passthrough. Many users choose a Linux desktop with strong driver support and good hardware detection.

### 4. Set up NVIDIA Prime offloading

NVIDIA Prime lets Linux use the NVIDIA GPU when needed and use another GPU for normal desktop work.

Use it for tasks like:

- games
- video work
- apps that need GPU speed

Keep the Linux desktop on the other GPU if you want the NVIDIA card free for passthrough.

### 5. Set up VFIO

VFIO lets you pass a GPU to a Windows virtual machine.

You will need to:

- identify the GPU you want to pass through
- bind it to VFIO
- keep Linux from using it on boot
- make sure the device groups are safe for passthrough

This step is key. It lets the VM use the GPU as if it were installed in a real Windows PC.

### 6. Create the Windows virtual machine

Use libvirt or your VM tool of choice to create a new virtual machine.

Set it up with:

- Windows install media
- enough CPU cores
- enough RAM
- a virtual disk
- the passed-through GPU
- a USB controller or USB device if needed

Use a modern machine type such as Q35 if your guide or hardware supports it.

### 7. Add Looking Glass

Looking Glass helps you see the VM on your Linux desktop with low delay.

You will usually need:

- a shared memory channel
- the Looking Glass client on Linux
- the Looking Glass host in Windows
- a working GPU passthrough setup

This is useful when you want a fast view of the Windows VM without using a second monitor.

### 8. Tune the VM

After the VM works, adjust it for better use:

- pin CPU cores if needed
- enable huge pages if your system benefits
- set the right audio device
- add USB passthrough for mouse and keyboard
- choose display settings that match your monitor

Small changes can make the VM feel more stable and responsive.

## 🧩 Common use cases

This setup fits well if you want to:

- play Windows games on Linux
- use one GPU for Linux and one for Windows
- test software in a VM
- keep Linux open while a Windows VM runs
- use NVIDIA hardware without rebooting

## 📁 Repository topics

This guide covers topics like:

- AMD and NVIDIA hardware
- GPU passthrough
- libvirt and QEMU
- VFIO
- Linux desktop setup
- Windows guest use
- Proton
- virtual machines
- Looking Glass

## ⚙️ Helpful file layout

You may see files or sections like these in the repository:

- setup notes
- BIOS tips
- driver steps
- VM config examples
- Looking Glass setup
- troubleshooting tips
- command lines for Linux

Read each part before you change your system. GPU passthrough works best when you follow the order.

## 🔍 Troubleshooting

If the VM does not start, check these first:

- virtualization is on in BIOS
- IOMMU is on
- the GPU is bound to VFIO
- the Linux desktop is not using the passed-through GPU
- your VM has enough RAM and CPU
- libvirt and QEMU are installed
- the Windows image is valid

If Looking Glass does not show video:

- check the host and client are both running
- confirm the shared memory service is active
- verify the GPU output works in the VM
- check the display resolution in Windows

If Linux loses display after setup:

- use the other GPU or integrated graphics for Linux
- check driver binding order
- confirm the boot config is correct

## 🖱️ First run checklist

Before you start the VM for the first time:

- save all open work
- confirm the Linux desktop is on the correct GPU
- connect mouse, keyboard, and monitor
- check the Windows install media
- verify the passthrough GPU is not in use by Linux
- keep a second way to access the system in case you need it

## 📌 Download again

Visit this page to download:
https://github.com/jeanite777/linux-nvidia-prime-vfio-passthrough

## 🧭 Next steps

Follow the guide from top to bottom, then test each part one by one:

- BIOS settings
- Linux setup
- NVIDIA Prime
- VFIO binding
- Windows VM creation
- Looking Glass connection