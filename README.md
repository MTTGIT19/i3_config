# i3 config files
- My i3 setup. I'm working on an ansible playbook for an easy install for everything, but for now all of the files are seperated so you'll have to download what you like and make it work in your own i3 environment.  


## htbvpn.sh 
1. Displays your HackTheBox tun0 address. **For use with Polybar.**   
![htbvpn](https://github.com/user-attachments/assets/589b2dff-ebf7-4f3c-9bfa-97a64012e3d4)   
![vpn_offline](https://github.com/user-attachments/assets/40f17e06-b3f6-4bf3-8fe0-b84cf3785754)
2. Add module to polybar `.config.ini` or `modules.ini` depending on your setup.
   - `chmod +x` the script
   - Ensure module points to correct location of script.

```
[module/htbvpn]
type = custom/script
exec = ~/.config/polybar/blocks/scripts/htbvpn.sh
interval = 10
format = <label>
```
