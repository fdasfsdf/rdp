apt-get update
apt-get install -y iputils-ping
echo "Download windows files"
wget -O w10x64.img https://bit.ly/akuhnetW10x64
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
echo "======================="
echo "Download ngrok"
echo "======================="
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
./ngrok authtoken 22jVygLWpBuAbBzfzgYVwc1ITaX_g7BarMk1QrupdtBaSU9i 
./ngrok tcp --region ap 3388 &>/dev/null &
clear
echo Downloading File
apt-get install qemu-system-x86 -y
echo "Wait"
echo "Starting Windows"
qemu-system-x86_64 -hda w10x64.img -m 4G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
echo "===================================="
echo "Keep supporting akuh.net, thank you"
echo "You Got Free RDP now"
echo "Wait 2 minute to finish bot"
echo "You can close this tab"
echo "RDP runs for 50 hours"
echo "===================================="
ping 127.0.0.1
