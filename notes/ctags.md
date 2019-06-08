
# Installation

On macOS

```
brew install ctags
```

On Ubuntu

```
sudo apt-get install ctags
```

# Generate tag files

Go to the  project root directory, run

```
ctags -R .
```

It creates a file `ctags` in the current directory

# Set vim

```
set tags=tags;/
```

which will search the file `tags` in the current directory
and recursively in the parent directory.

# Usage in vim

- `ctrl + ]` jump to the definition
- `ctrl + t` jump back (pop the stack)
- `ctrl + o`
- `ctrl + i`
