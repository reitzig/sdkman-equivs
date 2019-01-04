### Usage

```
equivs-build java-11-open
sudo dpkg -i sdkman-java-11-open_1.0_all.deb
```

### Caveats

 1. Binaries installed with SDKMAN! are not in `PATH` per se;
    only after its initialization has run.
    Therefore, programs relying on the provided packages may fail 
    if not run from a (compatible) shell.

    Possible workaround: add symlinks to actual binaries to the package.
