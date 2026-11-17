class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.9.0/justz-0.9.0-darwin-arm64.tar.gz"
      sha256 "661d652bca1942a862e4d2e8a1c07bf3a6091f4bd7e3cb1c504a7575b80a7e0c"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.9.0/justz-0.9.0-darwin-amd64.tar.gz"
      sha256 "d12f7130fa848234f4e7cf8c5fc6394b8daf900e5e1420a5837c8d296d74b87c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.9.0/justz-0.9.0-linux-arm64.tar.gz"
      sha256 "42ebe017e611d2479ba8565b18d3a36d0f901c215f42f875d417046b5f9ce0f6"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.9.0/justz-0.9.0-linux-amd64.tar.gz"
      sha256 "11da2032ee961a5fcfe603c479e2dc40443d74b4f06b0cd27f5ea298e3fcef0d"
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
