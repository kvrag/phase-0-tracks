# Web Servers

## Key design philosophies of Linux:
- small is beautiful
- each program does one thing well
- prototype as soon as possible
- choose portability over efficiency
- store data in flat text files
- use software leverage
- use shell scripts to increase leverage and portability
- avoid captive user interfaces
- make every program a filter

## What is a VPS and what are its advantages?

A VPS is sort of like the virtual machine created in the video - sold as a service by an internet hosting service. The user has a lot of control and can reboot and customize the server as needed, especially if you're paying a little more. The user has sole access to the VPS.

## Why is it a bad idea to run linux as the root user?

Running as the root user can lead to mistakes, bugs, deleted files etc. that can cause permanent damage vs. a limited user, which, as the name implies, has limited access to critical functions. The root user has full permissions and can access everything -- which is unnecessary for most tasks and can case the most damage.