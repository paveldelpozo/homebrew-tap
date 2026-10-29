# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.1/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "08864be08294306080e794b6a6de22d5be2d4a1259cf46a5adc1f6d3e60a15de"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.1/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "b16afc81d3283f46b7809a844cfe0e3666b24cad144d2f9349666eee5bb67c1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.1/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8b3b3be3d8f64072896bd9355189ec1d9ae94f921b01cd86d79e6e63b7663845"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.1/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55f9bafb758d948f05a78bbfc499e04aed8d67b8c57f756fe31d047b11d24c18"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
