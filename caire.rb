CAIRE_VERSION="1.1.0"

class Caire < Formula
  desc "Content aware image resize library"
  homepage "https://github.com/esimov/caire"
  url "#{homepage}/releases/download/v#{CAIRE_VERSION}/caire-#{CAIRE_VERSION}-darwin-amd64.zip"
  sha256 "52ff0b6b86b66a325233b4c627d8d0e922d74e6904bc1f41605f41006e91007f"

  depends_on "go" => :build

  def install
      bin.install "caire"
  end

  test do
    system "bin/caire"
  end
end
