#pragma line 1 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.cpp"
#pragma line 67 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.cpp"
#pragma line 1 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.h" 1
#pragma line 69 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.h"
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 1 3
#pragma line 39 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
#pragma empty_line
#pragma line 40 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
#pragma empty_line
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 1 3
#pragma line 196 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
#pragma empty_line
#pragma line 196 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  typedef long long unsigned int size_t;
  typedef long long int ptrdiff_t;
#pragma empty_line
#pragma empty_line
  typedef decltype(nullptr) nullptr_t;
#pragma empty_line
}
#pragma line 218 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
#pragma line 495 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/os_defines.h" 1 3
#pragma line 496 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/cpu_defines.h" 1 3
#pragma line 499 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3
#pragma line 42 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 2 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/bits/cpp_type_traits.h" 1 3
#pragma line 35 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/bits/cpp_type_traits.h" 3
#pragma empty_line
#pragma line 36 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/bits/cpp_type_traits.h" 3
#pragma line 67 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/bits/cpp_type_traits.h" 3
extern "C++" {
#pragma empty_line
namespace std
{
#pragma empty_line
#pragma empty_line
  struct __true_type { };
  struct __false_type { };
#pragma empty_line
  template<bool>
    struct __truth_type
    { typedef __false_type __type; };
#pragma empty_line
  template<>
    struct __truth_type<true>
    { typedef __true_type __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<class _Sp, class _Tp>
    struct __traitor
    {
      enum { __value = bool(_Sp::__value) || bool(_Tp::__value) };
      typedef typename __truth_type<__value>::__type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename, typename>
    struct __are_same
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __are_same<_Tp, _Tp>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_void
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_void<void>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_integer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<bool>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<char16_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<char32_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma line 261 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/bits/cpp_type_traits.h" 3
template<> struct __is_integer<__int128> { enum { __value = 1 }; typedef __true_type __type; }; template<> struct __is_integer<unsigned __int128> { enum { __value = 1 }; typedef __true_type __type; };
#pragma line 278 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/bits/cpp_type_traits.h" 3
  template<typename _Tp>
    struct __is_floating
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_floating<float>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<long double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_pointer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __is_pointer<_Tp*>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_arithmetic
    : public __traitor<__is_integer<_Tp>, __is_floating<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_scalar
    : public __traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >
    { };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_char
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_char<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_char<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_byte
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_move_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Iterator>
    inline _Iterator
    __miter_base(_Iterator __it)
    { return __it; }
#pragma empty_line
#pragma empty_line
}
}
#pragma line 43 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 2 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/ext/type_traits.h" 1 3
#pragma line 32 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/ext/type_traits.h" 3
#pragma empty_line
#pragma line 33 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/ext/type_traits.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" {
#pragma empty_line
namespace __gnu_cxx
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool, typename>
    struct __enable_if
    { };
#pragma empty_line
  template<typename _Tp>
    struct __enable_if<true, _Tp>
    { typedef _Tp __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    struct __conditional_type
    { typedef _Iftrue __type; };
#pragma empty_line
  template<typename _Iftrue, typename _Iffalse>
    struct __conditional_type<false, _Iftrue, _Iffalse>
    { typedef _Iffalse __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __add_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __add_unsigned<char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<signed char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<short>
    { typedef unsigned short __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<int>
    { typedef unsigned int __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long>
    { typedef unsigned long __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long long>
    { typedef unsigned long long __type; };
#pragma empty_line
#pragma empty_line
  template<>
    struct __add_unsigned<bool>;
#pragma empty_line
  template<>
    struct __add_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __remove_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __remove_unsigned<char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned short>
    { typedef short __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned int>
    { typedef int __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long>
    { typedef long __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long long>
    { typedef long long __type; };
#pragma empty_line
#pragma empty_line
  template<>
    struct __remove_unsigned<bool>;
#pragma empty_line
  template<>
    struct __remove_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    { return __ptr == 0; }
#pragma empty_line
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type)
    { return false; }
#pragma empty_line
#pragma empty_line
  inline bool
  __is_null_pointer(std::nullptr_t)
  { return true; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp, bool = std::__is_integer<_Tp>::__value>
    struct __promote
    { typedef double __type; };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __promote<_Tp, false>
    { };
#pragma empty_line
  template<>
    struct __promote<long double>
    { typedef long double __type; };
#pragma empty_line
  template<>
    struct __promote<double>
    { typedef double __type; };
#pragma empty_line
  template<>
    struct __promote<float>
    { typedef float __type; };
#pragma empty_line
  template<typename _Tp, typename _Up,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type>
    struct __promote_2
    {
      typedef __typeof__(_Tp2() + _Up2()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type>
    struct __promote_3
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp, typename _Wp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type,
           typename _Wp2 = typename __promote<_Wp>::__type>
    struct __promote_4
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2() + _Wp2()) __type;
    };
#pragma empty_line
#pragma empty_line
}
}
#pragma line 44 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 2 3
#pragma empty_line
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 1 3
#pragma line 10 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
#pragma empty_line
#pragma line 11 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 1 3
#pragma line 10 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3
#pragma line 12 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
#pragma line 88 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3
#pragma empty_line
#pragma line 97 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3
#pragma empty_line
#pragma line 13 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 1 3
#pragma line 44 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
#pragma line 14 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
#pragma line 275 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 1 3
#pragma line 9 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3
#pragma line 565 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3
#pragma line 566 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
#pragma line 1 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
#pragma line 567 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
#pragma line 10 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma pack(push,_CRT_PACKING)
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef __builtin_va_list __gnuc_va_list;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef __gnuc_va_list va_list;
#pragma line 99 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma pack(pop)
#pragma line 276 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3
#pragma line 534 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
const char *__mingw_get_crt_info (void);
#pragma empty_line
#pragma empty_line
}
#pragma line 11 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma pack(push,_CRT_PACKING)
#pragma line 35 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef unsigned long long size_t;
#pragma line 45 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long ssize_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef size_t rsize_t;
#pragma line 62 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long intptr_t;
#pragma line 75 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef unsigned long long uintptr_t;
#pragma line 88 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
__extension__ typedef long long ptrdiff_t;
#pragma line 106 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int errno_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long __time32_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
__extension__ typedef long long __time64_t;
#pragma line 138 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
typedef __time64_t time_t;
#pragma line 422 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;
#pragma empty_line
typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma pack(pop)
#pragma line 14 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 2 3
#pragma empty_line
struct _exception;
#pragma empty_line
#pragma pack(push,_CRT_PACKING)
#pragma line 77 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
extern "C++" {
template <typename type1, typename type2> struct __mingw_types_compatible_p {
  static const bool result = false;
};
#pragma empty_line
template <typename type1> struct __mingw_types_compatible_p<type1, type1> {
 static const bool result = true;
};
#pragma empty_line
template <typename type1> struct __mingw_types_compatible_p<const type1, type1> {
  static const bool result = true;
};
#pragma empty_line
template <typename type1> struct __mingw_types_compatible_p<type1, const type1> {
  static const bool result = true;
};
}
#pragma line 111 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef union __mingw_dbl_type_t {
    double x;
    unsigned long long val;
    __extension__ struct {
      unsigned int low, high;
    } lh;
  } __mingw_dbl_type_t;
#pragma empty_line
  typedef union __mingw_flt_type_t {
    float x;
    unsigned int val;
  } __mingw_flt_type_t;
#pragma empty_line
  typedef union __mingw_ldbl_type_t
  {
    long double x;
    __extension__ struct {
      unsigned int low, high;
      int sign_exponent : 16;
      int res1 : 16;
      int res0 : 32;
    } lh;
  } __mingw_ldbl_type_t;
#pragma empty_line
  typedef union __mingw_fp_types_t
  {
    long double *ld;
    double *d;
    float *f;
    __mingw_ldbl_type_t *ldt;
    __mingw_dbl_type_t *dt;
    __mingw_flt_type_t *ft;
  } __mingw_fp_types_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double * __imp__HUGE;
#pragma line 168 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  struct _exception {
    int type;
    const char *name;
    double arg1;
    double arg2;
    double retval;
  };
#pragma empty_line
  void __mingw_raise_matherr (int typ, const char *name, double a1, double a2,
         double rslt);
  void __mingw_setusermatherr (int (__attribute__((__cdecl__)) *)(struct _exception *));
  __attribute__ ((__dllimport__)) void __setusermatherr(int (__attribute__((__cdecl__)) *)(struct _exception *));
#pragma empty_line
#pragma empty_line
#pragma empty_line
  double __attribute__((__cdecl__)) sin(double _X);
  double __attribute__((__cdecl__)) cos(double _X);
  double __attribute__((__cdecl__)) tan(double _X);
  double __attribute__((__cdecl__)) sinh(double _X);
  double __attribute__((__cdecl__)) cosh(double _X);
  double __attribute__((__cdecl__)) tanh(double _X);
  double __attribute__((__cdecl__)) asin(double _X);
  double __attribute__((__cdecl__)) acos(double _X);
  double __attribute__((__cdecl__)) atan(double _X);
  double __attribute__((__cdecl__)) atan2(double _Y,double _X);
  double __attribute__((__cdecl__)) exp(double _X);
  double __attribute__((__cdecl__)) log(double _X);
  double __attribute__((__cdecl__)) log10(double _X);
  double __attribute__((__cdecl__)) pow(double _X,double _Y);
  double __attribute__((__cdecl__)) sqrt(double _X);
  double __attribute__((__cdecl__)) ceil(double _X);
  double __attribute__((__cdecl__)) floor(double _X);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) fabsf (float x);
  extern long double __attribute__((__cdecl__)) fabsl (long double);
  extern double __attribute__((__cdecl__)) fabs (double _X);
#pragma line 243 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  double __attribute__((__cdecl__)) ldexp(double _X,int _Y);
  double __attribute__((__cdecl__)) frexp(double _X,int *_Y);
  double __attribute__((__cdecl__)) modf(double _X,double *_Y);
  double __attribute__((__cdecl__)) fmod(double _X,double _Y);
#pragma empty_line
  void __attribute__((__cdecl__)) sincos (double __x, double *p_sin, double *p_cos);
  void __attribute__((__cdecl__)) sincosl (long double __x, long double *p_sin, long double *p_cos);
  void __attribute__((__cdecl__)) sincosf (float __x, float *p_sin, float *p_cos);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  int __attribute__((__cdecl__)) abs(int _X);
  long __attribute__((__cdecl__)) labs(long _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  double __attribute__((__cdecl__)) atof(const char *_String);
  double __attribute__((__cdecl__)) _atof_l(const char *_String,_locale_t _Locale);
#pragma line 270 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  struct _complex {
    double x;
    double y;
  };
#pragma empty_line
#pragma empty_line
  double __attribute__((__cdecl__)) _cabs(struct _complex _ComplexA);
  double __attribute__((__cdecl__)) _hypot(double _X,double _Y);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _j0(double _X);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _j1(double _X);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _jn(int _X,double _Y);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _y0(double _X);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _y1(double _X);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _yn(int _X,double _Y);
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _matherr (struct _exception *);
#pragma line 297 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _chgsign (double _X);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _copysign (double _Number,double _Sign);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _logb (double);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _nextafter (double, double);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _scalb (double, long);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _finite (double);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fpclass (double);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isnan (double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
__attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) j0 (double) ;
__attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) j1 (double) ;
__attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) jn (int, double) ;
__attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) y0 (double) ;
__attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) y1 (double) ;
__attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) yn (int, double) ;
#pragma empty_line
__attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) chgsign (double);
#pragma line 327 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) finite (double);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) fpclass (double);
#pragma line 372 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
typedef float float_t;
typedef double double_t;
#pragma line 407 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern int __attribute__((__cdecl__)) __fpclassifyl (long double);
  extern int __attribute__((__cdecl__)) __fpclassifyf (float);
  extern int __attribute__((__cdecl__)) __fpclassify (double);
