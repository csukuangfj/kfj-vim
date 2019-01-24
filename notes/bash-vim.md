
1. Add

```
set -o vi
```
to `.bashrc`

2. Add

```
bind -x '"\C-l": clear'
```

to `.bashrc` to enable clear screen using `ctrl + L`.

3. Add

```
bind '"jk":vi-movement-mode'
```

to `.bashrc` to map `jk` to `ESC`.
