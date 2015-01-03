package "nginx"

template "default.conf" do
  source "default.conf.erb"
  path "/etc/nginx/conf.d/default.conf"
  owner "root"
  group "root"
end

service "nginx" do
  action [ :enable, :start ]
end