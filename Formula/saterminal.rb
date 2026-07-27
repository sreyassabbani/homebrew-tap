class Saterminal < Formula
  desc "Local-first SAT practice in the terminal"
  homepage "https://github.com/sreyassabbani/saterminal"
  url "https://registry.npmjs.org/saterminal/-/saterminal-0.6.9.tgz"
  sha256 "d4cd58e82a670294ed4e52487c9932ac4331290fce17f4de4408d6c8a1aaaee4"
  license "MIT"
  revision 1

  preserve_rpath

  depends_on "bun"

  def install
    system "bun", "install", "--production", "--omit=peer"
    libexec.install Dir["*"]
    chmod 0755, libexec/"src/cli/index.ts"
    (bin/"sat").write_env_script libexec/"src/cli/index.ts", PATH: Formula["bun"].opt_bin
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sat --version")
  end
end
