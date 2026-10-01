# Fish completions for yt-x

# ==========================================================================
# Global options 
# ==========================================================================
complete -c yt-x -n __fish_use_subcommand -s h -l help -d "Show help and exit"
complete -c yt-x -n __fish_use_subcommand -s v -l version -d "Show version and exit"
complete -c yt-x -n __fish_use_subcommand -s e -l edit-config -d "Edit config file"
complete -c yt-x -n __fish_use_subcommand -s E -l generate-desktop-entry -d "Print desktop entry info"
complete -c yt-x -n __fish_use_subcommand -s U -l update -d "Update the script"
complete -c yt-x -n __fish_use_subcommand -l config-write -d "Write current config to file"
complete -c yt-x -n __fish_use_subcommand -l launcher -s l -d "Preferred launcher" --require-parameter --no-files -a "fzf rofi gum"
complete -c yt-x -n __fish_use_subcommand -l preview -d "Enable preview window"
complete -c yt-x -n __fish_use_subcommand -l no-preview -d "Disable preview window"
complete -c yt-x -n __fish_use_subcommand -l preview-images -d "Enable image previews"
complete -c yt-x -n __fish_use_subcommand -l no-preview-images -d "Disable image previews"
complete -c yt-x -n __fish_use_subcommand -l player -s p -d "Media player" --require-parameter --no-files -a "mpv vlc tplay"
complete -c yt-x -n __fish_use_subcommand -l mpv-args -d "Pass custom mpv args at runtime"
complete -c yt-x -n __fish_use_subcommand -l vlc-args -d "Pass custom vlc args at runtime"
complete -c yt-x -n __fish_use_subcommand -l tplay-args -d "Pass custom tplay args at runtime"
complete -c yt-x -n __fish_use_subcommand -l mpv-activity-name -d "Pass custom activity name on android for mpv"
complete -c yt-x -n __fish_use_subcommand -l vlc-activity-name -d "Pass custom activity name on android for vlc"
complete -c yt-x -n __fish_use_subcommand -l disown-player -d "Disown player"
complete -c yt-x -n __fish_use_subcommand -l no-disown-player -d "Do not disown player"
complete -c yt-x -n __fish_use_subcommand -l rofi-theme-main -d "Rofi main theme path" --require-parameter
complete -c yt-x -n __fish_use_subcommand -l rofi-theme-preview -d "Rofi preview theme path" --require-parameter
complete -c yt-x -n __fish_use_subcommand -l rofi-theme-prompt -d "Rofi prompt theme path" --require-parameter
complete -c yt-x -n __fish_use_subcommand -l rofi-theme-confirm -d "Rofi confirm theme path" --require-parameter
complete -c yt-x -n __fish_use_subcommand -l rofi-theme-pager -d "Rofi pager theme path" --require-parameter

complete -c yt-x -n __fish_use_subcommand -s x -l extension -d "Load extension" --require-parameter --no-files -a '(find /home/fakethink/.config/yt-x/extensions -follow -maxdepth 3 -type f 2>/dev/null | string replace "/home/fakethink/.config/yt-x/extensions/" "" | sort)'
complete -c yt-x -n __fish_use_subcommand -o xargs -l extension-arguments -d "The arguments to parse to cmd extension" --require-parameter --no-files

# ==========================================================================
# Menu shortcuts
# ==========================================================================
complete -c yt-x -n __fish_use_subcommand -o ce -l cmd-exit -d "Exit after shortcut menu commandline options"
complete -c yt-x -n __fish_use_subcommand -o ps -l playlist-skip -d "Skip item selection and auto‑pick first entry"
complete -c yt-x -n __fish_use_subcommand -o me -l media-exit -d "Exit after performing a media action"

complete -c yt-x -n __fish_use_subcommand -l play -d "Watch selected video"
complete -c yt-x -n __fish_use_subcommand -l play-all -d "Play whole playlist"
complete -c yt-x -n __fish_use_subcommand -l listen -d "Listen to selected video"
complete -c yt-x -n __fish_use_subcommand -l listen-all -d "Listen to whole playlist"
complete -c yt-x -n __fish_use_subcommand -l download -d "Download selected video"
complete -c yt-x -n __fish_use_subcommand -l download-all -d "Download whole playlist (video)"
complete -c yt-x -n __fish_use_subcommand -l download-audio -d "Download audio only"
complete -c yt-x -n __fish_use_subcommand -l download-audio-all -d "Download whole playlist as audio"
complete -c yt-x -n __fish_use_subcommand -l save -d "Save video to saved list"
complete -c yt-x -n __fish_use_subcommand -l save-playlist -d "Save playlist to custom list"
complete -c yt-x -n __fish_use_subcommand -l shell -d "Open subshell with context"

