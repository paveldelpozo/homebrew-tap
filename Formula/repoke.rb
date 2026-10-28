# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.1.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "19e8e5c9d753f0a26669b0cd59b11301c83d26004eaf28b9b5f0ddc373ab2383"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.1.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "42624178e4f7bd985c12e827c57f89b9fd620e82429b5959f43d4bc2e0a630db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.1.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f343950ef9f8fb7f86c258f08740b6dc92ac95feeebcc25417fdae6037ed4382"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.1.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8caf801ead675d618a1885b797e3475538ae5247b84f54ae6498ba741e641f48"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
