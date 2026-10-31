function proxy_on --description 'Enable proxy for this shell'
    set -gx http_proxy http://127.0.0.1:7897
    set -gx https_proxy $http_proxy
    set -gx HTTP_PROXY $http_proxy
    set -gx HTTPS_PROXY $https_proxy
    set -gx all_proxy socks5://127.0.0.1:7897
    set -gx ALL_PROXY $all_proxy
end
