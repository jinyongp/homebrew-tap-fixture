class ReleaseSourceFixture < Formula
  desc "Deterministic source archive fixture for Homebrew automation integration tests"
  homepage "https://github.com/jinyongp/release-fixture"
  url "https://github.com/jinyongp/release-fixture/archive/994278db1eacf12b660256e5218bed56f8360407.tar.gz"
  version "1.1.0"
  sha256 "75c433f6a186903417c8b41794237d6c0067f5ac4c2b4e7e796ea35357547364"
  license "MIT"

  def install
    target = bin/"release-source-fixture"
    target.write <<~SH
      #!/usr/bin/env sh
      echo "release-source-fixture #{version}"
    SH
    target.chmod 0755
  end

  test do
    assert_match "release-source-fixture #{version}", shell_output(bin/"release-source-fixture")
  end
end
