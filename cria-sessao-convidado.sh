echo "\nCriando usuário convidadomodelo..."
useradd -m convidado-skel

echo "\nDefinindo senha para convidadomodelo..."
passwd convidado-skel

echo "\nCriando link para o convidadomodelo..."
rm /etc/guest-session/skel
ln -s /home/convidado-skel /etc/guest-session/skel

echo "\nConfigurando tela de login..."
echo "[Seat:*]\nallow-guest=true\ngreeter-hide-users=true\ngreeter-show-manual-login=true" > /etc/lightdm/lightdm.conf
echo "\nFim!"
