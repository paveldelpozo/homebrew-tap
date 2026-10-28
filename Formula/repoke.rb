# frozen_string_literal: true

# Finds the package managers on a system and keeps them up to date.
class Repoke < Formula
  desc "Finds the package managers on your system and keeps them up to date"
  homepage "https://github.com/paveldelpozo/repoke"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.0/repoke-aarch64-apple-darwin.tar.gz"
      sha256 "c24e71ef965a3992e31d076e0a16fece8ce90cc00b15d179da45e9b13bda32bc"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.0/repoke-x86_64-apple-darwin.tar.gz"
      sha256 "042b0e2b46ea7c3b54fb73071c0358a62194f58c461167ece9ac47a09829a512"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.0/repoke-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50a288629dfae4c0f8a486e9ab6429ee74d2a47d79ee33508b5ff06b9ad7c100"
    end
    on_intel do
      url "https://github.com/paveldelpozo/repoke/releases/download/v0.2.0/repoke-x86_64-unknown-linux-musl.tar.gz"
      sha256 "efcfc4e69507cfc4b88568d8652ac5c21d57f29d682efecde9836c3699317d82"
    end
  end

  def install
    bin.install "repoke"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repoke --version")
  end
end
