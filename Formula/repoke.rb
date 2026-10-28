# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.3.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "dfd0c81f2c4cc93b0de13ce1950b63ed8efc15cc91e66bc34389e74eb0b1ee7d"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.3.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "49f946d661f6132cf5769bcd07d3ed783436013c77491911f994d3a657521ff4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.3.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bdc2d83c92cdcb4860b05f5e3858b2206034cc675e44b34612670384bc22995d"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.3.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccc93ae76072b190112a81af56f817c766bd44b1d7a1d432406c76f801a3673e"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
