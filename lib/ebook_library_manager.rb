# frozen_string_literal: true

#--
# SPDX-FileCopyrightText: 2026 Kerrick Long <me@kerricklong.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later
#++

require_relative "ebook_library_manager/version"

# Top-level namespace for the ebook library manager.
#
# This gem consolidates several procedural ebook scripts (deduplication,
# renaming, organizing) and adds a new capability: generating printable
# wraparound covers for Standard DVD cases that act as physical proxies
# for digital ebooks on the shelf.
module EbookLibraryManager
  # Raised when a domain invariant is violated.
  class Error < StandardError; end
end
