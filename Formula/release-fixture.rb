class ReleaseFixture < Formula
  desc "Deterministic release asset fixture for automation integration tests"
  homepage "https://github.com/releaseway/release-fixture"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/releaseway/release-fixture/releases/download/v0.1.0/release-fixture_macos_arm64.tar.gz"
      sha256 "e7c13d10abd883c003f6d2aea96c390706e876c65536c6e8d7a8ba637b2c088f"
    end
    on_intel do
      url "https://github.com/releaseway/release-fixture/releases/download/v0.1.0/release-fixture_macos_x86_64.tar.gz"
      sha256 "0bbf880cd88a7004f34d40010ff92bf95d2e8567bee0eb99ab21ff942c5b37d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/releaseway/release-fixture/releases/download/v0.1.0/release-fixture_linux_arm64.tar.gz"
      sha256 "8586f91edfeaa50f10fccb1f84e0d6413142c01e8bbdbfbd476d30931fe9a8d0"
    end
    on_intel do
      url "https://github.com/releaseway/release-fixture/releases/download/v0.1.0/release-fixture_linux_x86_64.tar.gz"
      sha256 "11e45f0fed7e1dd066dd9ecfb9d7d50d801bf52e3e2f3a564435ef537d085ca3"
    end
  end

  def install
    bin.install "release-fixture"
  end

  test do
    assert_match "release-fixture #{version}", shell_output("#{bin}/release-fixture --version")
  end
end
