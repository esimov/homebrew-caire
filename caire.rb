CAIRE_VERSION="1.0.2"

class Caire < Formula
  desc "Content aware image resize library"
  homepage "https://github.com/esimov/caire"
  url "#{homepage}/releases/download/v#{CAIRE_VERSION}/caire-#{CAIRE_VERSION}-darwin-amd64.zip"
  sha256 "ccd9f187d83873ede55240629e45bc7380ba6bcd747ef86e5cbae11268844319"

  depends_on "go" => :build

  def install
      bin.install "caire"
  end

  test do
    system "bin/caire"
  end
end
