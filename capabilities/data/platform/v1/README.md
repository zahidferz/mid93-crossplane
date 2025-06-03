# platform.v1.data.mid93.mid93.com

**Table of Contents**
- [platform.v1.data.mid93.mid93.com](#platformv1datamid93mid93plccom)
  - [Description](#description)
  - [Maintainers](#maintainers)
  - [Example](#example)

## Description
The platform capability is a core capability that is referenced by all other capabilities within mid93. It provides a mechanism by which other capabilities can look key platform and infrastructure details without knowledge of the underlying infrastructure architecture, abstracting capabilities from infrastructure and architecture changes.

## Maintainers
This capability is owned and maintained by the platform engineering team.

## Example
Use the following claim to view the module outputs:

```
apiVersion: v1.data.mid93.mid93.com/v1
kind: Platform
metadata:
  name: platform-output
  namespace: example-test-001
spec:
  parameters:
    capability:
      version: your-branch-name
      protected: false
    environment:
      name: example-test-001
    fetch:
      vpc: true
```
Viewing the workspace object created by this xrd will then allow you to view the outputs.