cask "geol" do
  name "geol"
  desc "geol, the cli to efficiently display product end-of-life dates in your terminal using the endoflife.date API."
  homepage "https://github.com/opt-nc/geol"
  version "2.21.5"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "geol"
  manpage "manpages/geol.1.gz"
  bash_completion "completions/geol.bash"
  zsh_completion "completions/geol.zsh"
  fish_completion "completions/geol.fish"

  on_macos do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "0e87495d9dacb48bc55bab993d5fea93a2d5246b7eeed4758ab48f8a31b2daf3"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "49b640e7031a05816aef8273cec5a96184094947779f68481ad08bd748cdd5b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "dace21d8893e39efa63d6a24bb6f59c85aa3861e1832ad6b2f9bef8b1f5dd673"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "42b727cf4898a5a9ba983f0ea274ddb43da0c32f503dbac7412cdcc0cc4f0ef5"
    end
  end

  # No zap stanza required
end
