(require 'w3m-load)

(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(autoload 'w3m-region "w3m" "Render region in current buffer and replace with result." t)
(autoload 'w3m-toggle-inline-image "w3m" "Toggle the visibility of an image under point." t)

(setq 
 browse-url-browser-function 'w3m-browse-url
 w3m-default-display-inline-images t
 )

(global-set-key "\C-xm" 'browse-url-at-point)
