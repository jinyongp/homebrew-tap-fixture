class TapFixture < Formula
  desc "Self-contained source fixture for Homebrew publish integration tests"
  homepage "https://github.com/jinyongp/homebrew-tap-fixture"
  url "https://github.com/jinyongp/homebrew-tap-fixture/archive/fe744772763fd3d94340298a63bca73740f97683.tar.gz"
  version "fe744772763f"
  sha256 "302af9af43ecf79537a9255470d1a113c4b6b480747692417e5f0fa6fe71e97c"
  license "MIT"

  def install
    target = bin/"tap-fixture"
    target.write <<~SH
      #!/usr/bin/env sh
      echo "tap-fixture #{version}"
    SH
    target.chmod 0755
  end

  test do
    assert_match "tap-fixture #{version}", shell_output(bin/"tap-fixture")
  end
end
