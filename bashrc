# echo 'if [ -n "$NVIM_LISTEN_ADDRESS" ]; then source ~/.config/nvim/bashrc; fi' >> ~/.bashrc

EDITOR="nvr --remote-send '<C-\><C-n>:sp<enter>'; nvr --remote-wait"
