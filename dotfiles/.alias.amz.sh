# printf "loading $0..."

# configs to Sync!
# ================
# reco aliases

alias brazil-octane='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
alias bo='/apollo/env/OctaneBrazilTools/bin/brazil-octane'

alias third-party-promote='~/.toolbox/bin/brazil-third-party-tool promote'
alias third-party='~/.toolbox/bin/brazil-third-party-tool'
#end

# CRUX stuff
alias crr='cr -r '

# brazil stuff
# alias b='brazil'
alias bv='brazil --version'
alias bp='brazil prefs'

alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'

## b build
alias bb=brazil-build
alias bba='bb apollo-pkg'
alias bbt='bb test'
alias bbs='bb server'
alias bbp='bb preview'
alias bbf='bb format'
alias bbc='bb clean'
alias bbcs='bb checkstyle'
alias bbre='bb release'

### bb synth
alias bbsy="bb synthesize"
alias bbsyp="bb synthesize-pipeline"
alias bbsycf="bb synthesize-cloud-formation"

## b recursive
alias brc=brazil-recursive-cmd
alias bbrc='brazil-recursive-cmd brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'

alias bbr='bbrc'

## b workspace
alias bw='brazil ws'
alias bws='bw sync'
alias bwsm='bw sync --md'
alias bwc='bw clean'
alias bwm='bw merge'
alias bwcr='bw create --root'
alias bwcn='bw create -n'
alias bwr='bw remove'
alias bwrp='bwr --package'
alias bwshow='brazil ws show'

alias bu='brazil ws use'
alias buv='bu --versionset'
alias bup='bu --package'
alias bupl='bu --platform'
alias bug='bu --gitMode -p'

## b platform override
alias bs='brazil setup'
alias bsps='brazil setup platform-support'
alias bp12='brazil ws use --platform AL2012'
alias bp64='brazil ws use --platform RHEL5_64'

alias bwd='brazil ws --dryrun'

alias bpcs='brazil-package-cache start'
alias bpcc='brazil-package-cache enable_edge_cache'
alias bpce='brazil-package-cache stop' # end

alias bbst='bbs | tee "$HOME/$(date +%Y-%m-%d_%H-%M-%S)-server-stdout.txt"'

# brazil ws --clean
# brazil-package-cache stop
# brazil-package-cache enable_edge_cache
# brazil-package-cache start
# brazil ws --sync --md

## b sam
alias sam="brazil-build-tool-exec sam"
alias smp='sam package'
alias smd='sam deploy'
alias smv='sam validate'
alias smpd='smp && smd'

#end

# # amz recos
alias nds='ninja-dev-sync'
alias ndsv='ninja-dev-sync -v'
alias ndss='ninja-dev-sync -setup'
alias ndsl='ninja-dev-sync -list'

alias ki='kinit -f'
alias mi='mwinit -o'
alias kd='kdestroy'

# my aliases
alias to='toolbox'
alias tv='toolbox --version'
alias ti='toolbox install'
alias tu='toolbox update'

# echo "done!"
