class CertRipperGo < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs"
  homepage "https://github.com/recon-tools/cert-ripper-go"
  license "MIT"
  version "0.1.0"

  if Hardware::CPU.intel?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.1.0/cert-ripper-v0.1.0-darwin-amd64.tar.gz"
    sha256 "3f8433ab9bbfc638a87e6699f3b92f676ac9cf408590f991abd1afe7f4adbe71"
  elsif Hardware::CPU.arm?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.1.0/cert-ripper-v0.1.0-darwin-arm64.tar.gz"
    sha256 "7ad3cf4ef1f8d8d9c215c3a1b696f83580124861e2a00c5d2d77f2b72e286d6e"
  else
    odie "Unsupported architecture"
  end

  def install
    bin.install "cert-ripper"
  end

  test do
    system "#{bin}/cert-ripper", "--help"
  end
end
