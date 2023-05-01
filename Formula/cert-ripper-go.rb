class CertRipperGo < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs"
  homepage "https://github.com/recon-tools/cert-ripper-go"
  license "MIT"
  version "0.3.0"

  if Hardware::CPU.intel?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.3.0/cert-ripper-0.3.0-darwin-amd64.tar.gz"
    sha256 "3ba0bcb74fd86208129a909477a1a3f05b5157c0c275c2e68751811d0fdcd42f"
  elsif Hardware::CPU.arm?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.3.0/cert-ripper-0.3.0-darwin-arm64.tar.gz"
    sha256 "93ae897f6de86f5ec35442287830e92a928174885a6606a2a8da377a0612c201"
  else
    odie "Unsupported architecture"
  end

  def install
    bin.install "bin/cert-ripper"
  end

  test do
    system "#{bin}/cert-ripper", "--help"
  end
end
