directory '/tmp1' do
    action :delete
    recursive true
end

directory '/tmp1' do
    action :create
end

file '/tmp1/index.pp1' do
    content 'ddddddddddddd'
    action :create
end

#file '/tmp2/index.pp1' do
#    content 'ddddddddddddd'
#    action :create
#end

file '/tmp1/index.ppp' do
    content '<html>This isddd'
    action :create
    only_if { ::Dir.exist?('/tmp1') }
    #only_if { !::Dir.empty?('/tmp1') }
end