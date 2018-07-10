



execute "install nginx" do
  command "apt-get install -y nginx"
end


execute "index.html" do
 command "echo '<html><body>Howdy!</body></html>' > /var/www/html/index.html"
end

execute "restart nginx" do
  command "systemctl start nginx;  systemctl enable nginx"
end


