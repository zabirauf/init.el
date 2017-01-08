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
  
## Region selection and copying, pasting

| Keys  | Description                         | Note                                                           |
|-------+-------------------------------------+----------------------------------------------------------------|
| C-SPC | To set mark for selecting regions   | You can use any other navigation commands to select the region |
| C-w   | Kill region                         |                                                                |
| M-w   | Copy region to kill ring            |                                                                |
| C-y   | Yank, Paste                         |                                                                |
| M-y   | Cycle through kill ring afer yankin | Requires C-y to be performed earlier                           |
| M-d   | Kill word                           |                                                                |
| C-k   | Kill line                           |                                                                |

