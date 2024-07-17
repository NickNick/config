complete -c miniserve -l index -d 'The name of a directory index file to serve, like "index.html"' -r -F
complete -c miniserve -s p -l port -d 'Port to use' -r
complete -c miniserve -s i -l interfaces -d 'Interface to listen on' -r
complete -c miniserve -s a -l auth -d 'Set authentication' -r
complete -c miniserve -l auth-file -d 'Read authentication values from a file' -r -F
complete -c miniserve -l route-prefix -d 'Use a specific route prefix' -r
complete -c miniserve -s S -l default-sorting-method -d 'Default sorting method for file list' -r -f -a "{name	'Sort by name',size	'Sort by size',date	'Sort by last modification date (natural sort: follows alphanumerical order)'}"
complete -c miniserve -s O -l default-sorting-order -d 'Default sorting order for file list' -r -f -a "{asc	'Ascending order',desc	'Descending order'}"
complete -c miniserve -s c -l color-scheme -d 'Default color scheme' -r -f -a "{squirrel	'',archlinux	'',zenburn	'',monokai	''}"
complete -c miniserve -s d -l color-scheme-dark -d 'Default color scheme' -r -f -a "{squirrel	'',archlinux	'',zenburn	'',monokai	''}"
complete -c miniserve -s u -l upload-files -d 'Enable file uploading (and optionally specify for which directory)' -r -F
complete -c miniserve -s m -l media-type -d 'Specify uploadable media types' -r -f -a "{image	'',audio	'',video	''}"
complete -c miniserve -s M -l raw-media-type -d 'Directly specify the uploadable media type expression' -r
complete -c miniserve -s t -l title -d 'Shown instead of host in page title and heading' -r
complete -c miniserve -l header -d 'Set custom header for responses' -r
complete -c miniserve -l print-completions -d 'Generate completion file for a shell' -r -f -a "{bash	'',elvish	'',fish	'',powershell	'',zsh	''}"
complete -c miniserve -l tls-cert -d 'TLS certificate to use' -r -F
complete -c miniserve -l tls-key -d 'TLS private key to use' -r -F
complete -c miniserve -s v -l verbose -d 'Be verbose, includes emitting access logs'
complete -c miniserve -l spa -d 'Activate SPA (Single Page Application) mode'
complete -c miniserve -l pretty-urls -d 'Activate Pretty URLs mode'
complete -c miniserve -l random-route -d 'Generate a random 6-hexdigit route'
complete -c miniserve -s P -l no-symlinks -d 'Hide symlinks in listing and prevent them from being followed'
complete -c miniserve -s H -l hidden -d 'Show hidden files'
complete -c miniserve -s q -l qrcode -d 'Enable QR code display'
complete -c miniserve -s U -l mkdir -d 'Enable creating directories'
complete -c miniserve -s o -l overwrite-files -d 'Enable overriding existing files during file upload'
complete -c miniserve -s r -l enable-tar -d 'Enable uncompressed tar archive generation'
complete -c miniserve -s g -l enable-tar-gz -d 'Enable gz-compressed tar archive generation'
complete -c miniserve -s z -l enable-zip -d 'Enable zip archive generation'
complete -c miniserve -s D -l dirs-first -d 'List directories first'
complete -c miniserve -s l -l show-symlink-info -d 'Visualize symlinks in directory listing'
complete -c miniserve -s F -l hide-version-footer -d 'Hide version footer'
complete -c miniserve -l hide-theme-selector -d 'Hide theme selector'
complete -c miniserve -s W -l show-wget-footer -d 'If enabled, display a wget command to recursively download the current directory'
complete -c miniserve -l print-manpage -d 'Generate man page'
complete -c miniserve -l readme -d 'Enable README.md rendering in directories'
complete -c miniserve -s h -l help -d 'Print help (see more with \'--help\')'
complete -c miniserve -s V -l version -d 'Print version'
