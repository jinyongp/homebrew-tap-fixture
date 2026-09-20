class ReleaseSourceFixture < Formula
  desc "Deterministic source archive fixture for Homebrew automation integration tests"
  homepage "https://github.com/releaseway/release-fixture"
  url "https://github.com/releaseway/release-fixture/archive/b59876965c444b0869973db23653e481965727bb.tar.gz"
  version "0.1.0"
  sha256 "dd7d41fdb272b020888819d15f287c45ebbe7d57c826b299e14cd57fdba5a4de"
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
