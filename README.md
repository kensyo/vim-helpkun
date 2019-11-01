# helpkun

A vim plugin just to open and close a help window a little bit readily.

## Key Mappings
* `<Plug>(helpkun_close)` closes the help window in your current tab.
* `<Plug>(helpkun_open_on_cursor)` tries to open the help item on your cursor.

## Usage
Map `<Plug>(helpkun_close)` and `<Plug>(helpkun_open_on_cursor)` like

```viml
nmap <Leader>ch <Plug>(helpkun_close)
nmap <Leader>ch <Plug>(helpkun_open_on_cursor)

```
or

```viml
command! CH execute "normal \<Plug>(helpkun_close)"
command! OH execute "normal \<Plug>(helpkun_open_on_cursor)"
```
.

## LICENSE
MIT
