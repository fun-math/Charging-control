# Charging-control

The script will run the coffin dance song if the battery level is below 20% but your laptop is not charging. It will also play the wide putin meme song if battery level is above 90 % and you laptop is charging. The script runs every 2 min. It's just an one time effort and you don't need to do anything again. 

## Steps

Clone the repo and add the file _battery.sh_ to _Startup Applications_. Install _acpi_(to check battery level) and _sox_(to play music) using the following commands.

`sudo apt install acpi`\
`sudo apt install sox`\
`sudo apt install libsox-fmt-all`

## References

- https://askubuntu.com/questions/1157608/how-do-i-set-battery-full-alert-tone-in-ubuntu-18-04-to-save-battery-wear-out
- https://ubunlog.com/en/sox-reproduce-mp3-terminal/

