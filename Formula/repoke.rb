# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.8.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "241b0b8e2614733b454b34c415bbebfa5ce6d20aa4f1e8569a93820a6ab65ef3"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.8.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "7d89a038703d27b6fd500b5816204b1201d30bb2e67b4710ab47f3961a8a3e78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.8.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86c3154d5f1cd95188511fd5e499051a6786283fd9a74f1fe7c7d23a17a2a5f2"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.8.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff3d0b65f8815c7b6a3870f6af536fbfe02ebbb3e3d192d54f7242293a3a1063"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
