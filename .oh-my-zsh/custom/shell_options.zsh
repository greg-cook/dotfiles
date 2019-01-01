# Set default user to suppress context for local account/machine
DEFAULT_USER=greg

# Set options for 'powerlevel9k' zsh theme
## Customize colors of prompt segments
# aws
POWERLEVEL9K_AWS_BACKGROUND='yellow'
POWERLEVEL9K_AWS_FOREGROUND='black'
# kubecontext
POWERLEVEL9K_KUBECONTEXT_BACKGROUND='blue'
POWERLEVEL9K_KUBECONTEXT_FOREGROUND='black'
# current node version in prompt
POWERLEVEL9K_CUSTOM_NODENV='nodenv version-name'
POWERLEVEL9K_CUSTOM_NODENV_BACKGROUND='green'
POWERLEVEL9K_CUSTOM_NODENV_FOREGROUND='black'
# current ruby version in prompt
POWERLEVEL9K_CUSTOM_RBENV='rbenv version-name'
POWERLEVEL9K_CUSTOM_RBENV_BACKGROUND='red'
POWERLEVEL9K_CUSTOM_RBENV_FOREGROUND='black'

# Defines elements shown in the left prompt, some are conditional and not always shown
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs status)
# Defines elements shown in the right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(aws kubecontext custom_rbenv custom_nodenv)

# Use 'nerdfont-complete' mode for all the pretty glyphs
POWERLEVEL9K_MODE='nerdfont-complete'
# Place the prompt on a newline
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Add a new line before the prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Truncate path in prompt to first 2 letters of each directory
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_start'
# Simplify the start of the prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "
# Customise the Segment Separator
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0C2'
