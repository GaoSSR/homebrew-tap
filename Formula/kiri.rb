class Kiri < Formula
  desc "Inspect local development listening ports"
  homepage "https://github.com/GaoSSR/Kiri"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GaoSSR/Kiri/releases/download/v0.1.22/kiri-aarch64-apple-darwin.tar.gz"
      sha256 "3d37c75e4fcd93bf42269746715246404ebbe1df9b128f03d190caac6865f9df"
    else
      url "https://github.com/GaoSSR/Kiri/releases/download/v0.1.22/kiri-x86_64-apple-darwin.tar.gz"
      sha256 "e9cabdaa3bbbc38aefb9efcdc02f8dd0666d11cf61fa16f9e0ae911786f9c5d5"
    end
  end

  def install
    bin.install "ports"
  end

  test do
    assert_match "Kiri", shell_output("#{bin}/ports --help")
  end
end
