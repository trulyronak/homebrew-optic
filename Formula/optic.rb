require "language/node"

class Optic < Formula
  desc "The Optic CLI"
  homepage "https://github.com/opticdev/optic"
  url "https://registry.npmjs.org/@useoptic/cli/-/cli-8.0.6.tgz"
  version "8.0.6"
  sha256 "5d0147af268a3870c49d14fd58e896a0e102190f2a91d45d44203ca624788c1f"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
