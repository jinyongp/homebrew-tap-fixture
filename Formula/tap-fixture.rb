class TapFixture < Formula
  desc "Self-contained source fixture for Homebrew publish integration tests"
  homepage "https://github.com/jinyongp/homebrew-tap-fixture"
  url "https://github.com/jinyongp/homebrew-tap-fixture/archive/9c7656568081bb798bd02845ed108d261cf903b7.tar.gz"
  version "9c7656568081"
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
