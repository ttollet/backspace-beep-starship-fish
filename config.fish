# BEEP ON EMPTY BACKSPACE
# This function was generated after a lot of iteration alongside ChatGPT
function backspace_with_beep
    # Save the current commandline content and cursor position
    set -l cmd (commandline)
    set -l cursor_pos (commandline -C)

    # If the commandline is empty or only contains spaces and the cursor is at the beginning
    if test $cursor_pos -eq 0 -a (string trim -- $cmd | string length --q)
        # Emit a terminal bell character to trigger the beep
        echo -e "\a"
        # Move cursor up and clear the line to stay on the same prompt line
        printf "\033[1A\033[2K\r"
        # Redraw the prompt
        commandline -f repaint
    else
        # Perform the normal backspace action
        commandline -f backward-delete-char
    end
end
# Bind the backspace key to the custom function
bind \x7F backspace_with_beep # \x7F is the hexadecimal code for DEL
