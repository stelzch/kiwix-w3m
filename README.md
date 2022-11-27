# Kiwix W3M

Access StackOverflow or Wikipedia from the console.
You can read more about the motivation in my [blog article](https://ch-st.de/offline-first-programming/)

Requirements:
* `kiwix-tools`
* `python3`
* `w3m`
* [stackoverflow.com_en_all_2022-05.zim](https://download.kiwix.org/zim/stackoverflow.com_en_all.zim.torrent) and [wikipedia_en_all_maxi_2022-05.zim](https://download.kiwix.org/zim/wikipedia_en_all_maxi.zim.torrent)

Serve up your downloaded ZIM files:
`kiwix-serve -p 8081 ~/Downloads/*.zim`

You can also use the provided systemd service file (`mv kiwix.service ~/.config/systemd/user && systemctl --user daemon-reload && systemctl --user enable --now kiwix.service`).

## Usage
#### Start page
`wikipedia.sh`

`stackoverflow.sh`


#### Search

`wikipedia.sh kattegat`

`stackoverflow.sh reverse linked list haskell`

Wikipedia articles with article slug:
`wikipedia.sh --exact 'Haskell_(programming_language)'`
