# install or update the Ansible roles specified in the the Ansibiblefile

# moved from the Ansbible Bootstrap script for CentOS, because this has to be in a new provisioner

if [ "$(gem search -i librarian-ansible)" = "false" ]; then
  echo "Installing third-party Ansible roles (via librarian-ansible)..."
  cd /vagrant && sudo -u vagrant /usr/local/bin/librarian-ansible install --clean
else
  echo "Updating third-party Ansible roles (via librarian-ansible)..."
  cd /vagrant && sudo -u vagrant /usr/local/bin/librarian-ansible update
fi
