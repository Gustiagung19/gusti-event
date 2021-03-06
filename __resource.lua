resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

ui_page "html/index.html"

client_script{
    'config.lua',
    'client/*.lua'
}

server_script{
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server/*.lua'
}

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/reset.css',
    'html/img/*.png'
}
