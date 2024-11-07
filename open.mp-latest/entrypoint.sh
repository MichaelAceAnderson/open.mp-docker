#!/bin/bash
cd /server

#######
#   RUN THE SERVER
#######

# Either run the Dockerfile CMD or the open.mp server
if [ $# -gt 0 ]; then
    echo -e "\nAlternative launching method: $@"
    sh -c "$@"
else
    ./omp-server
fi

# Save the exit code of whatever we ran
EXIT_CODE=$?

exit $EXIT_CODE

