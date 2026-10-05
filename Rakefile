# frozen_string_literal: true

#--
# SPDX-FileCopyrightText: 2025 Kerrick Long <me@kerricklong.com>
# SPDX-License-Identifier: AGPL-3.0-or-later
#++

require "bundler/gem_tasks"

require "rdoc/task"
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = ENV["RDOC_OUTPUT"] || "tmp/rdoc"
  rdoc.rdoc_files.include("lib/**/*.rb", "ext/**/*.rb", "examples/**/*.rb", "README.rdoc")
  rdoc.rdoc_files.exclude("**/*.rbs")
end

# Pure-Ruby CLI: no Rust extension. See ruby_quality templates for the
# default Rakefile with RbSys::ExtensionTask if a native extension is
# added later.

# Import shared quality tasks (owned by ruby_quality) plus per-repo tasks.
Dir.glob("tasks/**/*.rake").each { |r| import r }

# Default runs gates only, never fixers.
# NOTE: Ruby-only repo (no Cargo.toml / ext/): run the Rust-free subset
# explicitly instead of `lint` / `lint:all`, which includes `lint:rust`.
task default: %w[test:ruby rubocop rubycritic steep reuse:lint]
