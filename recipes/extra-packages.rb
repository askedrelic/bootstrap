# Default packages

package "git"
package "vim"
package "tree"
package "curl"

# Just in case...
package "openssh-server"

# I'm a bigger tmux fan, but might as well have both
package "screen"
package "tmux"

# Enable ssh blocking by default
package 'fail2ban'

package "tcpdump"
# for reverse ssh
package "autossh"

# ftp clients
package "yafc"
package "lftp"

package 'sysstat'  # Monitor io
package 'nethogs'  # Monitor network
package 'htop'     # Better than top
package "whois"

# disabled heavy audio/video dependencies
# package "youtube-dl"
