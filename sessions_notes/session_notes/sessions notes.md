# #Introduction

## Contents
* Bare metal VS Embedded Linux
* Automotive domains
* Embedded Linux requirements 
* General knowledge about Linux architecture.
### Notes:




# #Session1 
* Operating system
	* It is a communication medium between computer HW and user applications.
	* The OS is responsible for managing the HW resources and peripherals connected to it.
* History of Linux
* System calls
* Linux distribution
* Linux kernel
	* It is a free open source program for Linux OS.
	* It is the core component for the Linux OS (like: Ubuntu - Unix - Kali).
	* Linux kernel responsible for managing hardware resources and providing essential services to other software.
	* Linux kernel processes the basic fundamental functions like: (process management, memory management, network subsystem, IPC "Inter process communication" - VFS "virtual file system" ).
	* ![Anatomy of Linux kernal](./../images/Anatomy_of_linux_kernal.PNG)
	* Linux kernel
* Linux first rule
* Resources
* Template for study
* 
* 
* Use Linux as user:
* Understand Linux architecture
* Understanding CPU architecture
* Understand Linux Kernal
* Understand kernal components
* 

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

# #Session4 or 5
* **Linux terminal:**
  * It is an application in **User space** layer.
  * We can customize terminal, because and application in user space can be customized.
  * Terminal provides interface (text area) for user, it is connected to **stdin (keyboard) & stdout (display/monitor/text file)**.
  * We need to understand how to use terminal to reduce development time.
  * life-cycle of terminal as a binarry application:
    * open terminal instance
    * write command
    * excute command
    * close terminal
  * What happen when you open a terminal instance?
    * A proccess will be created. (takes CUP time/memory in RAM).
    * Terminal will take a command as input from the user like: (cp - ls - grep - mkdir - ....).
    * Terminal will route to another application that will execute the command, the application is **shell (think of it as programming languages)** then shell will use **bash (think of it as specific type of programming language)** to execute the command.
    * Types of shell: (zsh - bash)
    * Example on terminal usage:
      * 1- open new **terminal** [parent process]
      * 2- write command **ls** then press enter.
      * 3- **shell** will be opened and will use (bash or zsh) to execute the **ls** command[child process].
      * 4- **bash** will execute: (bash ls) [child proccess for parent proccess in number 3].
      * 5- return from #4 to #3 then to #1
      * 6- terminal will print the return from #5 using stdout (display/text file).
    * Terminal is connected to shell through (environmemt variable named: `SHELL`).
    * To know which shell (bash or zsh) you are using, run **`echo $SHELL`** you will see one of the following:
      * /bin/bash
      * /bin/zsh
    * commands maybe `shell [implemented in shell (bash, zsh, ...)[(/usr/bin/bash/<command_name>)] ]` specific, or `not shell specific [implemented in root-filesystem: (/usr/bin/<command_name>) ]`. To know, run `which <command name: ls, cp, mkdir,...>` and from the printed path you will know if it is shell specific or not.
      * (Example 1) does `ls` shell specific command?
        * run `which ls` 
        * output: `/usr/bin/ls`, then `ls` not a shell specific command, because it is in root-filesystem commands.
      * (Example 2) does `cd` shell specific command?
        * run `which cd` 
        * output: `nothing`, then `cd` is a shell specific command, because it is not in root-filesystem commands.
    * **Summary**
      * Terminal take commands as input, then run shell agent (bash, zsh, fish, ....).
      * shell agent (bash, zsh, fish, ....): execute command and return output to terminal.
* **Environment variables:**
  * You can look at them as `global variables`.
* **Create alias**
  * Print all aliases:
    * `alias`
  * create new aliases:
    * `alias <alias_name>="<command>"`
    * Then to apply the alias run `source ~/.bashrc`
  * You can pass parameter as input to alias
  * alias not shared between processes
  * How to create an alias?
    * create new hidden file: `vi ~/.bash_git_alias`
    * add your alias in the file: `alias <gst>="<git status>" `
    * add the created file to `~/.bashrc` as follow:
	  ```
	  if [ -f ~/.bash_git_alias ]; then
      . ~/.bash_git_alias
        fi
	  ```
	* apply the changes: `~/.bashrc` or `restart terminal`.




