#pragma line 520 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern int __attribute__((__cdecl__)) __isnan (double);
  extern int __attribute__((__cdecl__)) __isnanf (float);
  extern int __attribute__((__cdecl__)) __isnanl (long double);
#pragma line 607 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern int __attribute__((__cdecl__)) __signbit (double);
  extern int __attribute__((__cdecl__)) __signbitf (float);
  extern int __attribute__((__cdecl__)) __signbitl (long double);
#pragma line 664 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern float __attribute__((__cdecl__)) sinf(float _X);
  extern long double __attribute__((__cdecl__)) sinl(long double);
#pragma empty_line
  extern float __attribute__((__cdecl__)) cosf(float _X);
  extern long double __attribute__((__cdecl__)) cosl(long double);
#pragma empty_line
  extern float __attribute__((__cdecl__)) tanf(float _X);
  extern long double __attribute__((__cdecl__)) tanl(long double);
  extern float __attribute__((__cdecl__)) asinf(float _X);
  extern long double __attribute__((__cdecl__)) asinl(long double);
#pragma empty_line
  extern float __attribute__((__cdecl__)) acosf (float);
  extern long double __attribute__((__cdecl__)) acosl (long double);
#pragma empty_line
  extern float __attribute__((__cdecl__)) atanf (float);
  extern long double __attribute__((__cdecl__)) atanl (long double);