complete -c yt-x -n __fish_use_subcommand -s s -l search -d "Search for videos" --require-parameter --no-files -a '(cat "'/home/fakethink/.cache/yt-x/search-history.txt'" 2>/dev/null)'
complete -c yt-x -n __fish_use_subcommand -o sp -l search-playlist -d "Search for playlists" --require-parameter
complete -c yt-x -n __fish_use_subcommand -o sc -l search-channel -d "Search for channels" --require-parameter
complete -c yt-x -n __fish_use_subcommand -o ss -l search-short -d "Search for shorts" --require-parameter
complete -c yt-x -n __fish_use_subcommand -o sm -l search-movie -d "Search for movies" --require-parameter

complete -c yt-x -n __fish_use_subcommand -o sv -l saved-video -d "Open a specific saved video" --require-parameter --no-files -a '(jq -r '.entries[].title' "'/home/fakethink/.config/yt-x/my/videos.json'" 2>/dev/null)'
complete -c yt-x -n __fish_use_subcommand -o cp -l custom-playlist -d "Open a saved custom playlist" --require-parameter --no-files -a '(jq -r '.[]?.name' "'/home/fakethink/.config/yt-x/my/playlists.json'" 2>/dev/null)'
complete -c yt-x -n __fish_use_subcommand -o cc -l custom-cmd -d "Execute a specific custom command" --require-parameter --no-files -a '(jq -r '.[]?.name' "'/home/fakethink/.config/yt-x/my/cmds.json'" 2>/dev/null)'

complete -c yt-x -n __fish_use_subcommand -l feed -d "Open your personalised feed"
complete -c yt-x -n __fish_use_subcommand -l subscriptions-feed -d "Show latest videos from subscriptions"
complete -c yt-x -n __fish_use_subcommand -l watch-later -d "Open Watch Later playlist"
complete -c yt-x -n __fish_use_subcommand -l playlists -d "Show saved YouTube playlists"
complete -c yt-x -n __fish_use_subcommand -l custom-playlists -d "Browse custom playlists"
complete -c yt-x -n __fish_use_subcommand -l saved -d "Open saved videos"
complete -c yt-x -n __fish_use_subcommand -l recent -d "Show recently watched videos"
complete -c yt-x -n __fish_use_subcommand -l liked -d "Open Liked Videos playlist"
complete -c yt-x -n __fish_use_subcommand -l watch-history -d "Show watch history"
complete -c yt-x -n __fish_use_subcommand -l clips -d "Browse your clips"
complete -c yt-x -n __fish_use_subcommand -l new-custom-cmd -d "Create a new custom command"
complete -c yt-x -n __fish_use_subcommand -l custom-cmds -d "Execute an existing custom command"
complete -c yt-x -n __fish_use_subcommand -l search-history -d "Show search history"
complete -c yt-x -n __fish_use_subcommand -l edit-search-history -d "Edit search history file"
complete -c yt-x -n __fish_use_subcommand -l edit-custom-playlists -d "Edit custom playlists file"
complete -c yt-x -n __fish_use_subcommand -l edit-mpv-config -d "Edit mpv configuration"
complete -c yt-x -n __fish_use_subcommand -l edit-yt-dlp-config -d "Edit yt‑dlp configuration"
complete -c yt-x -n __fish_use_subcommand -l edit-custom-cmds -d "Edit custom commands file"

# ==========================================================================
# Channels subcommand
# ==========================================================================
complete -c yt-x -f -n __fish_use_subcommand -a channels -d "Browse or search within a specific channel"
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o n -l name -d "Channel name" --require-parameter --no-files -a '(jq -r '.entries[].title' "'/home/fakethink/.config/yt-x/my/subscriptions.json'" 2>/dev/null)'
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o v -l videos -d "List channel videos"
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o f -l featured -d "Show featured playlists"
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o s -l search -d "Search within channel" --require-parameter
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o p -l playlists -d "List channel playlists"
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o sh -l shorts -d "Show channel shorts"
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o st -l streams -d "Show live streams & past broadcasts"
complete -c yt-x -n "__fish_seen_subcommand_from channels" -o po -l podcasts -d "Show channel podcasts"

# ==========================================================================
# Completions subcommand
# ==========================================================================
complete -c yt-x -f -n __fish_use_subcommand -a completions -d "Generate shell completions"
complete -c yt-x -n "__fish_seen_subcommand_from completions" -s f -l fish -d "Print fish completions"
complete -c yt-x -n "__fish_seen_subcommand_from completions" -s b -l bash -d "Print bash completions"
complete -c yt-x -n "__fish_seen_subcommand_from completions" -s z -l zsh -d "Print zsh completions"
complete -c yt-x -n "__fish_seen_subcommand_from completions" -s h -l help -d "Show help for completions"
