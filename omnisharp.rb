class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.9-beta22/omnisharp-osx-x64-netcoreapp1.0.tar.gz"
  version "1.9-beta22"
  sha256 "8adcea91b1f905605f3c242e8ad71952b0a627e7187e3a9af234b8b51ea788b4"

  depends_on "mono" => :recommended
# not quite sure dnvm is a hard requirement -- uncommenting for now
# because it breaks the forula for me at the moment
#  depends_on "aspnet/dnx/dnvm" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
