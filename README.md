# homebrew-tap-fixture

Non-production destination tap for shared Homebrew automation acceptance.

This repository owns only fixture tap state. It does not contain product source,
Formula specifications, reusable workflows, or publishing orchestration.

`jinyongp/release-fixture` is the source/product fixture. Its acceptance workflow
uses the public `homebrew-actions` workflows to validate and publish Formula state here.

No production Formula, product workflow, or end user should depend on this repository.
