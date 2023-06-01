# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appclacks < Formula
  desc ""
  homepage "https://appclacks.com"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appclacks/cli/releases/download/v0.12.0/appclacks_0.12.0_darwin_arm64.tar.gz"
      sha256 "a2ec40fb8595947a9945951184ff9a6edeeb260866f09285314ea313c07ab48b"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/appclacks/cli/releases/download/v0.12.0/appclacks_0.12.0_darwin_amd64.tar.gz"
      sha256 "abaf7b932fe340c36fd150b37609dea9ee60478ff4bf212f2777977d9bb89c9b"

      def install
        bin.install "appclacks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/appclacks/cli/releases/download/v0.12.0/appclacks_0.12.0_linux_armv6.tar.gz"
      sha256 "5192f276e943db06ef8d92756ef9287e4ba3493e921d9bc01abec4c5469f1142"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/appclacks/cli/releases/download/v0.12.0/appclacks_0.12.0_linux_amd64.tar.gz"
      sha256 "899f87d63ad0e554c145f5840946bfc8d4d1d1dd7679e40c996cf72a0e079771"

      def install
        bin.install "appclacks"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/appclacks/cli/releases/download/v0.12.0/appclacks_0.12.0_linux_arm64.tar.gz"
      sha256 "a65ca06ec3ebc2b68a277c881d6c5659193404d5fef1aac322da9e743782f2d1"

      def install
        bin.install "appclacks"
      end
    end
  end

  test do
    system "#{bin}/appclacks --help"
  end
end
