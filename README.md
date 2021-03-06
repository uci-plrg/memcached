# Memcached

Memcached is a high performance multithreaded event-based key/value cache
store intended to be used in a distributed system.

See: https://memcached.org/about

A fun story explaining usage: https://memcached.org/tutorial

If you're having trouble, try the wiki: https://memcached.org/wiki

If you're trying to troubleshoot odd behavior or timeouts, see:
https://memcached.org/timeouts

https://memcached.org/ is a good resource in general. Please use the mailing
list to ask questions, github issues aren't seen by everyone!

## Dependencies

* libevent, http://www.monkey.org/~provos/libevent/ (libevent-dev)
* libseccomp, (optional, linux) - enables process restrictions for better
  security.

## Environment

Be warned that the -k (mlockall) option to memcached might be
dangerous when using a large cache.  Just make sure the memcached machines
don't swap.  memcached does non-blocking network I/O, but not disk.  (it
should never go to disk, or you've lost the whole point of it)

## Website

* http://www.memcached.org

## Contributing

See https://github.com/memcached/memcached/wiki/DevelopmentRepos

## Using with Jaaru

```bash
./configure --enable-pslab CFLAGS="-O0 -g -I/home/vagrant/pmcheck/Memory"
make CC=~/pmcheck/Test/gcc
sed -i 's/export LD_LIBRARY_PATH=.*/export LD_LIBRARY_PATH=~\/pmcheck\/bin\/:~\/pmdk\/src\/debug\//g' run.sh
sed -i 's/export DYLD_LIBRARY_PATH=.*/export DYLD_LIBRARY_PATH=~\/pmcheck\/bin\/:~\/pmdk\/src\/debug\//g' run.sh
```

In Server:
```bash
./run.sh ./memcached
```

In client:
```bash
telnet localhost 11211
```

