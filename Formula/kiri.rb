class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/gaossr/kiri"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "b48248ccc91b83c8ef7018ffc0aebabede63ac5411501d9679d6377554df62c9"
    else
      url "https://github.com/gaossr/kiri/releases/download/v#{version}/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "60e94c0f0d3cc106a82aa21f7c74f20e8a545bea972dbaba2dcdcc2609f3cd49"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
