# #Session1

## Contents
* Bare metal VS Embedded Linux
* Automotive domains
* Embedded Linux requirements 
* General knowledge about Linux architecture.
### Notes:




# #Session2 
* Init process: (system V - system D) we will consider system D, because it is considered as system V upgrade.
* Int process -> user space -> libc (uclibc - glibc) -> system call -> Linux kernel -> drivers.
* work in Egypt: [development cpp application + customization for kernel]
* SYSTEM CALLs:
- comm methode.
- SW interrupt -> call functions (system call)
system call characteristics:
- name
- interrupt number
- stack size
- entry point (function)
- actions (read/write)
process in Linux means ---> running a cpp application

* sys call and their number: https://filippo.io/linux-syscall-table/
* sys call section: (https://www.man7.org/tlpi/)

* USER SPACE (Trace - debug - pref)
- trace: (strace - itrace ), we use "strace" for system call trace (https://medium.com/@chrishantha/linux-performance-observability-tools-19ae2328f87f)
- debug:
- pref: analysis



* tltr tool is used to tell you available options for any Linux command: (https://tldr.inbrowser.app/pages/linux/strace) (sudo apt install tldr)

