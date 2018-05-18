
refer to

http://vim.wikia.com/wiki/Sort_lines

Demonstrate the sort function within vim.


First, select the lines.
Second, press `:`, then enter the command with options if any.

Test data

```.cpp
#include <abc/1.h>
#include <a/2.h>
#include <12/b.h>
#include <12/abc.h>
#include <12/bc.h>
#include <12/b.h>
#include <ros/bc.h>
#include <opencv/bc.h>
#include <12/b.h>
#include <caffe/caffe.h>
```

`sort` output (in ascending order)

```.cpp
#include <12/abc.h>
#include <12/b.h>
#include <12/b.h>
#include <12/b.h>
#include <12/bc.h>
#include <a/2.h>
#include <abc/1.h>
#include <caffe/caffe.h>
#include <opencv/bc.h>
#include <ros/bc.h>
```

`sort u` with unique

```.cpp
#include <12/abc.h>
#include <12/b.h>
#include <12/bc.h>
#include <a/2.h>
#include <abc/1.h>
#include <caffe/caffe.h>
#include <opencv/bc.h>
#include <ros/bc.h>
```

`sort!` reverse sort (in descending order)

```.cpp
#include <ros/bc.h>
#include <opencv/bc.h>
#include <caffe/caffe.h>
#include <abc/1.h>
#include <a/2.h>
#include <12/bc.h>
#include <12/b.h>
#include <12/b.h>
#include <12/b.h>
#include <12/abc.h>
```

# Specify the reference column while sorting

Use the external `sort` program

Example input

```
abc 12
a   1
bc  3
d   2
```

`!sort -n -k 2` output

```
a   1
d   2
bc  3
abc 12
```

See `man sort` for more available options.


Input

```.cpp
#include <d.h>
#include <abc.h>
#include "d.h"
#include "abc.h"
```

`sort` output

```.cpp
#include "abc.h"
#include "d.h"
#include <abc.h>
#include <d.h>
```

`sort!` output

```.cpp
#include <d.h>
#include <abc.h>
#include "d.h"
#include "abc.h"
```

which puts system includes first.

