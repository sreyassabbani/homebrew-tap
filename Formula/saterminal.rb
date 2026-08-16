class Saterminal < Formula
  desc "Local-first SAT practice in the terminal"
  homepage "https://github.com/sreyassabbani/saterminal"
  version "0.6.14"
  license "MIT"

  on_arm do
    url "https://registry.npmjs.org/saterminal-darwin-arm64/-/saterminal-darwin-arm64-0.6.14.tgz"
    sha256 "87369c409513fc51cf17c16ae2744c3fbfe4b746bcefb589d3ab1dc6d45333a3"
  end

  on_intel do
    url "https://registry.npmjs.org/saterminal-darwin-x64/-/saterminal-darwin-x64-0.6.14.tgz"
    sha256 "ac778220a315acf66dc77241941a7f5ea9d70ce31e1ffd8a8838a4eca204a73d"
  end

  def install
    bin.install "bin/sat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sat --version")
  end
end
