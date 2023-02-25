cd /home/marlo/devops/ansible
echo "the ansible build nodejs image started"
ansible-playbook ansible-build-nodejs-image.yml --connection=local
echo "the ansible build nodejs image finished"
ansible-playbook ansible-build-reactjs-image.yml --connection=local
echo "the ansible build reactjs image finished"
ansible-playbook ansible-run-cluster.yml