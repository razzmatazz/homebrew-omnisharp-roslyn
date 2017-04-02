class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.12.0/omnisharp-osx-x64-netcoreapp1.1.tar.gz"
  version "1.12.0"
  sha256 "fb1c7fac50cfc67538aab1e89e285f4ec3b0e2ecc1852466c442cf0112941143"
  conflicts_with "omnisharp-mono"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
