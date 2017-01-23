Emacs keys cheatsheet
=====================

# Cheatsheet

## Navigation

| Keys    | Description                                                                | Note |
|---------+----------------------------------------------------------------------------+------|
| C-a     | Move to beginning of line                                                  |      |
| C-e     | Move to end of line                                                        |      |
| C-f     | Move forward one character                                                 |      |
| C-b     | Move backward one character                                                |      |
| C-p     | Move previous line                                                         |      |
| C-n     | Move next line                                                             |      |
| M-f     | Move forward one word                                                      |      |
| M-b     | Move backward one word                                                     |      |
| M-m     | Move to first non-whitespace character on the line                         |      |
| M-<     | Move to beginning of buffer                                                |      |
| M->     | Move to end of buffer                                                      |      |
| M-g M-g | Go to line                                                                 |      |
| C-s     | Regex search for text in current buffer. Press again to move to next match |      |
| C-r     | Same as C-s, but search in reverse                                         |      | 

## Buffer and window management

| Keys                         | Description                                      | Note                        |
|------------------------------+--------------------------------------------------+-----------------------------|
| C-x b                        | Switch buffer or create buffer                   |                             |
| C-x C-b                      | Show all open buffers                            |                             |
| C-x k                        | Kill the buffer                                  |                             |
| C-x 0                        | Kill current window (where point is)             |                             |
| C-x 1                        | Kill all other windows                           |                             |
| C-x 2                        | Split window horizontally                        |                             |
| C-x 3                        | Split window vertically                          |                             |
| C-x o                        | Switch active window                             |                             |
| S-<left>/<right>/<up>/<down> | To move to the window in the specified direction |                             |
| C-x 4 C-f                    | Find file in other window                        |                             |
| C-x 4 b                      | Switch buffer in other window                    |                             |
| C-x 4 C-o                    | Displays the buffer in other window              | Won't switch to that window |
| C-x 4 d                      | Opens dired in other window                      |                             |
| C-x 5 2                      | Create a new frame                               |                             |
| C-x 5 b                      | Switch buffer in other frame                     |                             |
| C-x 5 0                      | Delete active frame                              |                             |
| C-x 5 1                      | Delete other frames                              |                             |
| C-x 5 C-f                    | Finds a file in the other frame                  |                             |
| C-x 5 d                      | Opens dired in the other frame                   |                             |
| C-x 5 C-o                    | Displays a buffer in other frame                 | Won't switch to that frame  |

## Region selection and copying, pasting

| Keys  | Description                                    | Note                                                           |
|-------+------------------------------------------------+----------------------------------------------------------------|
| C-SPC | To set mark for selecting regions              | You can use any other navigation commands to select the region |
| C-w   | Kill region                                    |                                                                |
| M-w   | Copy region to kill ring                       |                                                                |
| C-y   | Yank, Paste                                    |                                                                |
| M-y   | Cycle through kill ring afer yankin            | Requires C-y to be performed earlier                           |
| M-d   | Kill word                                      |                                                                |
| C-k   | Kill line, that will also put in the kill ring |                                                                |

## Help

| Keys              | Description                                    | Note |
|-------------------+------------------------------------------------+------|
| C-h k key-binding | Describe the function bound to the key binding |      |
| C-h a             | Apropos show commands that match the pattern   |      |
| C-h f             | Describe the function                          |      |
| C-h d             | Apropos search the documentation               |      |
| key-binding C-h   | Show help corresponding the the key binding    |      |

## Cider Mode

| Keys        | Description                                            | Note                                                     |
|-------------+--------------------------------------------------------+----------------------------------------------------------|
| C-c C-k     | Evaluate the buffer in the repl                        | Needs the file to be saved                               |
| C-x C-e     | Evaluate the last expression in repl                   | If you want to execute current line then prefix with C-e |
| C-c M-n     | Switch to namespace of current buffer in repl          |                                                          |
| C-c C-d C-d | Display documentation for symbol at point              | If no symbol then it prompts for it                      |
| M-.         | Navigate to the source code for the symbol under point |                                                          |
| M-,         | Navigate back from the source code                     |                                                          |
| C-c C-d C-a | Apropos search across function name and documentation  |                                                          |
| C-enter     | REPL: Close parantheses and evaluate                   | REPL only command                                        |

## Paraedit

| Keys         | Description                                                             | Note |
|--------------+-------------------------------------------------------------------------+------|
| M-(          | Surround expression after point in parenthesis                          |      |
| C- ->        | Slurp; move closing parenthesis to the right to include next expression |      |
| C- <-        | Barf; move closing parenthesis to the left to exclude last expression   |      |
| C-M-f, C-M-b | Move to the opening/closing parenthesis                                 |      |
