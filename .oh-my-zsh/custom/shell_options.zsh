# Set default user to suppress context for local account/machine
DEFAULT_USER=greg

# Set options for 'powerlevel9k' zsh theme
# Displays execution time if over defined value (seconds)
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
# Defines elements shown in the left prompt, some are conditional and not always shown
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs status command_execution_time)
# Defines elements shown in the right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(kubecontext rbenv)
# Use 'nerdfont-complete' mode for all the pretty glyphs
POWERLEVEL9K_MODE='nerdfont-complete'
# Place the prompt on a newline
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Always show our current version of ruby
POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
# Truncate path in prompt to first 2 letters of each directory
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_from_right'
