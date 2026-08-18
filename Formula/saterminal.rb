class Saterminal < Formula
  desc "Local-first SAT practice in the terminal"
  homepage "https://github.com/sreyassabbani/saterminal"
  version "0.6.15"
  license "MIT"

  on_arm do
    url "https://registry.npmjs.org/saterminal-darwin-arm64/-/saterminal-darwin-arm64-0.6.15.tgz"
    sha256 "4e91120a068993e9794b6bd3a6ddb7787a7217747a0ee0db5235d34280d1fe9d"
  end

  on_intel do
    url "https://registry.npmjs.org/saterminal-darwin-x64/-/saterminal-darwin-x64-0.6.15.tgz"
    sha256 "9a31af1455df201f416c56886427ed70bc51bed17297c8a6a9c01ded87f22791"
  end

  def install
    bin.install "bin/sat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sat --version")
  end
end
