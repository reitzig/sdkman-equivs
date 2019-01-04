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

2. SDKMAN! may not provide exactly the same things as the corresponding packages.
   Compare `ls .sdkman/candidates/java/11.0.1-open/bin/` with the lists of files 
   in 
    [openjdk-11-jdk-headless](https://packages.ubuntu.com/bionic/amd64/openjdk-11-jdk-headless/filelist)
  and
    [openjdk-11-jre-headless](https://packages.ubuntu.com/bionic/amd64/openjdk-11-jre-headless/filelist),
  for instance.
