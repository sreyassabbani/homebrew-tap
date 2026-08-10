class Saterminal < Formula
  desc "Local-first SAT practice in the terminal"
  homepage "https://github.com/sreyassabbani/saterminal"
  url "https://registry.npmjs.org/saterminal/-/saterminal-0.6.10.tgz"
  sha256 "05afb9ddef469f886561d9d3bb62ffae45745f255945159e1612c0a6ac58167b"
  license "MIT"

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
