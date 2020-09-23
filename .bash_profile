if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

# remember don't add anything here Naren! add it to your .bashrc

# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/narensub/bin/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/narensub/bin/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/narensub/bin/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/narensub/bin/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
