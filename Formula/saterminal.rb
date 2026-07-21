class Saterminal < Formula
  desc "Local-first SAT practice in the terminal"
  homepage "https://github.com/sreyassabbani/saterminal"
  url "https://registry.npmjs.org/saterminal/-/saterminal-0.6.8.tgz"
  sha256 "3ae5be4fcd026577fdfc34f805c9a793eb619358c6eea224add5784fa4d6f67f"
  license "MIT"
  revision 1

  depends_on "bun"

  def install
    system "bun", "install", "--production"
    libexec.install Dir["*"]
    chmod 0755, libexec/"src/cli/index.ts"
    (bin/"sat").write_env_script libexec/"src/cli/index.ts", PATH: Formula["bun"].opt_bin
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sat --version")
  end
end
