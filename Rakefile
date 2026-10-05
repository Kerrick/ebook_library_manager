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

# Pure-Ruby project: no Rust extension. To add one later, re-scaffold with
# `bin/scaffold --rust` (see ruby_quality) or vendor the RbSys block back
# from the ruby_quality Rakefile template.

# Import shared quality tasks (owned by ruby_quality) plus per-repo tasks.
Dir.glob("tasks/**/*.rake").each { |r| import r }

# Default runs gates only, never fixers.
# NOTE: Ruby-only default. The shared `lint`/`test` tasks include Rust gates
# (`lint:rust`, `test:rust`), which no-op without a Cargo.toml; the default
# below runs the Rust-free subset explicitly instead.
task default: %w[test:ruby rubocop rubycritic steep reuse:lint]
