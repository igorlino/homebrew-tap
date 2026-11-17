class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.10.0/justz-0.10.0-darwin-arm64.tar.gz"
      sha256 "9acf76296ed65d295aa5c6d39a5d82b9c69858967d6982e67b5f03493cfd5477"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.10.0/justz-0.10.0-darwin-amd64.tar.gz"
      sha256 "3254cfd5610a07fca01dba166b54d53cdb680067e4592784f6d8f54c572afcf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.10.0/justz-0.10.0-linux-arm64.tar.gz"
      sha256 "a5e762b1cf53ced78d335aaefd26c209cb73465fcd9c85147e2a1e2ca241d1f1"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.10.0/justz-0.10.0-linux-amd64.tar.gz"
      sha256 "8d6ee3140ecd8b047c88b9509988c18de9368be661415d005ff4519f22b25109"
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
