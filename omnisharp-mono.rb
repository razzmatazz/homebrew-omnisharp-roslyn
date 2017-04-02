class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.12.0/omnisharp-mono.tar.gz"
  version "1.12.0"
  sha256 "3614111fb6edbba8450aad7ded4a702286d68a681bfb5679b90d2c4ac5546ea6"
  depends_on "mono"
  conflicts_with "omnisharp-netcoreapp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
