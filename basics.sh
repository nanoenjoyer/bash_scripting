# the below comment tells the system what interpreter to use
# it points it to the file at '/bin/bash' which is the modern 'shell'
#!/bin/bash

# a better/more portable way to do it is to use '/usr/bin/env bash` command, which
# asks the 'env' utility to search the current '$PATH' and run the first
# 'bash' (born again shell) it finds, as not every system
# has 'bash' at '/bin/bash', so use this:
#!/usr/bin/env bash <-- start .sh files with this line

# if your system already uses 'bash' instead of 'sh', you don't need
# to type '#!/usr/bin/env bash' on top of every bash script, the scripts
# will use 'bash' by default, though your script might break if it does
# heavy scripting or contains cron jobs which by default use 'sh', so just
# stick to using '#!/usr/bin/env bash' or '#!/bin/bash'(for most systems)

# bash scripting is command focused so you can run any command that you'd run in the
# terminal inside a bash script.

# do not forget to run 'chmod +x <path-to-bash-script-file>' for the script
# to be executable once you're done writing it.

