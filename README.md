# homebrew-tap-fixture

Non-production Homebrew tap used only for shared automation integration tests.

No production Formula or consumer should depend on this repository.

The `publish acceptance` workflow requires an Actions secret named
`HOMEBREW_TAP_TOKEN` with contents write access to this repository. The secret is
intentionally not created by repository code.
