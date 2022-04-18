echo "\nCriando usuário convidado-skel..."
useradd -m convidado-skel

echo "\nDefinindo senha para convidado-skel..."
passwd convidado-skel

echo "\nCriando link para o convidado-skel..."
rm /etc/guest-session/skel
ln -s /home/convidado-skel /etc/guest-session/skel

echo "\nConfigurando tela de login..."
echo "[Seat:*]\nallow-guest=true\ngreeter-hide-users=true\ngreeter-show-manual-login=true" > /etc/lightdm/lightdm.conf
echo "\nFim!"
