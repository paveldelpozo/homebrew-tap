# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.4.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "35de730ff1ff294c10a9c7343d83fe8203b96f02c37d7a323703f5553893378c"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.4.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "89851d1019fec7869c8179233b601d54e2f6a8f3bc22e9ca3377afd4791c9afa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.4.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "49b4a289f922110e180573dbe802410082f6475c4c99632339e568e17fd46bed"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.4.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ea1d34d3f12b744065c25e301266c35a9eb8bfe46e45950df99cdc4a6eb3531"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
