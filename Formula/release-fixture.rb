class ReleaseFixture < Formula
  desc "Deterministic release asset fixture for automation integration tests"
  homepage "https://github.com/jinyongp/release-fixture"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jinyongp/release-fixture/releases/download/v1.1.0/release-fixture_macos_arm64.tar.gz"
      sha256 "db81499a05a87ef1931afd934c2e284057c909301634c36cd29adfbcbb8073db"
    end
    on_intel do
      url "https://github.com/jinyongp/release-fixture/releases/download/v1.1.0/release-fixture_macos_x86_64.tar.gz"
      sha256 "471fda6b288b2ae65b3f80bbae617378a639f8b957fd3e4c1363d1361b81c5cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jinyongp/release-fixture/releases/download/v1.1.0/release-fixture_linux_arm64.tar.gz"
      sha256 "e6efeb694c283bcb443d05ad027b2277f46f9848803e6373e29daa96de97557a"
    end
    on_intel do
      url "https://github.com/jinyongp/release-fixture/releases/download/v1.1.0/release-fixture_linux_x86_64.tar.gz"
      sha256 "580c326b987b90b02b16809e8d33c41f00d12725b61dcfae252f7bee3e360c6d"
    end
  end

  def install
    bin.install "release-fixture"
  end

  test do
    assert_match "release-fixture #{version}", shell_output("#{bin}/release-fixture --version")
  end
end
