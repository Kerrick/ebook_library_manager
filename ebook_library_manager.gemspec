# frozen_string_literal: true

#--
# SPDX-FileCopyrightText: 2026 Kerrick Long <me@kerricklong.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later
#++

require_relative "lib/ebook_library_manager/version"

Gem::Specification.new do |spec|
  spec.name = "ebook_library_manager"
  spec.version = EbookLibraryManager::VERSION
  spec.authors = ["Kerrick Long"]
  spec.email = ["me@kerricklong.com"]

  spec.summary = "Physical-to-digital ebook library bridge plus digital ebook file management"
  spec.description = "Manages a physical-to-digital ebook library bridge: " \
    "deduplication, renaming, organizing, and printable DVD-case proxy spines."
  spec.homepage = "https://github.com/Kerrick/ebook_library_manager"
  spec.license = "AGPL-3.0-or-later"

  spec.required_ruby_version = ">= 3.2"

  spec.files = Dir["lib/**/*.rb", "sig/**/*.rbs", "exe/*", "README.md", "CHANGELOG.md", "AGENTS.md"]
  spec.bindir = "exe"
  spec.executables = ["elm"]
  spec.require_paths = ["lib"]
end
