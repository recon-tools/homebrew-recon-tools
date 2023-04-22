class CertRipperGo < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs"
  homepage "https://github.com/recon-tools/cert-ripper-go"
  url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.1.0/cert-ripper-v0.1.0-darwin-arm64.tar.gz"
  sha256 "7ad3cf4ef1f8d8d9c215c3a1b696f83580124861e2a00c5d2d77f2b72e286d6e"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "cert-ripper"
  end

  test do
    system "#{bin}/cert-ripper", "--help"
  end
end
