# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CertRipperGo < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs."
  homepage "https://github.com/recon-tools/cert-ripper-go"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.7.0/cert-ripper-go-0.7.0-darwin-amd64.tar.gz"
      sha256 "7ca8680b75cd94393a4b5e07b0f0a29bba0fcc7808bca14777d0cbf5448dcf1e"

      def install
        bin.install "bin/cert-ripper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.7.0/cert-ripper-go-0.7.0-darwin-arm64.tar.gz"
      sha256 "b79785b00158e59b3f7fe505a28a2bc529808d09fcdd98c0c08c8add1155d7a7"

      def install
        bin.install "bin/cert-ripper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.7.0/cert-ripper-go-0.7.0-linux-amd64.tar.gz"
      sha256 "5cc7b6754d64bc25748ccd553728051b31b8761bd0b74b122007d7c9039829b8"
      def install
        bin.install "bin/cert-ripper"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.7.0/cert-ripper-go-0.7.0-linux-armv6.tar.gz"
      sha256 "47831a1004d18a962151ae5af7e7b602049dedd84ba325385ca0189b04ec6174"
      def install
        bin.install "bin/cert-ripper"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.7.0/cert-ripper-go-0.7.0-linux-arm64.tar.gz"
      sha256 "3aab707ff73b1f4c0aa48e709ec4c43f9f4f76583ca43eb495ba2ec29164e78a"
      def install
        bin.install "bin/cert-ripper"
      end
    end
  end

  test do
    system "#{bin}/cert-ripper", "--help"
  end
end
