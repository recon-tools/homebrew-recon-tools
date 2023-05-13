class CertRipperGo < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs"
  homepage "https://github.com/recon-tools/cert-ripper-go"
  license "MIT"
  version "0.4.2"

  if Hardware::CPU.intel?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.4.2/cert-ripper-0.4.2-darwin-amd64.tar.gz"
    sha256 "eb1dedd54a11df0d0332f9296779900fa42313a1192591a787330ed1f31f4492"
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
