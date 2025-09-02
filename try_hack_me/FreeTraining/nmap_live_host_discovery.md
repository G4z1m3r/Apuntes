# Nmap Live Host Discovery

## Introducition

This tool serves us to tell:

1. Which systems are up?
2. What services are running on these systems?

this room has 4 rooms more (check which ones are premium)

1. Nmap Live Host Discovery (this one)
2. map Basic Port Scans
3. Nmap Advanced Port Scans
4. Nmap Post Port Scans

This one explains the steps that nmap carries out to discover systems that are online before port-scanning. This is crucial beacause trying to port-scan offline system is a waste of time.

Different approaches that nmap uses to discover live hosts:

- ARP scan: uses ARP request to discover live hosts
- ICMP scan: uses ICMP request to identify live hosts
- TCP/UDP ping scan: sends packets to TCP and UDP ports to determine live hosts.

We introduce two scanners, arp-scan and masscan, and explain how they ovelrap with part of the Nmap's host discovery.

A namp scan usually goes through the steps shown in the figure below:

1. Enumerate targets
2. Discover live hosts
3. Reverse-DNS lookup
4. Scan ports
5. Detect version
6. Detect OS
7. Traceroute
8. Scripts
9. Write outpu

## Subnetworks

Usually the network segment refers to physical connection while a subnetwork refers to a logical connection. 

An ARP query aim to get the hardware address (MAC), so this can not go across subnets, ARP is a link-layer protocol.

This sections is explaining subnetting. Topic that i kinda know.

## Enumerating targets

Executing some nmap -sL to various ips and checking the output

## Discovering live hosts

Let’s revisit the TCP/IP layers shown in the figure next. We will leverage the protocols to discover the live hosts. Starting from bottom to top, we can use:

- ARP from Link Layer
- ICMP from Network Layer
- TCP from Transport Layer
- UDP from Transport Layer

ARP has one purpose: sending a frame to the broadcast address on the network segment and asking the computer with a specific IP address to respond by providing its MAC (hardware) address.

ICMP has many types. ICMP ping uses Type 8 (Echo) and Type 0 (Echo Reply).

If you want to ping a system on the same subnet, an ARP query should precede the ICMP Echo.

Although TCP and UDP are transport layers, for network scanning purposes, a scanner can send a specially-crafted packet to common TCP or UDP ports to check whether the target will respond. This method is efficient, especially when ICMP Echo is blocked.

Checking the packages sended and how to send a ping you need first to send and recieve ARP packages

## Nmap host discovery using ARP

How would you know which host are up and running for not wasting time?

When no host discovery options provide to o nmap follows the following approaches to discover live hostss:

1. When a privileged user tries to scan targets on a local network, namp uses ARP request. 
2. When a privileged user tries to scan targets on a outside network, nmap uses ICMP echo requests, TCP ACK  to port 80, TCP SUN to port 443 and ICMP timestamp request.
3. When an unprivileged user tries to scan targets outside the local network, nmap resorts to a TCP 3-way handshake by sending SYN packet to ports 80 and 443

nmap by default uses ping to scan live hosts, then proceed to scan live hosts only. If you want to use nmap without port scanning, you can issue nmap -sn TARGETS.

ICMP has many types. ICMP ping uses Type 8 (Echo) and Type 0 (Echo Reply).

If you want to ping a system on the same subnet, an ARP query should precede the ICMP Echo.

Although TCP and UDP are transport layers, for network scanning purposes, a scanner can send a specially-crafted packet to common TCP or UDP ports to check whether the target will respond. This method is efficient, especially when ICMP Echo is blocked.

alking about ARP scans, we should mention a scanner built around ARP queries: arp-scan; it provides many options to customize your scan. Visit the arp-scan wiki for detailed information. One popular choice is arp-scan --localnet or simply arp-scan -l. This command will send ARP queries to all valid IP addresses on your local networks.

arp-scan and nmap -PR -sn

## Nmap host discovery using ICMP

To use ICMP echo request to discover live hosts, add the option -PE. (Remember to add -sn if you don’t want to follow that with a port scan.)

it is wise to remember that many firewalls block ICMP.

it shows their MAC addresses. Generally speaking, we don’t expect to learn the MAC addresses of the targets unless they are on the same subnet as our system. 

