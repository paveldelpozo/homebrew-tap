# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.1/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "6e6f5e4ecc8a4b0a91e3187b72fb33323392515dbdac3a64b18307c7d6c94726"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.1/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "ba33d42409468ce2303385ea6f75cb82e63c5e379a64c108a75822e654fb1fde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.1/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56131f81e454535060dd2a7365d77610c637615c4df49daea1dab71fd3b40c21"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.1/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ca5b9dec4c23491d726285f7aeee85c16e86960cf923109338bead6fdb6a382"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
