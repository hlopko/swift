#include <string>
// template <> _LIBCPP_FUNC_VIS void __match_any_but_newline<char>::__exec(__state&) const;

// template <class _CharT>
// const typename regex_traits<_CharT>::char_class_type
// regex_traits<_CharT>::__regex_word;


// inline
// void
// condition_variable_any::notify_one() _NOEXCEPT
// {
//     {lock_guard<mutex> __lx(*__mut_);}
//     __cv_.notify_one();
// }

// template <class _ValueType, class _Tp, class>
// any::any(_ValueType && __v) : __h(nullptr)
// {
//   __any_imp::_Handler<_Tp>::__create(*this, _VSTD::forward<_ValueType>(__v));
// }

// class _LIBCPP_EXCEPTION_ABI ios_base::failure
//     : public system_error
// {
// public:
//     explicit failure(const string& __msg, const error_code& __ec = io_errc::stream);
//     explicit failure(const char* __msg, const error_code& __ec = io_errc::stream);
//     failure(const failure&) _NOEXCEPT = default;
//     virtual ~failure() _NOEXCEPT;
// };

// template <class _Facet>
// locale
// locale::combine(const locale& __other) const
// {
//     if (!_VSTD::has_facet<_Facet>(__other))
//         __throw_runtime_error("locale::combine: locale missing facet");

//     return locale(*this, &const_cast<_Facet&>(_VSTD::use_facet<_Facet>(__other)));
// }

// template<class _CharT, class _Traits, class _Allocator>
// _LIBCPP_FUNC_VIS
// const typename basic_string<_CharT, _Traits, _Allocator>::size_type
//                basic_string<_CharT, _Traits, _Allocator>::npos;


//                template <class _ForwardIterator, class _Tp>
// inline _LIBCPP_INLINE_VISIBILITY
// void
// iota(_ForwardIterator __first, _ForwardIterator __last, _Tp __value_)
// {
//     for (; __first != __last; ++__first, (void) ++__value_)
//         *__first = __value_;
// }


// canonical forward declaration in one fragment,
// definition in other fragment, we want to import only once



// std::__1::__default_init_tag&&
// std::__1::forward<std::__1::__default_init_tag>(std::__1::remove_reference<std::__1::__default_init_tag>::type&)


// std::__1::__default_init_tag&&
// std::__1::forward
//   <std::__1::__default_init_tag>
//   (
//     std::__1::remove_reference
//       <std::__1::__default_init_tag>
//       ::type&
//   )


std::__1::__compressed_pair<
  std::__1::basic_string<
    char,
    std::__1::char_traits<char>,
    std::__1::allocator<char>
  >::__rep,
  std::__1::allocator<char>
>::__compressed_pair<
  std::__1::__default_init_tag,
  std::__1::__default_init_tag
>(std::__1::__default_init_tag&&, std::__1::__default_init_tag&&)