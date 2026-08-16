class Saterminal < Formula
  desc "Local-first SAT practice in the terminal"
  homepage "https://github.com/sreyassabbani/saterminal"
  version "0.6.13"
  license "MIT"

  on_arm do
    url "https://registry.npmjs.org/saterminal-darwin-arm64/-/saterminal-darwin-arm64-0.6.13.tgz"
    sha256 "64831a403e67181a48c1bc5af931793ae945187bcf134a2cbb1d9a6635bae605"
  end

  on_intel do
    url "https://registry.npmjs.org/saterminal-darwin-x64/-/saterminal-darwin-x64-0.6.13.tgz"
    sha256 "56ed91ced677c8fda7e14bbaed5e1ba73c617bd5641525708845bae592082cc1"
  end

  def install
    bin.install "bin/sat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sat --version")
  end
end
