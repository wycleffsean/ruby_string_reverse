#include "ruby.h"

VALUE mod = Qnil;

VALUE method_my_reverse_xor(VALUE self);
VALUE method_my_reverse_xchg(VALUE self);

void Init_reverse() 
{
  mod = rb_const_get(rb_cObject, rb_intern("String"));
  rb_define_method(mod,"my_reverse_xor", method_my_reverse_xor, 0);
}

VALUE method_my_reverse_xor(VALUE self)
{
  VALUE dup = rb_str_dup(self);
  char* start = RSTRING_PTR(dup);
  char* end = start + RSTRING_LEN(dup) - 1;

#define XOR_SWAP(a,b) do\
  {\
    a ^= b;\
    b ^= a;\
    a ^= b;\
  } while (0)

  while(start < end)
  {
    XOR_SWAP(*start,*end);
    start++;
    end--;
  }
#undef XOR_SWAP

  return dup;
}
