class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v0.1.21/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "baeae41290c8eacb80d98b99bca9c953210f6a70a401afc8e23570a66257a237"
    else
      url "https://github.com/gaossr/kiri/releases/download/v0.1.21/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "18da1adf42282ee8a736563dd8ea5ae8f0942dcd76df5652af021a8d50c8a5f6"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