#pragma empty_line
  extern float __attribute__((__cdecl__)) atan2f (float, float);
  extern long double __attribute__((__cdecl__)) atan2l (long double, long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) sinhf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) sinhl(long double);
#pragma empty_line
  extern float __attribute__((__cdecl__)) coshf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) coshl(long double);
#pragma empty_line
  extern float __attribute__((__cdecl__)) tanhf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) tanhl(long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) acosh (double);
  extern float __attribute__((__cdecl__)) acoshf (float);
  extern long double __attribute__((__cdecl__)) acoshl (long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) asinh (double);
  extern float __attribute__((__cdecl__)) asinhf (float);
  extern long double __attribute__((__cdecl__)) asinhl (long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) atanh (double);
  extern float __attribute__((__cdecl__)) atanhf (float);
  extern long double __attribute__((__cdecl__)) atanhl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) expf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) expl(long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) exp2(double);
  extern float __attribute__((__cdecl__)) exp2f(float);
  extern long double __attribute__((__cdecl__)) exp2l(long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) expm1(double);
  extern float __attribute__((__cdecl__)) expm1f(float);
  extern long double __attribute__((__cdecl__)) expm1l(long double);
#pragma empty_line
#pragma empty_line
  extern float frexpf(float _X,int *_Y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) frexpl(long double,int *);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern int __attribute__((__cdecl__)) ilogb (double);
  extern int __attribute__((__cdecl__)) ilogbf (float);
  extern int __attribute__((__cdecl__)) ilogbl (long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) ldexpf(float _X,int _Y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) ldexpl (long double, int);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) logf (float);
  extern long double __attribute__((__cdecl__)) logl(long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) log10f (float);
  extern long double __attribute__((__cdecl__)) log10l(long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) log1p(double);
  extern float __attribute__((__cdecl__)) log1pf(float);
  extern long double __attribute__((__cdecl__)) log1pl(long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) log2 (double);
  extern float __attribute__((__cdecl__)) log2f (float);
  extern long double __attribute__((__cdecl__)) log2l (long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) logb (double);
  extern float __attribute__((__cdecl__)) logbf (float);
  extern long double __attribute__((__cdecl__)) logbl (long double);
#pragma line 863 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern float __attribute__((__cdecl__)) modff (float, float*);
  extern long double __attribute__((__cdecl__)) modfl (long double, long double*);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) scalbn (double, int);
  extern float __attribute__((__cdecl__)) scalbnf (float, int);
  extern long double __attribute__((__cdecl__)) scalbnl (long double, int);
#pragma empty_line
  extern double __attribute__((__cdecl__)) scalbln (double, long);
  extern float __attribute__((__cdecl__)) scalblnf (float, long);
  extern long double __attribute__((__cdecl__)) scalblnl (long double, long);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) cbrt (double);
  extern float __attribute__((__cdecl__)) cbrtf (float);
  extern long double __attribute__((__cdecl__)) cbrtl (long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) hypot (double, double) ;
  extern float __attribute__((__cdecl__)) hypotf (float x, float y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) hypotl (long double, long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) powf(float _X,float _Y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double __attribute__((__cdecl__)) powl (long double, long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) sqrtf (float);
  extern long double sqrtl(long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) erf (double);
  extern float __attribute__((__cdecl__)) erff (float);
  extern long double __attribute__((__cdecl__)) erfl (long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) erfc (double);
  extern float __attribute__((__cdecl__)) erfcf (float);
  extern long double __attribute__((__cdecl__)) erfcl (long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) lgamma (double);
  extern float __attribute__((__cdecl__)) lgammaf (float);
  extern long double __attribute__((__cdecl__)) lgammal (long double);
#pragma empty_line
  extern int signgam;
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) tgamma (double);
  extern float __attribute__((__cdecl__)) tgammaf (float);
  extern long double __attribute__((__cdecl__)) tgammal (long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) ceilf (float);
  extern long double __attribute__((__cdecl__)) ceill (long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) floorf (float);
  extern long double __attribute__((__cdecl__)) floorl (long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) nearbyint ( double);
  extern float __attribute__((__cdecl__)) nearbyintf (float);
  extern long double __attribute__((__cdecl__)) nearbyintl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern double __attribute__((__cdecl__)) rint (double);
extern float __attribute__((__cdecl__)) rintf (float);
extern long double __attribute__((__cdecl__)) rintl (long double);
#pragma empty_line
#pragma empty_line
extern long __attribute__((__cdecl__)) lrint (double);
extern long __attribute__((__cdecl__)) lrintf (float);
extern long __attribute__((__cdecl__)) lrintl (long double);
#pragma empty_line
__extension__ long long __attribute__((__cdecl__)) llrint (double);
__extension__ long long __attribute__((__cdecl__)) llrintf (float);
__extension__ long long __attribute__((__cdecl__)) llrintl (long double);
#pragma line 1030 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern double __attribute__((__cdecl__)) round (double);
  extern float __attribute__((__cdecl__)) roundf (float);
  extern long double __attribute__((__cdecl__)) roundl (long double);
