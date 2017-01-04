// Copyright Benoit Blanchon 2014-2016
// MIT License
//
// Arduino JSON library
// https://github.com/bblanchon/ArduinoJson
// If you like this project, please add a star!

#pragma once

#if ARDUINOJSON_ENABLE_ARDUINO_STRING
#include <WString.h>
#endif

#if ARDUINOJSON_ENABLE_STD_STRING
#include <string>
#endif

namespace ArduinoJson {
namespace Internals {

template <typename TString>
struct StdStringFuncs {
  template <typename Buffer>
  static char* duplicate(const TString& str, Buffer* buffer) {
    if (!str.c_str()) return NULL;  // <- Arduino string can return NULL
    size_t size = str.length() + 1;
    void* dup = buffer->alloc(size);
    if (dup != NULL) memcpy(dup, str.c_str(), size);
    return static_cast<char*>(dup);
  }

  struct Iterator : CharPtrFuncs::Iterator {
    Iterator(const TString& str) : CharPtrFuncs::Iterator(str.c_str()) {}
  };

  static bool equals(const TString& str, const char* expected) {
    return str == expected;
  }

  static void append(TString& str, char c) {
    str += c;
  }

  static const bool has_append = true;
  static const bool has_equals = true;
  static const bool should_duplicate = true;
};

#if ARDUINOJSON_ENABLE_ARDUINO_STRING
template <>
struct StringFuncs<String, void> : StdStringFuncs<String> {};
template <>
struct StringFuncs<StringSumHelper, void> : StdStringFuncs<StringSumHelper> {};
#endif

#if ARDUINOJSON_ENABLE_STD_STRING
template <>
struct StringFuncs<std::string, void> : StdStringFuncs<std::string> {};
#endif
}
}
