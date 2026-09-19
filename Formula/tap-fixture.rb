class TapFixture < Formula
  desc "Self-contained source fixture for Homebrew publish integration tests"
  homepage "https://github.com/jinyongp/homebrew-tap-fixture"
  url "https://github.com/jinyongp/homebrew-tap-fixture/archive/fbd1b092d40b2cd924e8bdb4237c81f8800133b8.tar.gz"
  version "fbd1b092d40b"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
