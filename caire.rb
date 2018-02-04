CAIRE_VERSION="1.0.1"

class Caire < Formula
  desc "Content aware image resize library"
  homepage "https://github.com/esimov/caire"
  url "#{homepage}/releases/download/v#{CAIRE_VERSION}/caire-#{CAIRE_VERSION}-darwin-amd64.zip"
  sha256 "f2e0f63319e6cbdb8ad696df2d4771ef6220c4a01aa033f5652d20cb166ee390"

  depends_on "go" => :build

  def install
      bin.install "caire"
  end

  test do
    system "bin/caire"
  end
end