#pragma empty_line
#pragma empty_line
  extern long __attribute__((__cdecl__)) lround (double);
  extern long __attribute__((__cdecl__)) lroundf (float);
  extern long __attribute__((__cdecl__)) lroundl (long double);
  __extension__ long long __attribute__((__cdecl__)) llround (double);
  __extension__ long long __attribute__((__cdecl__)) llroundf (float);
  __extension__ long long __attribute__((__cdecl__)) llroundl (long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) trunc (double);
  extern float __attribute__((__cdecl__)) truncf (float);
  extern long double __attribute__((__cdecl__)) truncl (long double);
#pragma empty_line
#pragma empty_line
  extern float __attribute__((__cdecl__)) fmodf (float, float);
  extern long double __attribute__((__cdecl__)) fmodl (long double, long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) remainder (double, double);
  extern float __attribute__((__cdecl__)) remainderf (float, float);
  extern long double __attribute__((__cdecl__)) remainderl (long double, long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) remquo(double, double, int *);
  extern float __attribute__((__cdecl__)) remquof(float, float, int *);
  extern long double __attribute__((__cdecl__)) remquol(long double, long double, int *);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) copysign (double, double);
  extern float __attribute__((__cdecl__)) copysignf (float, float);
  extern long double __attribute__((__cdecl__)) copysignl (long double, long double);
#pragma line 1087 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern double __attribute__((__cdecl__)) nan(const char *tagp);
  extern float __attribute__((__cdecl__)) nanf(const char *tagp);
  extern long double __attribute__((__cdecl__)) nanl(const char *tagp);
#pragma line 1098 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
  extern double __attribute__((__cdecl__)) nextafter (double, double);
  extern float __attribute__((__cdecl__)) nextafterf (float, float);
  extern long double __attribute__((__cdecl__)) nextafterl (long double, long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) nexttoward (double, long double);
  extern float __attribute__((__cdecl__)) nexttowardf (float, long double);
  extern long double __attribute__((__cdecl__)) nexttowardl (long double, long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) fdim (double x, double y);
  extern float __attribute__((__cdecl__)) fdimf (float x, float y);
  extern long double __attribute__((__cdecl__)) fdiml (long double x, long double y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) fmax (double, double);
  extern float __attribute__((__cdecl__)) fmaxf (float, float);
  extern long double __attribute__((__cdecl__)) fmaxl (long double, long double);
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) fmin (double, double);
  extern float __attribute__((__cdecl__)) fminf (float, float);
  extern long double __attribute__((__cdecl__)) fminl (long double, long double);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern double __attribute__((__cdecl__)) fma (double, double, double);
  extern float __attribute__((__cdecl__)) fmaf (float, float, float);
  extern long double __attribute__((__cdecl__)) fmal (long double, long double, long double);
#pragma line 1181 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
   __attribute__ ((__dllimport__)) float __attribute__((__cdecl__)) _copysignf (float _Number,float _Sign);
   __attribute__ ((__dllimport__)) float __attribute__((__cdecl__)) _chgsignf (float _X);
   __attribute__ ((__dllimport__)) float __attribute__((__cdecl__)) _logbf(float _X);
   __attribute__ ((__dllimport__)) float __attribute__((__cdecl__)) _nextafterf(float _X,float _Y);
   __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _finitef(float _X);
   __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isnanf(float _X);
   __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fpclassf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
   extern long double __attribute__((__cdecl__)) _chgsignl (long double);
