# twprp_policefine
 A very simple system for police/lawmen to fine residents in RedM. Made with the VORP Framework by Roids#9757 for The Wack Pack RP - RedM Project
 
 # HOW TO USE
 
- Add `twprp_policefine` to your resources folder
- Add `ensure twprp_policefine` to your server.cfg
- Anyone with the job `police` will be able to use the `/fine` command
- Command Syntax: `/fine PLAYER-ID FINE-AMMOUNT`

# Notes

- This script also has a `/jail` command however it does not work in its current state. It is missing the coords so if you want it to work then you need to add that yoursef(until i add it that is). They can be found at the top of `main_cl.lua`
- If you don't plan on using the jail command just comment out the coords in `main_cl.lua`