# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "3070d1d6603673f63b3b5ff4ad4b0352f85b3f28418db95e2d0d9b8f8a3f5202"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "03baab7b10e12854ac22d8dd28fabe0773305d0df85516324a139fef404d7806"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c936f1c9837b8283f881f343e92216a6446ed747c75f4db593caf35c15d7eee"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.6.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f2cd2e45563c64f3f735aab3a325dccff63a9fa9804cd90a7fa3d49b6b53e14"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