#pragma line 1576 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/x86_64-w64-mingw32/include/math.h" 3
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma pack(pop)
#pragma line 46 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 2 3
#pragma line 77 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
extern "C++"
{
namespace std
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline constexpr double
  abs(double __x)
  { return __builtin_fabs(__x); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  inline constexpr float
  abs(float __x)
  { return __builtin_fabsf(__x); }
#pragma empty_line
  inline constexpr long double
  abs(long double __x)
  { return __builtin_fabsl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    abs(_Tp __x)
    { return __builtin_fabs(__x); }
#pragma empty_line
  using ::acos;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  acos(float __x)
  { return __builtin_acosf(__x); }
#pragma empty_line
  inline constexpr long double
  acos(long double __x)
  { return __builtin_acosl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    acos(_Tp __x)
    { return __builtin_acos(__x); }
#pragma empty_line
  using ::asin;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  asin(float __x)
  { return __builtin_asinf(__x); }
#pragma empty_line
  inline constexpr long double
  asin(long double __x)
  { return __builtin_asinl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    asin(_Tp __x)
    { return __builtin_asin(__x); }
#pragma empty_line
  using ::atan;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  atan(float __x)
  { return __builtin_atanf(__x); }
#pragma empty_line
  inline constexpr long double
  atan(long double __x)
  { return __builtin_atanl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    atan(_Tp __x)
    { return __builtin_atan(__x); }
#pragma empty_line
  using ::atan2;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  atan2(float __y, float __x)
  { return __builtin_atan2f(__y, __x); }
#pragma empty_line
  inline constexpr long double
  atan2(long double __y, long double __x)
  { return __builtin_atan2l(__y, __x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    atan2(_Tp __y, _Up __x)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return atan2(__type(__y), __type(__x));
    }
#pragma empty_line
  using ::ceil;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  ceil(float __x)
  { return __builtin_ceilf(__x); }
#pragma empty_line
  inline constexpr long double
  ceil(long double __x)
  { return __builtin_ceill(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    ceil(_Tp __x)
    { return __builtin_ceil(__x); }
#pragma empty_line
  using ::cos;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  cos(float __x)
  { return __builtin_cosf(__x); }
#pragma empty_line
  inline constexpr long double
  cos(long double __x)
  { return __builtin_cosl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    cos(_Tp __x)
    { return __builtin_cos(__x); }
#pragma empty_line
  using ::cosh;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  cosh(float __x)
  { return __builtin_coshf(__x); }
#pragma empty_line
  inline constexpr long double
  cosh(long double __x)
  { return __builtin_coshl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    cosh(_Tp __x)
    { return __builtin_cosh(__x); }
#pragma empty_line
  using ::exp;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  exp(float __x)
  { return __builtin_expf(__x); }
#pragma empty_line
  inline constexpr long double
  exp(long double __x)
  { return __builtin_expl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    exp(_Tp __x)
    { return __builtin_exp(__x); }
#pragma empty_line
  using ::fabs;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  fabs(float __x)
  { return __builtin_fabsf(__x); }
#pragma empty_line
  inline constexpr long double
  fabs(long double __x)
  { return __builtin_fabsl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    fabs(_Tp __x)
    { return __builtin_fabs(__x); }
#pragma empty_line
  using ::floor;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  floor(float __x)
  { return __builtin_floorf(__x); }
#pragma empty_line
  inline constexpr long double
  floor(long double __x)
  { return __builtin_floorl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    floor(_Tp __x)
    { return __builtin_floor(__x); }
#pragma empty_line
  using ::fmod;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  fmod(float __x, float __y)
  { return __builtin_fmodf(__x, __y); }
#pragma empty_line
  inline constexpr long double
  fmod(long double __x, long double __y)
  { return __builtin_fmodl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmod(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmod(__type(__x), __type(__y));
    }
#pragma empty_line
  using ::frexp;
#pragma empty_line
#pragma empty_line
  inline float
  frexp(float __x, int* __exp)
  { return __builtin_frexpf(__x, __exp); }
#pragma empty_line
  inline long double
  frexp(long double __x, int* __exp)
  { return __builtin_frexpl(__x, __exp); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    frexp(_Tp __x, int* __exp)
    { return __builtin_frexp(__x, __exp); }
#pragma empty_line
  using ::ldexp;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  ldexp(float __x, int __exp)
  { return __builtin_ldexpf(__x, __exp); }
#pragma empty_line
  inline constexpr long double
  ldexp(long double __x, int __exp)
  { return __builtin_ldexpl(__x, __exp); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    ldexp(_Tp __x, int __exp)
    { return __builtin_ldexp(__x, __exp); }
#pragma empty_line
  using ::log;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  log(float __x)
  { return __builtin_logf(__x); }
#pragma empty_line
  inline constexpr long double
  log(long double __x)
  { return __builtin_logl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    log(_Tp __x)
    { return __builtin_log(__x); }
#pragma empty_line
  using ::log10;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  log10(float __x)
  { return __builtin_log10f(__x); }
#pragma empty_line
  inline constexpr long double
  log10(long double __x)
  { return __builtin_log10l(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    log10(_Tp __x)
    { return __builtin_log10(__x); }
#pragma empty_line
  using ::modf;
#pragma empty_line
#pragma empty_line
  inline float
  modf(float __x, float* __iptr)
  { return __builtin_modff(__x, __iptr); }
#pragma empty_line
  inline long double
  modf(long double __x, long double* __iptr)
  { return __builtin_modfl(__x, __iptr); }
#pragma empty_line
#pragma empty_line
  using ::pow;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  pow(float __x, float __y)
  { return __builtin_powf(__x, __y); }
#pragma empty_line
  inline constexpr long double
  pow(long double __x, long double __y)
  { return __builtin_powl(__x, __y); }
#pragma line 435 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    pow(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return pow(__type(__x), __type(__y));
    }
#pragma empty_line
  using ::sin;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  sin(float __x)
  { return __builtin_sinf(__x); }
#pragma empty_line
  inline constexpr long double
  sin(long double __x)
  { return __builtin_sinl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sin(_Tp __x)
    { return __builtin_sin(__x); }
#pragma empty_line
  using ::sinh;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  sinh(float __x)
  { return __builtin_sinhf(__x); }
#pragma empty_line
  inline constexpr long double
  sinh(long double __x)
  { return __builtin_sinhl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sinh(_Tp __x)
    { return __builtin_sinh(__x); }
#pragma empty_line
  using ::sqrt;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  sqrt(float __x)
  { return __builtin_sqrtf(__x); }
#pragma empty_line
  inline constexpr long double
  sqrt(long double __x)
  { return __builtin_sqrtl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sqrt(_Tp __x)
    { return __builtin_sqrt(__x); }
#pragma empty_line
  using ::tan;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  tan(float __x)
  { return __builtin_tanf(__x); }
#pragma empty_line
  inline constexpr long double
  tan(long double __x)
  { return __builtin_tanl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    tan(_Tp __x)
    { return __builtin_tan(__x); }
#pragma empty_line
  using ::tanh;
#pragma empty_line
#pragma empty_line
  inline constexpr float
  tanh(float __x)
  { return __builtin_tanhf(__x); }
#pragma empty_line
  inline constexpr long double
  tanh(long double __x)
  { return __builtin_tanhl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    tanh(_Tp __x)
    { return __builtin_tanh(__x); }
#pragma empty_line
#pragma empty_line
}
#pragma line 559 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
namespace std
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  constexpr int
  fpclassify(float __x)
  { return __builtin_fpclassify(0x0100, (0x0100 | 0x0400), 0x0400,
    (0x0400 | 0x4000), 0x4000, __x); }
#pragma empty_line
  constexpr int
  fpclassify(double __x)
  { return __builtin_fpclassify(0x0100, (0x0100 | 0x0400), 0x0400,
    (0x0400 | 0x4000), 0x4000, __x); }
#pragma empty_line
  constexpr int
  fpclassify(long double __x)
  { return __builtin_fpclassify(0x0100, (0x0100 | 0x0400), 0x0400,
    (0x0400 | 0x4000), 0x4000, __x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              int>::__type
    fpclassify(_Tp __x)
    { return __x != 0 ? 0x0400 : 0x4000; }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isfinite(float __x)
  { return __builtin_isfinite(__x); }
#pragma empty_line
  constexpr bool
  isfinite(double __x)
  { return __builtin_isfinite(__x); }
#pragma empty_line
  constexpr bool
  isfinite(long double __x)
  { return __builtin_isfinite(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isfinite(_Tp __x)
    { return true; }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isinf(float __x)
  { return __builtin_isinf(__x); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  constexpr bool
  isinf(double __x)
  { return __builtin_isinf(__x); }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isinf(long double __x)
  { return __builtin_isinf(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isinf(_Tp __x)
    { return false; }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isnan(float __x)
  { return __builtin_isnan(__x); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  constexpr bool
  isnan(double __x)
  { return __builtin_isnan(__x); }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isnan(long double __x)
  { return __builtin_isnan(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isnan(_Tp __x)
    { return false; }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isnormal(float __x)
  { return __builtin_isnormal(__x); }
#pragma empty_line
  constexpr bool
  isnormal(double __x)
  { return __builtin_isnormal(__x); }
#pragma empty_line
  constexpr bool
  isnormal(long double __x)
  { return __builtin_isnormal(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isnormal(_Tp __x)
    { return __x != 0 ? true : false; }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  constexpr bool
  signbit(float __x)
  { return __builtin_signbit(__x); }
#pragma empty_line
  constexpr bool
  signbit(double __x)
  { return __builtin_signbit(__x); }
#pragma empty_line
  constexpr bool
  signbit(long double __x)
  { return __builtin_signbit(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    signbit(_Tp __x)
    { return __x < 0 ? true : false; }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isgreater(float __x, float __y)
  { return __builtin_isgreater(__x, __y); }
#pragma empty_line
  constexpr bool
  isgreater(double __x, double __y)
  { return __builtin_isgreater(__x, __y); }
#pragma empty_line
  constexpr bool
  isgreater(long double __x, long double __y)
  { return __builtin_isgreater(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isgreater(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isgreater(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isgreaterequal(float __x, float __y)
  { return __builtin_isgreaterequal(__x, __y); }
#pragma empty_line
  constexpr bool
  isgreaterequal(double __x, double __y)
  { return __builtin_isgreaterequal(__x, __y); }
#pragma empty_line
  constexpr bool
  isgreaterequal(long double __x, long double __y)
  { return __builtin_isgreaterequal(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isgreaterequal(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isgreaterequal(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isless(float __x, float __y)
  { return __builtin_isless(__x, __y); }
#pragma empty_line
  constexpr bool
  isless(double __x, double __y)
  { return __builtin_isless(__x, __y); }
#pragma empty_line
  constexpr bool
  isless(long double __x, long double __y)
  { return __builtin_isless(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isless(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isless(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr bool
  islessequal(float __x, float __y)
  { return __builtin_islessequal(__x, __y); }
#pragma empty_line
  constexpr bool
  islessequal(double __x, double __y)
  { return __builtin_islessequal(__x, __y); }
#pragma empty_line
  constexpr bool
  islessequal(long double __x, long double __y)
  { return __builtin_islessequal(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    islessequal(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_islessequal(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr bool
  islessgreater(float __x, float __y)
  { return __builtin_islessgreater(__x, __y); }
#pragma empty_line
  constexpr bool
  islessgreater(double __x, double __y)
  { return __builtin_islessgreater(__x, __y); }
#pragma empty_line
  constexpr bool
  islessgreater(long double __x, long double __y)
  { return __builtin_islessgreater(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    islessgreater(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_islessgreater(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr bool
  isunordered(float __x, float __y)
  { return __builtin_isunordered(__x, __y); }
#pragma empty_line
  constexpr bool
  isunordered(double __x, double __y)
  { return __builtin_isunordered(__x, __y); }
#pragma empty_line
  constexpr bool
  isunordered(long double __x, long double __y)
  { return __builtin_isunordered(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isunordered(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isunordered(__type(__x), __type(__y));
    }
#pragma line 956 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
#pragma empty_line
}
#pragma line 1072 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
namespace std
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
  using ::double_t;
  using ::float_t;
#pragma empty_line
#pragma empty_line
  using ::acosh;
  using ::acoshf;
  using ::acoshl;
#pragma empty_line
  using ::asinh;
  using ::asinhf;
  using ::asinhl;
#pragma empty_line
  using ::atanh;
  using ::atanhf;
  using ::atanhl;
#pragma empty_line
  using ::cbrt;
  using ::cbrtf;
  using ::cbrtl;
#pragma empty_line
  using ::copysign;
  using ::copysignf;
  using ::copysignl;
#pragma empty_line
  using ::erf;
  using ::erff;
  using ::erfl;
#pragma empty_line
  using ::erfc;
  using ::erfcf;
  using ::erfcl;
#pragma empty_line
  using ::exp2;
  using ::exp2f;
  using ::exp2l;
#pragma empty_line
  using ::expm1;
  using ::expm1f;
  using ::expm1l;
#pragma empty_line
  using ::fdim;
  using ::fdimf;
  using ::fdiml;
#pragma empty_line
  using ::fma;
  using ::fmaf;
  using ::fmal;
#pragma empty_line
  using ::fmax;
  using ::fmaxf;
  using ::fmaxl;
#pragma empty_line
  using ::fmin;
  using ::fminf;
  using ::fminl;
#pragma empty_line
  using ::hypot;
  using ::hypotf;
  using ::hypotl;
#pragma empty_line
  using ::ilogb;
  using ::ilogbf;
  using ::ilogbl;
#pragma empty_line
  using ::lgamma;
  using ::lgammaf;
  using ::lgammal;
#pragma empty_line
  using ::llrint;
  using ::llrintf;
  using ::llrintl;
#pragma empty_line
  using ::llround;
  using ::llroundf;
  using ::llroundl;
#pragma empty_line
  using ::log1p;
  using ::log1pf;
  using ::log1pl;
#pragma empty_line
  using ::log2;
  using ::log2f;
  using ::log2l;
#pragma empty_line
  using ::logb;
  using ::logbf;
  using ::logbl;
#pragma empty_line
  using ::lrint;
  using ::lrintf;
  using ::lrintl;
#pragma empty_line
  using ::lround;
  using ::lroundf;
  using ::lroundl;
#pragma empty_line
  using ::nan;
  using ::nanf;
  using ::nanl;
#pragma empty_line
  using ::nearbyint;
  using ::nearbyintf;
  using ::nearbyintl;
#pragma empty_line
  using ::nextafter;
  using ::nextafterf;
  using ::nextafterl;
#pragma empty_line
  using ::nexttoward;
  using ::nexttowardf;
  using ::nexttowardl;
#pragma empty_line
  using ::remainder;
  using ::remainderf;
  using ::remainderl;
#pragma empty_line
  using ::remquo;
  using ::remquof;
  using ::remquol;
#pragma empty_line
  using ::rint;
  using ::rintf;
  using ::rintl;
#pragma empty_line
  using ::round;
  using ::roundf;
  using ::roundl;
#pragma empty_line
  using ::scalbln;
  using ::scalblnf;
  using ::scalblnl;
#pragma empty_line
  using ::scalbn;
  using ::scalbnf;
  using ::scalbnl;
#pragma empty_line
  using ::tgamma;
  using ::tgammaf;
  using ::tgammal;
#pragma empty_line
  using ::trunc;
  using ::truncf;
  using ::truncl;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  constexpr float
  acosh(float __x)
  { return __builtin_acoshf(__x); }
#pragma empty_line
  constexpr long double
  acosh(long double __x)
  { return __builtin_acoshl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    acosh(_Tp __x)
    { return __builtin_acosh(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  asinh(float __x)
  { return __builtin_asinhf(__x); }
#pragma empty_line
  constexpr long double
  asinh(long double __x)
  { return __builtin_asinhl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    asinh(_Tp __x)
    { return __builtin_asinh(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  atanh(float __x)
  { return __builtin_atanhf(__x); }
#pragma empty_line
  constexpr long double
  atanh(long double __x)
  { return __builtin_atanhl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    atanh(_Tp __x)
    { return __builtin_atanh(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  cbrt(float __x)
  { return __builtin_cbrtf(__x); }
#pragma empty_line
  constexpr long double
  cbrt(long double __x)
  { return __builtin_cbrtl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    cbrt(_Tp __x)
    { return __builtin_cbrt(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  copysign(float __x, float __y)
  { return __builtin_copysignf(__x, __y); }
#pragma empty_line
  constexpr long double
  copysign(long double __x, long double __y)
  { return __builtin_copysignl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    copysign(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return copysign(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr float
  erf(float __x)
  { return __builtin_erff(__x); }
#pragma empty_line
  constexpr long double
  erf(long double __x)
  { return __builtin_erfl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    erf(_Tp __x)
    { return __builtin_erf(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  erfc(float __x)
  { return __builtin_erfcf(__x); }
#pragma empty_line
  constexpr long double
  erfc(long double __x)
  { return __builtin_erfcl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    erfc(_Tp __x)
    { return __builtin_erfc(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  exp2(float __x)
  { return __builtin_exp2f(__x); }
#pragma empty_line
  constexpr long double
  exp2(long double __x)
  { return __builtin_exp2l(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    exp2(_Tp __x)
    { return __builtin_exp2(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  expm1(float __x)
  { return __builtin_expm1f(__x); }
#pragma empty_line
  constexpr long double
  expm1(long double __x)
  { return __builtin_expm1l(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    expm1(_Tp __x)
    { return __builtin_expm1(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  fdim(float __x, float __y)
  { return __builtin_fdimf(__x, __y); }
#pragma empty_line
  constexpr long double
  fdim(long double __x, long double __y)
  { return __builtin_fdiml(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fdim(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fdim(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr float
  fma(float __x, float __y, float __z)
  { return __builtin_fmaf(__x, __y, __z); }
#pragma empty_line
  constexpr long double
  fma(long double __x, long double __y, long double __z)
  { return __builtin_fmal(__x, __y, __z); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp>
    constexpr typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type
    fma(_Tp __x, _Up __y, _Vp __z)
    {
      typedef typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type __type;
      return fma(__type(__x), __type(__y), __type(__z));
    }
#pragma empty_line
#pragma empty_line
  constexpr float
  fmax(float __x, float __y)
  { return __builtin_fmaxf(__x, __y); }
#pragma empty_line
  constexpr long double
  fmax(long double __x, long double __y)
  { return __builtin_fmaxl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmax(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmax(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr float
  fmin(float __x, float __y)
  { return __builtin_fminf(__x, __y); }
#pragma empty_line
  constexpr long double
  fmin(long double __x, long double __y)
  { return __builtin_fminl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmin(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmin(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr float
  hypot(float __x, float __y)
  { return __builtin_hypotf(__x, __y); }
#pragma empty_line
  constexpr long double
  hypot(long double __x, long double __y)
  { return __builtin_hypotl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    hypot(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return hypot(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr int
  ilogb(float __x)
  { return __builtin_ilogbf(__x); }
#pragma empty_line
  constexpr int
  ilogb(long double __x)
  { return __builtin_ilogbl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    int>::__type
    ilogb(_Tp __x)
    { return __builtin_ilogb(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  lgamma(float __x)
  { return __builtin_lgammaf(__x); }
#pragma empty_line
  constexpr long double
  lgamma(long double __x)
  { return __builtin_lgammal(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    lgamma(_Tp __x)
    { return __builtin_lgamma(__x); }
#pragma empty_line
#pragma empty_line
  constexpr long long
  llrint(float __x)
  { return __builtin_llrintf(__x); }
#pragma empty_line
  constexpr long long
  llrint(long double __x)
  { return __builtin_llrintl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long long>::__type
    llrint(_Tp __x)
    { return __builtin_llrint(__x); }
#pragma empty_line
#pragma empty_line
  constexpr long long
  llround(float __x)
  { return __builtin_llroundf(__x); }
#pragma empty_line
  constexpr long long
  llround(long double __x)
  { return __builtin_llroundl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long long>::__type
    llround(_Tp __x)
    { return __builtin_llround(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  log1p(float __x)
  { return __builtin_log1pf(__x); }
#pragma empty_line
  constexpr long double
  log1p(long double __x)
  { return __builtin_log1pl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    log1p(_Tp __x)
    { return __builtin_log1p(__x); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
  constexpr float
  log2(float __x)
  { return __builtin_log2f(__x); }
#pragma empty_line
  constexpr long double
  log2(long double __x)
  { return __builtin_log2l(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    log2(_Tp __x)
    { return __builtin_log2(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  logb(float __x)
  { return __builtin_logbf(__x); }
#pragma empty_line
  constexpr long double
  logb(long double __x)
  { return __builtin_logbl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    logb(_Tp __x)
    { return __builtin_logb(__x); }
#pragma empty_line
#pragma empty_line
  constexpr long
  lrint(float __x)
  { return __builtin_lrintf(__x); }
#pragma empty_line
  constexpr long
  lrint(long double __x)
  { return __builtin_lrintl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long>::__type
    lrint(_Tp __x)
    { return __builtin_lrint(__x); }
#pragma empty_line
#pragma empty_line
  constexpr long
  lround(float __x)
  { return __builtin_lroundf(__x); }
#pragma empty_line
  constexpr long
  lround(long double __x)
  { return __builtin_lroundl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long>::__type
    lround(_Tp __x)
    { return __builtin_lround(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  nearbyint(float __x)
  { return __builtin_nearbyintf(__x); }
#pragma empty_line
  constexpr long double
  nearbyint(long double __x)
  { return __builtin_nearbyintl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    nearbyint(_Tp __x)
    { return __builtin_nearbyint(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  nextafter(float __x, float __y)
  { return __builtin_nextafterf(__x, __y); }
#pragma empty_line
  constexpr long double
  nextafter(long double __x, long double __y)
  { return __builtin_nextafterl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    nextafter(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return nextafter(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  constexpr float
  nexttoward(float __x, long double __y)
  { return __builtin_nexttowardf(__x, __y); }
#pragma empty_line
  constexpr long double
  nexttoward(long double __x, long double __y)
  { return __builtin_nexttowardl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    nexttoward(_Tp __x, long double __y)
    { return __builtin_nexttoward(__x, __y); }
#pragma empty_line
#pragma empty_line
  constexpr float
  remainder(float __x, float __y)
  { return __builtin_remainderf(__x, __y); }
#pragma empty_line
  constexpr long double
  remainder(long double __x, long double __y)
  { return __builtin_remainderl(__x, __y); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    remainder(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return remainder(__type(__x), __type(__y));
    }
#pragma empty_line
#pragma empty_line
  inline float
  remquo(float __x, float __y, int* __pquo)
  { return __builtin_remquof(__x, __y, __pquo); }
#pragma empty_line
  inline long double
  remquo(long double __x, long double __y, int* __pquo)
  { return __builtin_remquol(__x, __y, __pquo); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp, typename _Up>
    inline typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    remquo(_Tp __x, _Up __y, int* __pquo)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return remquo(__type(__x), __type(__y), __pquo);
    }
#pragma empty_line
#pragma empty_line
  constexpr float
  rint(float __x)
  { return __builtin_rintf(__x); }
#pragma empty_line
  constexpr long double
  rint(long double __x)
  { return __builtin_rintl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    rint(_Tp __x)
    { return __builtin_rint(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  round(float __x)
  { return __builtin_roundf(__x); }
#pragma empty_line
  constexpr long double
  round(long double __x)
  { return __builtin_roundl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    round(_Tp __x)
    { return __builtin_round(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  scalbln(float __x, long __ex)
  { return __builtin_scalblnf(__x, __ex); }
#pragma empty_line
  constexpr long double
  scalbln(long double __x, long __ex)
  { return __builtin_scalblnl(__x, __ex); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    scalbln(_Tp __x, long __ex)
    { return __builtin_scalbln(__x, __ex); }
#pragma empty_line
#pragma empty_line
  constexpr float
  scalbn(float __x, int __ex)
  { return __builtin_scalbnf(__x, __ex); }
#pragma empty_line
  constexpr long double
  scalbn(long double __x, int __ex)
  { return __builtin_scalbnl(__x, __ex); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    scalbn(_Tp __x, int __ex)
    { return __builtin_scalbn(__x, __ex); }
#pragma empty_line
#pragma empty_line
  constexpr float
  tgamma(float __x)
  { return __builtin_tgammaf(__x); }
#pragma empty_line
  constexpr long double
  tgamma(long double __x)
  { return __builtin_tgammal(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    tgamma(_Tp __x)
    { return __builtin_tgamma(__x); }
#pragma empty_line
#pragma empty_line
  constexpr float
  trunc(float __x)
  { return __builtin_truncf(__x); }
#pragma empty_line
  constexpr long double
  trunc(long double __x)
  { return __builtin_truncl(__x); }
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    trunc(_Tp __x)
    { return __builtin_trunc(__x); }
#pragma empty_line
#pragma empty_line
}
#pragma line 1797 "C:/Xilinx/Vivado/2018.2/msys64/mingw64/include/c++/6.2.0/cmath" 3
}
#pragma line 70 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.h" 2
#pragma empty_line
#pragma line 70 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.h"
using namespace std;
#pragma line 80 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.h"
typedef char mat_a_t;
typedef char mat_b_t;
typedef short result_t;
#pragma empty_line
#pragma empty_line
void matrixmul(
      mat_a_t a[3][3],
      mat_b_t b[3][3],
      result_t res[3][3]);
#pragma line 68 "C:/Users/SEP16/SoC_2022_MJU/LAB6/matrixmul.cpp" 2
#pragma empty_line
void matrixmul(
      mat_a_t a[3][3],
      mat_b_t b[3][3],
      result_t res[3][3])
{
#pragma empty_line
  Row: for(int i = 0; i < 3; i++) {
#pragma empty_line
    Col: for(int j = 0; j < 3; j++) {
#pragma empty_line
      res[i][j] = 0;
      Product: for(int k = 0; k < 3; k++) {
        res[i][j] += a[i][k] * b[k][j];
      }
    }
  }
}
