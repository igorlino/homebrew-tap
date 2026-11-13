class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.4.0/justz-0.4.0-darwin-arm64.tar.gz"
      sha256 "d7e7c57fe761aa17093b8fff9f88b92db54d15c0662d192be5ac63960294d850"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.4.0/justz-0.4.0-darwin-amd64.tar.gz"
      sha256 "119731e43d898eb5e47588aee95ae58f25259c4c03a074512dfd61c228fbed0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.4.0/justz-0.4.0-linux-arm64.tar.gz"
      sha256 "e309f90a5034675a45e87f5bee5360d923928d864783aa14662b1abc8a675437"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.4.0/justz-0.4.0-linux-amd64.tar.gz"
      sha256 "e8eda7a3cf1a8e84419f8adae879e93f6407ee661689e43c8eaef615f7560b2e"
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
