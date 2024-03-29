# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appclacks < Formula
  desc ""
  homepage "https://appclacks.com"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appclacks/cli/releases/download/v1.0.2/appclacks_1.0.2_darwin_arm64.tar.gz"
      sha256 "2930f22e2850dcec3e9132f9c63d769a7504ee1a1c4fbe91a25a9643fe858e63"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/appclacks/cli/releases/download/v1.0.2/appclacks_1.0.2_darwin_amd64.tar.gz"
      sha256 "3cd4a65bf1225e92ce8b32af728588b3c29f007eb941659e12fb35d14bd0acee"

      def install
        bin.install "appclacks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/appclacks/cli/releases/download/v1.0.2/appclacks_1.0.2_linux_armv6.tar.gz"
      sha256 "77c3c3519dbc73964b5c3d648ad5c0d5def8c562219fe953343551c06ac08732"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/appclacks/cli/releases/download/v1.0.2/appclacks_1.0.2_linux_arm64.tar.gz"
      sha256 "0ac355ec1c4f64e7557b26339a4b1aba40b2b63b450916a046bb0777d268d1b0"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/appclacks/cli/releases/download/v1.0.2/appclacks_1.0.2_linux_amd64.tar.gz"
      sha256 "13dca62f0017cb0441baee5fe1774fa4ac6cec76bc2c995a8c2ee4876f7b8dd3"

      def install
        bin.install "appclacks"
      end
    end
  end

  test do
    system "#{bin}/appclacks --help"
  end
end
