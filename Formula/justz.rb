class Justz < Formula
  desc "Help, checks and shims for just"
  homepage "https://github.com/igorlino/justz"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.3.0/justz-0.3.0-darwin-arm64.tar.gz"
      sha256 "6dd10e90f736a8cc37cba653ba1be63ce55fbc32fd5a8ae14a50f532c9f3f32a"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.3.0/justz-0.3.0-darwin-amd64.tar.gz"
      sha256 "54c7a5bca2802720069b943bb58be79facb032ea0de7f29de63ae98239f75cd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/igorlino/justz/releases/download/v0.3.0/justz-0.3.0-linux-arm64.tar.gz"
      sha256 "e0416ded2070229bc7a852466cd547f87c4c72163d773e8e2fb03ce9bfba10f9"
    end
    on_intel do
      url "https://github.com/igorlino/justz/releases/download/v0.3.0/justz-0.3.0-linux-amd64.tar.gz"
      sha256 "2dd3efff9d57f0a5c919d11a3b946caa4c67eda694b7acd0e1a3840a944ccd3f"
    end
  end

  depends_on "just"

  def install
    bin.install "justz"
    # justz acts as jz when started under that name. jzh follows with justz help.
    bin.install_symlink "justz" => "jz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/justz --version")
  end
end
