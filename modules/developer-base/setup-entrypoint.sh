cp /tmp/artifacts/entrypoint.sh /
# add user and configure it
useradd -u 10001 -G wheel,root -d /home/user --shell /bin/bash -m user
# Setup $PS1 for a consistent and reasonable prompt
echo "export PS1='\W \`git branch --show-current 2>/dev/null | sed -r -e \"s@^(.+)@\(\1\) @\"\`$ '" >> /home/user/.bashrc
# Set permissions on /etc/passwd and /home to allow arbitrary users to write
chgrp -R 0 /home
chmod -R g=u /etc/passwd /etc/group /home
chmod +x /entrypoint.sh