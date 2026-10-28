# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.5.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "66d90c1227083a3edc8d3e746dcbe334b79db43a45c6c361617a6db9850ebc31"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.5.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "ed2a9efe78d624dbe0f6caa762fab29714e027027644e997a4bfa3c723d05bc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.5.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c900c9b1190d2e8c07fc54597611dbe89e5d23ba542f0931580748a0bb8f71e"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.5.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "660a08c34c092845edcaa71547d8b81d774b5b17bec286c3ed7ce264c6ddde65"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
