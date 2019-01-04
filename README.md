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

 2. The provided Debian packages, e.g. `openjdk-11-jre-headless`,
    provide a whole slew of packages. Since provides are not recursive,
    these have all to be listed again -- despite not being really correct!
    (A Java 11 JRE can't properly double as a Java 7 JRE.)

 3. SDKMAN! may not provide exactly the same things as the corresponding packages.
   Compare `ls .sdkman/candidates/java/11.0.1-open/bin/` with the lists of files 
   in 
    [openjdk-11-jdk-headless](https://packages.ubuntu.com/bionic/amd64/openjdk-11-jdk-headless/filelist)
  and
    [openjdk-11-jre-headless](https://packages.ubuntu.com/bionic/amd64/openjdk-11-jre-headless/filelist),
  for instance.

 4. The dummy packages have no dependencies; the assumption is that developers
    know what they are doing and ensure a working installation beforehand.

 5. The binary versions in the SDKMAN! candidate and the replaced repository package
    may be (wildly) different. Software that depends on the provided package but
    requires a specific version may fail.
