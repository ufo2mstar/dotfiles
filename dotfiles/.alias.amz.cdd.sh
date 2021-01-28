# printf "loading $0..."

# rr = rde run
alias rr='rde env validate && rde wflow run && rde wflow run -s' # run-hydra-tests-GSFTechTransContainerAdapterLambdaTests

# AAA
alias raaa="/apollo/env/AAAWorkspaceSupport/bin/register_with_aaa.py -a"


# https://builderhub.corp.amazon.com/docs/rde/cli-guide/setup-clouddesk.html step 12
export DOCKER_HOST=unix:///var/run/docker.sock

# echo "done!"