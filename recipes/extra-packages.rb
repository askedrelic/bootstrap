# Default packages

# Essentials
package "curl"
package "git"
package "tcpdump"
package "tree"
package "vim"
package "whois"

# Better than top
package 'htop'

# Great git ncurses gui
package 'tig'


# Just in case...
package "openssh-server"

# I'm a bigger tmux fan, but might as well have both
package "screen"
package "tmux"

# Enable ssh blocking by default
package 'fail2ban'

# for reverse ssh tunnels
package "autossh"

# Ftp clients
package "yafc"
package "lftp"

# Useful monitoring utils
# sar: collects and reports system activity information;
# iostat: reports CPU utilization and disk I/O statistics;
# mpstat: reports global and per-processor statistics;
# pidstat: reports statistics for Linux tasks (processes);
# sadf: displays data collected by sar in various formats;
# nfsiostat: reports I/O statistics for network filesystems;
# cifsiostat: reports I/O statistics for CIFS filesystems.
package 'sysstat'

# Top for network traffic
package 'nethogs'

# Useful utils
# chronic: runs a command quietly unless it fails
# combine: combine the lines in two files using boolean operations
# errno: look up errno names and descriptions
# ifdata: get network interface info without parsing ifconfig output
# ifne: run a program if the standard input is not empty
# isutf8: check if a file or standard input is utf-8
# lckdo: execute a program with a lock held
# mispipe: pipe two commands, returning the exit status of the first
# parallel: run multiple jobs at once
# pee: tee standard input to pipes
# sponge: soak up standard input and write to a file
# ts: timestamp standard input
# vidir: edit a directory in your text editor
# vipe: insert a text editor into a pipe
# zrun: automatically uncompress arguments to command
package 'moreutils'

# Useful for debconf-get-selections and force setting things
package 'debconf-utils'

# Should install just the client; not the server...
package 'mysql-client'

# disabled from heavy audio/video dependencies
# package "youtube-dl"
