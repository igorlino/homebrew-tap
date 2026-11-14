class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.6.0/justz-0.6.0-darwin-arm64.tar.gz"
      sha256 "e132b156f9f4ed66bbcf7c12817cb776e80f7420a4031cd24b20277bb32ce010"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.6.0/justz-0.6.0-darwin-amd64.tar.gz"
      sha256 "cf37fc18bec0c2b6d0cd6cc8e7a0bb05f9932161484beeb3bc3eae33f703e805"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.6.0/justz-0.6.0-linux-arm64.tar.gz"
      sha256 "de135d75d97b9c5cb5f41b392ec6a6ac2e74431d6677870e4d51dda3e4be8d7f"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.6.0/justz-0.6.0-linux-amd64.tar.gz"
      sha256 "ab51a0a7f2c448019f6884be517e28f8c3557f21b5b27209bffde9de9112cc75"
    end
  end

  depends_on "just"

  def install
    bin.install "justz"
    # justz acts as jz and jzh when started under those names
    bin.install_symlink "justz" => "jz"
    bin.install_symlink "justz" => "jzh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/justz --version")
  end
end