we will scan from a system that belongs to a different subnet. The results are similar but without the MAC addresses.

If you look at the network packets using a tool like Wireshark, you will see something similar to the image below. You can see that we have one source IP address on a different subnet than that of the destination subnet, sending ICMP echo requests to all the IP addresses in the target subnet to see which one will reply.

Because ICMP echo requests tend to be blocked, you might also consider ICMP Timestamp or ICMP Address Mask requests to tell if a system is online. Nmap uses timestamp request (ICMP Type 13) and checks whether it will get a Timestamp reply (ICMP Type 14). Adding the -PP option tells Nmap to use ICMP timestamp requests. 

Similarly, Nmap uses address mask queries (ICMP Type 17) and checks whether it gets an address mask reply (ICMP Type 18). This scan can be enabled with the option -PM. As shown in the figure below, live hosts are expected to reply to ICMP address mask requests.

## Nmap host discovery Using TCP and UDP

### TCP SYN Ping

Similarly, Nmap uses address mask queries (ICMP Type 17) and checks whether it gets an address mask reply (ICMP Type 18). This scan can be enabled with the option -PM. As shown in the figure below, live hosts are expected to reply to ICMP address mask requests.

If you want Nmap to use TCP SYN ping, you can do so via the option -PS followed by the port number, range, list, or a combination of them. For example, -PS21 will target port 21, while -PS21-25 will target ports 21, 22, 23, 24, and 25. Finally -PS80,443,8080 will target the three ports 80, 443, and 8080.

Privileged users (root and sudoers) can send TCP SYN packets and don’t need to complete the TCP 3-way handshake even if the port is open

### TCP ACK Ping

As you have guessed, this sends a packet with an ACK flag set. You must be running Nmap as a privileged user to be able to accomplish this. If you try it as an unprivileged user, Nmap will attempt a 3-way handshake.

By default, port 80 is used. The syntax is similar to TCP SYN ping. -PA should be followed by a port number, range, list, or a combination of them. For example, consider -PA21, -PA21-25 and -PA80,443,8080. If no port is specified, port 80 will be used.

### UDP Ping

Finally, we can use UDP to discover if the host is online. Contrary to TCP SYN ping, sending a UDP packet to an open port is not expected to lead to any reply. However, if we send a UDP packet to a closed UDP port, we expect to get an ICMP port unreachable packet; this indicates that the target system is up and available

Nmap uses -PU for UDP ping.

### Masscan

On a side note, Masscan uses a similar approach to discover the available systems. However, to finish its network scan quickly, Masscan is quite aggressive with the rate of packets it generates. The syntax is quite similar: -p can be followed by a port number, list, or range. Consider the following examples:

masscan MACHINE_IP/24 -p443
masscan MACHINE_IP/24 -p80,443
masscan MACHINE_IP/24 -p22-25
masscan MACHINE_IP/24 ‐‐top-ports 100

## Using Reverse-DNS Lookup

Nmap’s default behaviour is to use reverse-DNS online hosts. Because the hostnames can reveal a lot, this can be a helpful step. However, if you don’t want to send such DNS queries, you use -n to skip this step.

By default, Nmap will look up online hosts; however, you can use the option -R to query the DNS server even for offline hosts. If you want to use a specific DNS server, you can add the --dns-servers DNS_SERVER option.

## Summary

ARP Scan	sudo nmap -PR -sn MACHINE_IP/24
ICMP Echo Scan	sudo nmap -PE -sn MACHINE_IP/24
ICMP Timestamp Scan	sudo nmap -PP -sn MACHINE_IP/24
ICMP Address Mask Scan	sudo nmap -PM -sn MACHINE_IP/24
TCP SYN Ping Scan	sudo nmap -PS22,80,443 -sn MACHINE_IP/30
TCP ACK Ping Scan	sudo nmap -PA22,80,443 -sn MACHINE_IP/30
UDP Ping Scan	sudo nmap -PU53,161,162 -sn MACHINE_IP/30

Remember to add -sn if you are only interested in host discovery without port-scanning. Omitting -sn will let Nmap default to port-scanning the live hosts.

-n	no DNS lookup
-R	reverse-DNS lookup for all hosts
-sn	host discovery only