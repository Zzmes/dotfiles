function proxy_off --description 'Disable proxy for this shell'
    for name in http_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY
        set -eg $name
    end
end
