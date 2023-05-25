# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CertRipper < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs."
  homepage "https://github.com/recon-tools/cert-ripper-go"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.5.7/cert-ripper-0.5.7-darwin-arm64.tar.gz"
      sha256 "d6125a04285ed790aa6747e09ea858a5c24269873d43be727977947ded99aeb7"

      def install
        bin.install "bin/cert-ripper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.5.7/cert-ripper-0.5.7-darwin-amd64.tar.gz"
      sha256 "8668fb23a4d62c1e63c76e922d338ed9d9eb33ff9f2e3798b37dcfc029bc6aac"

      def install
        bin.install "bin/cert-ripper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.5.7/cert-ripper-0.5.7-linux-amd64.tar.gz"
      sha256 "9f9753c64c0682c261d2152ece474d9b5d9eaa1d0451ef2fca28855004f43c46"

      def install
        bin.install "bin/cert-ripper"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.5.7/cert-ripper-0.5.7-linux-armv6.tar.gz"
      sha256 "4f74d88b96d5c26b46c61a6502575681521e4c9802e3f9e53acb63f7278b65c4"

      def install
        bin.install "bin/cert-ripper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.5.7/cert-ripper-0.5.7-linux-arm64.tar.gz"
      sha256 "7f5aa327993c80d8ae01bb085c2bf6848ceba0661c2b8718cff88af1e8ce5b95"

      def install
        bin.install "bin/cert-ripper"
      end
    end
  end

  test do
    system "#{bin}/cert-ripper", "--help"
  end
end
