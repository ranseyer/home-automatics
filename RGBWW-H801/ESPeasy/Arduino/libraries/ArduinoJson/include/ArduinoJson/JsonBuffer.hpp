// Copyright Benoit Blanchon 2014-2016
// MIT License
//
// Arduino JSON library
// https://github.com/bblanchon/ArduinoJson
// If you like this project, please add a star!

#pragma once

#include <stddef.h>  // for size_t
#include <stdint.h>  // for uint8_t
#include <string.h>

#include "JsonVariant.hpp"

#if defined(__clang__)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnon-virtual-dtor"
#elif defined(__GNUC__)
#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
#pragma GCC diagnostic push
#endif
#pragma GCC diagnostic ignored "-Wnon-virtual-dtor"
#endif

namespace ArduinoJson {
class JsonArray;
class JsonObject;

// Entry point for using the library.
//
// Handle the memory management (done in derived classes) and calls the parser.
// This abstract class is implemented by StaticJsonBuffer which implements a
// fixed memory allocation.
class JsonBuffer {
 public:
  // CAUTION: NO VIRTUAL DESTRUCTOR!
  // If we add a virtual constructor the Arduino compiler will add malloc() and
  // free() to the binary, adding 706 useless bytes.
  // virtual ~JsonBuffer() {}

  // Allocates an empty JsonArray.
  //
  // Returns a reference to the new JsonArray or JsonArray::invalid() if the
  // allocation fails.
  JsonArray &createArray();

  // Allocates an empty JsonObject.
  //
  // Returns a reference to the new JsonObject or JsonObject::invalid() if the
  // allocation fails.
  JsonObject &createObject();

  // Duplicate a string
  template <typename TString>
  char *strdup(const TString &src) {
    return Internals::StringFuncs<TString>::duplicate(src, this);
  }

  // Allocates n bytes in the JsonBuffer.
  // Return a pointer to the allocated memory or NULL if allocation fails.
  virtual void *alloc(size_t size) = 0;

 protected:
  // Preserve aligment if necessary
  static FORCE_INLINE size_t round_size_up(size_t bytes) {
#if ARDUINOJSON_ENABLE_ALIGNMENT
    const size_t x = sizeof(void *) - 1;
    return (bytes + x) & ~x;
#else
    return bytes;
#endif
  }
};
}

#if defined(__clang__)
#pragma clang diagnostic pop
#elif defined(__GNUC__)
#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
#pragma GCC diagnostic pop
#endif
#endif
