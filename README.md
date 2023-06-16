# Terrable
Using terraform to provision instances and ansible for configuration

<pre>
1.Launch ec2
2.Install terraform, ansible, ansible-core
3.Clone github repo
4.Run terraform init plan apply 
#terraform output -raw instance_ips > hosts.ini (optional if not using manual hosts.ini file)
5.Run:
ansible-playbook -i hosts.ini nginx-install.yaml

</pre>
