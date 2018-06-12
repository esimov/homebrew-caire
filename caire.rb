CAIRE_VERSION="1.1.0"

class Caire < Formula
  desc "Content aware image resize library"
  homepage "https://github.com/esimov/caire"
  url "#{homepage}/releases/download/v#{CAIRE_VERSION}/caire-#{CAIRE_VERSION}-darwin-amd64.zip"
  sha256 "e38ee949b1092c2b925dddd65d2584dd2eac2ddfb754942d1b854598f790ccf1"

  depends_on "go" => :build

  def install
      bin.install "caire"
  end

  test do
    system "bin/caire"
  end
end
