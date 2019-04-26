CAIRE_VERSION="1.2.1"

class Caire < Formula
  desc "Content aware image resize library"
  homepage "https://github.com/esimov/caire"
  url "#{homepage}/releases/download/v#{CAIRE_VERSION}/caire-#{CAIRE_VERSION}-darwin-amd64.zip"

  depends_on "go" => :build

  def install
      bin.install "caire"
  end

  test do
    system "bin/caire"
  end
end
