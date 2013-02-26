package "git-core"
package "vim"
package "apt"


user node[:user][:name] do
	password node[:user][:password]
	#gid "admin"
	home "/home/#{node[:user][:name]}"
	supports manage_home:true
	shell "/bin/bash"
end
group "admin" do
	members ['deployer']
end
