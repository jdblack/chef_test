
puts "Roles are: #{node['roles']}"
template "/etc/motd" do
  variables({
    greeting: node['greeting'],
    roles: node['roles'].join(' '),
    owner: node['owner']
  })
end

