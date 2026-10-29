# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.7.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "f52f799b97195c72bf8b2b84602dee2fe3b93a3884ea3a908e76eef95adf320b"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.7.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "a1192b5579b0d3dfd31875f69aaa6c89402b05d3a45e4b4da58593a18840f8ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.7.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb02844d6895bf3e429b26249bdb650d0080323eecf93aa57044466a811f483b"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.7.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7abb35c92a46a8445eff2120248e989869bcfb54d8fbf1201b281b284ec566e4"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
