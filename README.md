# sysml-v2-docker

Docker images for SysML v2

## Usage

```sh
cd YOUR_SYSML_PROJECT
docker run --rm -it --net host -e DISPLAY -v $(pwd):/project ghcr.io/kenji-miyake/sysml-v2-docker/eclipse:latest
```

Your project must have `.project` like the following.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<projectDescription>
 <name>sysml-project</name>
 <comment></comment>
 <projects>
  <project>sysml.library</project>
 </projects>
 <natures>
  <nature>org.eclipse.xtext.ui.shared.xtextNature</nature>
 </natures>
 <buildSpec>
  <buildCommand>
   <name>org.eclipse.xtext.ui.shared.xtextBuilder</name>
   <arguments/>
  </buildCommand>
 </buildSpec>
 <linkedResources/>
 <filteredResources/>
</projectDescription>
```

You can copy-and-paste it or it can be generated from `gradle` with this `bundle.gradle`.

```gradle
plugins {
    id 'eclipse'
}

eclipse {
  project {
    name = 'sysml-project'
    referencedProjects = ['sysml.library']
    natures = ['org.eclipse.xtext.ui.shared.xtextNature']
    buildCommand 'org.eclipse.xtext.ui.shared.xtextBuilder'
  }
}
```

## License

Since docker images contain the contents in [SysML-v2-Release](https://github.com/Systems-Modeling/SysML-v2-Release), this repository is published under `LGPL-3.0`.
Also, before using this, you must agree with the `SysML v2 Pilot Implementation Licensing Agreement` below.

```md
SysML v2 Pilot Implementation Licensing Agreement

Copyright (c) 2019-2020 Model Driven Solutions, Inc.
Copyright (c) 2019-2020 California Institute of Technology (Jet Propulsion Laboratory)
Copyright (c) 2019-2020 IncQuery Labs Ltd.
Copyright (c) 2019-2020 Itemis
Copyright (c) 2019-2020 Maplesoft (Waterloo Maple, Inc.)
Copyright (c) 2019-2020 Mgnite Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to use and redistribute the Software and to permit persons to whom the Software is furnished to do so, subject to the conditions that the above copyright notice and this permission notice shall be included in all copies of the Software. No permission is granted to modify, merge, and/or sell copies of the Software, or to create derivative works based on the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
