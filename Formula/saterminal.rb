class Saterminal < Formula
  desc "Local-first SAT practice in the terminal"
  homepage "https://github.com/sreyassabbani/saterminal"
  version "0.6.16"
  license "MIT"

  on_arm do
    url "https://registry.npmjs.org/saterminal-darwin-arm64/-/saterminal-darwin-arm64-0.6.16.tgz"
    sha256 "e508b303b15f2ac7f05e4cf1aaeb91784fd0e6e9f531d286858c995f5822cc3d"
  end

  on_intel do
    url "https://registry.npmjs.org/saterminal-darwin-x64/-/saterminal-darwin-x64-0.6.16.tgz"
    sha256 "87faa0ca43031a9cf8116fb0207195402af431bc727400eead4e283fc624cab5"
  end

  def install
    bin.install "bin/sat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sat --version")
  end
end
