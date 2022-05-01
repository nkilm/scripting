# ipconfig | grep "IPv4" | awk '{print $14}'

# to add the above ip addr as alias 
```bash

alias getip="ipconfig | grep "IPv4" | awk '{print \$14}'"

```