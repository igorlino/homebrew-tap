class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.8.0/justz-0.8.0-darwin-arm64.tar.gz"
      sha256 "89d246ca4f5fc5970b63576c5f891e752641ebc0de36be479a9998a4ca6c1d8f"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.8.0/justz-0.8.0-darwin-amd64.tar.gz"
      sha256 "91af23fcfbc633dde900db60c86afbaa45a17742f2fdf1ec46f1616697127b63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.8.0/justz-0.8.0-linux-arm64.tar.gz"
      sha256 "4f53be4ff514d4beef7cf3c2b58bd4a33aa655e866b4a8ae557bbd8365d4d0bd"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.8.0/justz-0.8.0-linux-amd64.tar.gz"
      sha256 "f3f5ffc28dc2d479c32c3d96a39d12b94c8736519fa389e89e8e0613c6616c0e"
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
