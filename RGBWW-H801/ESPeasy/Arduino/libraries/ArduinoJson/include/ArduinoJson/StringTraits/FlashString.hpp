// Copyright Benoit Blanchon 2014-2016
// MIT License
//
// Arduino JSON library
// https://github.com/bblanchon/ArduinoJson
// If you like this project, please add a star!

#pragma once

namespace ArduinoJson {
namespace Internals {
template <>
struct StringFuncs<const __FlashStringHelper*, void> {
  class Iterator {
    const char* _ptr;

   public:
    Iterator(const __FlashStringHelper* ptr)
        : _ptr(reinterpret_cast<const char*>(ptr)) {}

    char next() {
      return pgm_read_byte_near(_ptr++);
    }
  };

  static bool equals(const __FlashStringHelper* str, const char* expected) {
    return strcmp_P(expected, (PGM_P)str) == 0;
  }

  template <typename Buffer>
  static char* duplicate(const __FlashStringHelper* str, Buffer* buffer) {
    if (!str) return NULL;
    size_t size = strlen_P((PGM_P)str) + 1;
    void* dup = buffer->alloc(size);
    if (dup != NULL) memcpy_P(dup, (PGM_P)str, size);
    return static_cast<char*>(dup);
  }

  static const bool has_append = false;
  static const bool has_equals = true;
  static const bool should_duplicate = true;
};
}
}
