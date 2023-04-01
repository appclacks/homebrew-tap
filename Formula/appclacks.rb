# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appclacks < Formula
  desc ""
  homepage "https://appclacks.com"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appclacks/cli/releases/download/v0.9.0/appclacks_0.9.0_darwin_arm64.tar.gz"
      sha256 "a37354eba323701fbdbbf73c21139eb42ba52b2ea5c49fc5bdef7ae4884a9c45"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/appclacks/cli/releases/download/v0.9.0/appclacks_0.9.0_darwin_amd64.tar.gz"
      sha256 "4c89f9e090478dcc390f64b6813b8b4e2f65fa5787897324fba8e6d9974305ea"

      def install
        bin.install "appclacks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/appclacks/cli/releases/download/v0.9.0/appclacks_0.9.0_linux_armv6.tar.gz"
      sha256 "403d0662665cdf72f317f078da39a386b18d9d5f51772250e287f382604b1134"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/appclacks/cli/releases/download/v0.9.0/appclacks_0.9.0_linux_amd64.tar.gz"
      sha256 "6af20239a56412e9f922a9634da6d54bc5ae10ad19233b870a54cd6afc979df3"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/appclacks/cli/releases/download/v0.9.0/appclacks_0.9.0_linux_arm64.tar.gz"
      sha256 "3a782a32fde6da66921abbfb02c1938d6a093aca4fa89d4099bde02f79a6914a"

      def install
        bin.install "appclacks"
      end
    end
  end

  test do
    system "#{bin}/appclacks --help"
  end
end
