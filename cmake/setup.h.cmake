/* This define (__WX_SETUP_H__) is used both to ensure setup.h is included
 * only once and to indicate that we are building using configure. */
#ifndef __WX_SETUP_H__
#define __WX_SETUP_H__

/* never undefine inline or const keywords for C++ compilation */
#ifndef __cplusplus

/* Define to empty if the keyword does not work.  */
#cmakedefine const

/* Define as __inline if that's what the C compiler calls it.  */
#cmakedefine inline

#endif /* __cplusplus */

/* fill in with the string wxGetOsDescription() will return */
#cmakedefine WXWIN_OS_DESCRIPTION ${WXWIN_OS_DESCRIPTION}

/* the installation location prefix from configure */
#cmakedefine wxINSTALL_PREFIX ${wxINSTALL_PREFIX}

/* Define to `int' if <sys/types.h> doesn't define.  */
#cmakedefine gid_t ${GID_T}

/* Define to `int' if <sys/types.h> doesn't define.  */
#cmakedefine mode_t ${MODE_T}

/* Define to `long' if <sys/types.h> doesn't define.  */
#cmakedefine off_t ${OFF_T}

/* Define to `int' if <sys/types.h> doesn't define.  */
#cmakedefine pid_t ${PID_T}

/* Define to `unsigned' if <sys/types.h> doesn't define.  */
#cmakedefine size_t ${SIZE_T}

/* Define if ssize_t type is available.  */
#cmakedefine01 HAVE_SSIZE_T

/* Define if you have the ANSI C header files.  */
#cmakedefine01 STDC_HEADERS

/* Define this to get extra features from GNU libc. */
#ifndef _GNU_SOURCE
#cmakedefine01 _GNU_SOURCE
#endif

/* Define to `int' if <sys/types.h> doesn't define.  */
#cmakedefine uid_t ${UID_T}

/* Define if your processor stores words with the most significant
   byte first (like Motorola and SPARC, unlike Intel and VAX).  */
#cmakedefine WORDS_BIGENDIAN 1

/* Define this if your version of GTK+ is greater than 1.2.7 */
#cmakedefine __WXGTK127__ 1

/* Define this if your version of GTK+ is greater than 2.0 */
#cmakedefine __WXGTK20__ 1

/* Define this if your version of GTK+ is greater than 2.6 */
#cmakedefine __WXGTK26__ 1

/* Define this if your version of GTK+ is greater than 2.10 */
#cmakedefine __WXGTK210__ 1

/* Define this if your version of GTK+ is greater than 2.18 */
#cmakedefine __WXGTK218__ 1

/* Define this if your version of GTK+ is >= 3.0 */
#cmakedefine __WXGTK3__ 1

/* Define this if you want to use GPE features */
#cmakedefine __WXGPE__

/* Define this if your version of Motif is greater than 2.0 */
#cmakedefine __WXMOTIF20__

/* Define this if you are using Lesstif */
#cmakedefine __WXLESSTIF__

/*
 * Define to 1 for Unix[-like] system
 */
#cmakedefine01 wxUSE_UNIX

#cmakedefine __UNIX__ 1

#cmakedefine __AIX__ 1
#cmakedefine __BSD__ 1
#cmakedefine __DARWIN__ 1
#cmakedefine __EMX__ 1
#cmakedefine __FREEBSD__ 1
#cmakedefine __HPUX__ 1
#cmakedefine __LINUX__ 1
#cmakedefine __NETBSD__ 1
#cmakedefine __OPENBSD__ 1
#cmakedefine __OSF__ 1
#cmakedefine __QNX__ 1
#cmakedefine __SGI__ 1
#cmakedefine __SOLARIS__ 1
#cmakedefine __SUN__ 1
#cmakedefine __SUNOS__ 1
#cmakedefine __SVR4__ 1
#cmakedefine __SYSV__ 1
#cmakedefine __ULTRIX__ 1
#cmakedefine __UNIXWARE__ 1
#cmakedefine __VMS__ 1

#cmakedefine __IA64__ 1
#cmakedefine __ALPHA__ 1

/* NanoX (with wxX11) */
#cmakedefine01 wxUSE_NANOX

/* PowerPC Darwin & Mac OS X */
#cmakedefine01 __POWERPC__
#cmakedefine01 TARGET_CARBON

/* Hack to make IOGraphicsTypes.h not define Point conflicting with MacTypes */
#cmakedefine __Point__

/* MS-DOS with DJGPP */
#cmakedefine __DOS__ 1

/* Stupid hack; __WINDOWS__ clashes with wx/defs.h */
#ifndef __WINDOWS__
#undef __WINDOWS__
#endif

#ifndef __WIN32__
#undef __WIN32__
#endif
#ifndef __GNUWIN32__
#undef __GNUWIN32__
#endif
#ifndef STRICT
#undef STRICT
#endif
#ifndef WINVER
#undef WINVER
#endif

/* OS/2 with EMX */
#cmakedefine __OS2__ 1

/* --- start common options --- */

#ifndef wxUSE_GUI
    #cmakedefine01 wxUSE_GUI
#endif


#cmakedefine01 WXWIN_COMPATIBILITY_2_6

#cmakedefine01 WXWIN_COMPATIBILITY_2_8

#cmakedefine01 wxDIALOG_UNIT_COMPATIBILITY



#cmakedefine01 wxUSE_ON_FATAL_EXCEPTION

#cmakedefine01 wxUSE_STACKWALKER

#cmakedefine01 wxUSE_DEBUGREPORT



#cmakedefine01 wxUSE_DEBUG_CONTEXT

#cmakedefine01 wxUSE_MEMORY_TRACING

#cmakedefine01 wxUSE_GLOBAL_MEMORY_OPERATORS

#cmakedefine01 wxUSE_DEBUG_NEW_ALWAYS



#ifndef wxUSE_UNICODE
    #cmakedefine01 wxUSE_UNICODE
#endif

#cmakedefine01 wxUSE_WCHAR_T


#cmakedefine01 wxUSE_EXCEPTIONS

#cmakedefine01 wxUSE_EXTENDED_RTTI

#cmakedefine01 wxUSE_LOG

#cmakedefine01 wxUSE_LOGWINDOW

#cmakedefine01 wxUSE_LOGGUI

#cmakedefine01 wxUSE_LOG_DIALOG

#cmakedefine01 wxUSE_CMDLINE_PARSER

#cmakedefine01 wxUSE_THREADS

#cmakedefine01 wxUSE_STREAMS

#cmakedefine01 wxUSE_PRINTF_POS_PARAMS

#cmakedefine01 wxUSE_COMPILER_TLS


#cmakedefine01 wxUSE_STL

#if defined(__DMC__) || defined(__WATCOMC__) \
        || (defined(_MSC_VER) && _MSC_VER < 1200)
    #define wxUSE_STD_DEFAULT  0
#else
    #define wxUSE_STD_DEFAULT  0
#endif

#cmakedefine01 wxUSE_STD_CONTAINERS

#cmakedefine wxUSE_STD_IOSTREAM  ${wxUSE_STD_DEFAULT}

#cmakedefine wxUSE_STD_STRING  ${wxUSE_STD_DEFAULT}

#define wxUSE_STD_STRING_CONV_IN_WXSTRING wxUSE_STL

#cmakedefine01 wxUSE_IOSTREAMH



#cmakedefine01 wxUSE_LONGLONG

#cmakedefine01 wxUSE_BASE64

#cmakedefine01 wxUSE_CONSOLE_EVENTLOOP

#cmakedefine01 wxUSE_FILE
#cmakedefine01 wxUSE_FFILE

#cmakedefine01 wxUSE_FSVOLUME

#cmakedefine01 wxUSE_STDPATHS

#cmakedefine01 wxUSE_TEXTBUFFER

#cmakedefine01 wxUSE_TEXTFILE

#cmakedefine01 wxUSE_INTL

#cmakedefine01 wxUSE_XLOCALE

#cmakedefine01 wxUSE_DATETIME

#cmakedefine01 wxUSE_TIMER

#cmakedefine01 wxUSE_STOPWATCH

#cmakedefine01 wxUSE_FSWATCHER

#cmakedefine01 wxUSE_CONFIG

#cmakedefine01 wxUSE_CONFIG_NATIVE

#cmakedefine01 wxUSE_DIALUP_MANAGER

#cmakedefine01 wxUSE_DYNLIB_CLASS

#cmakedefine01 wxUSE_DYNAMIC_LOADER

#cmakedefine01 wxUSE_SOCKETS

#cmakedefine01 wxUSE_IPV6

#cmakedefine01 wxUSE_FILESYSTEM

#cmakedefine01 wxUSE_FS_ZIP

#cmakedefine01 wxUSE_FS_ARCHIVE

#cmakedefine01 wxUSE_FS_INET

#cmakedefine01 wxUSE_ARCHIVE_STREAMS

#cmakedefine01 wxUSE_ZIPSTREAM

#cmakedefine01 wxUSE_TARSTREAM

#cmakedefine01 wxUSE_ZLIB

#cmakedefine01 wxUSE_APPLE_IEEE

#cmakedefine01 wxUSE_JOYSTICK

#cmakedefine01 wxUSE_FONTENUM

#cmakedefine01 wxUSE_FONTMAP

#cmakedefine01 wxUSE_MIMETYPE

#cmakedefine01 wxUSE_PROTOCOL

#cmakedefine01 wxUSE_PROTOCOL_FILE
#cmakedefine01 wxUSE_PROTOCOL_FTP
#cmakedefine01 wxUSE_PROTOCOL_HTTP

#cmakedefine01 wxUSE_URL

#cmakedefine01 wxUSE_URL_NATIVE

#cmakedefine01 wxUSE_VARIANT

#cmakedefine01 wxUSE_ANY

#cmakedefine01 wxUSE_REGEX

#cmakedefine01 wxUSE_SYSTEM_OPTIONS

#cmakedefine01 wxUSE_SOUND

#cmakedefine01 wxUSE_MEDIACTRL

#cmakedefine01 wxUSE_XRC

#cmakedefine wxUSE_XML       ${wxUSE_XRC}

#cmakedefine01 wxUSE_AUI

#cmakedefine01 wxUSE_RIBBON

#cmakedefine01 wxUSE_PROPGRID

#cmakedefine01 wxUSE_STC

#cmakedefine01 wxUSE_WEBVIEW

#ifdef __WXMSW__
#cmakedefine01 wxUSE_WEBVIEW_IE
#else
#cmakedefine01 wxUSE_WEBVIEW_IE
#endif

#if defined(__WXGTK__) || defined(__WXOSX__)
#cmakedefine01 wxUSE_WEBVIEW_WEBKIT
#else
#cmakedefine01 wxUSE_WEBVIEW_WEBKIT
#endif


#ifdef _MSC_VER
#   if _MSC_VER >= 1310


#cmakedefine01 wxUSE_GRAPHICS_CONTEXT
#   else


       #cmakedefine01 wxUSE_GRAPHICS_CONTEXT
#   endif
#else





   #cmakedefine01 wxUSE_GRAPHICS_CONTEXT
#endif

#cmakedefine01 wxUSE_CAIRO



#cmakedefine01 wxUSE_CONTROLS

#cmakedefine01 wxUSE_MARKUP

#cmakedefine01 wxUSE_POPUPWIN

#cmakedefine01 wxUSE_TIPWINDOW

#cmakedefine01 wxUSE_ANIMATIONCTRL
#cmakedefine01 wxUSE_BANNERWINDOW
#cmakedefine01 wxUSE_BUTTON
#cmakedefine01 wxUSE_BMPBUTTON
#cmakedefine01 wxUSE_CALENDARCTRL
#cmakedefine01 wxUSE_CHECKBOX
#cmakedefine01 wxUSE_CHECKLISTBOX
#cmakedefine01 wxUSE_CHOICE
#cmakedefine01 wxUSE_COLLPANE
#cmakedefine01 wxUSE_COLOURPICKERCTRL
#cmakedefine01 wxUSE_COMBOBOX
#cmakedefine01 wxUSE_COMMANDLINKBUTTON
#cmakedefine01 wxUSE_DATAVIEWCTRL
#cmakedefine01 wxUSE_DATEPICKCTRL
#cmakedefine01 wxUSE_DIRPICKERCTRL
#cmakedefine01 wxUSE_EDITABLELISTBOX
#cmakedefine01 wxUSE_FILECTRL
#cmakedefine01 wxUSE_FILEPICKERCTRL
#cmakedefine01 wxUSE_FONTPICKERCTRL
#cmakedefine01 wxUSE_GAUGE
#cmakedefine01 wxUSE_HEADERCTRL
#cmakedefine01 wxUSE_HYPERLINKCTRL
#cmakedefine01 wxUSE_LISTBOX
#cmakedefine01 wxUSE_LISTCTRL
#cmakedefine01 wxUSE_RADIOBOX
#cmakedefine01 wxUSE_RADIOBTN
#cmakedefine01 wxUSE_RICHMSGDLG
#cmakedefine01 wxUSE_SCROLLBAR
#cmakedefine01 wxUSE_SEARCHCTRL
#cmakedefine01 wxUSE_SLIDER
#cmakedefine01 wxUSE_SPINBTN
#cmakedefine01 wxUSE_SPINCTRL
#cmakedefine01 wxUSE_STATBOX
#cmakedefine01 wxUSE_STATLINE
#cmakedefine01 wxUSE_STATTEXT
#cmakedefine01 wxUSE_STATBMP
#cmakedefine01 wxUSE_TEXTCTRL
#cmakedefine01 wxUSE_TIMEPICKCTRL
#cmakedefine01 wxUSE_TOGGLEBTN
#cmakedefine01 wxUSE_TREECTRL
#cmakedefine01 wxUSE_TREELISTCTRL

#cmakedefine01 wxUSE_STATUSBAR

#cmakedefine01 wxUSE_NATIVE_STATUSBAR

#cmakedefine01 wxUSE_TOOLBAR
#cmakedefine01 wxUSE_TOOLBAR_NATIVE

#cmakedefine01 wxUSE_NOTEBOOK

#cmakedefine01 wxUSE_LISTBOOK

#cmakedefine01 wxUSE_CHOICEBOOK

#cmakedefine01 wxUSE_TREEBOOK

#cmakedefine01 wxUSE_TOOLBOOK

#cmakedefine01 wxUSE_TASKBARICON

#cmakedefine01 wxUSE_GRID

#cmakedefine01 wxUSE_MINIFRAME

#cmakedefine01 wxUSE_COMBOCTRL

#cmakedefine01 wxUSE_ODCOMBOBOX

#cmakedefine01 wxUSE_BITMAPCOMBOBOX

#cmakedefine01 wxUSE_REARRANGECTRL


#cmakedefine01 wxUSE_ACCEL

#cmakedefine01 wxUSE_ARTPROVIDER_STD

#cmakedefine01 wxUSE_ARTPROVIDER_TANGO

#cmakedefine01 wxUSE_HOTKEY

#cmakedefine01 wxUSE_CARET

#cmakedefine01 wxUSE_DISPLAY

#cmakedefine01 wxUSE_GEOMETRY

#cmakedefine01 wxUSE_IMAGLIST

#cmakedefine01 wxUSE_INFOBAR

#cmakedefine01 wxUSE_MENUS

#cmakedefine01 wxUSE_NOTIFICATION_MESSAGE

#cmakedefine01 wxUSE_PREFERENCES_EDITOR

#cmakedefine01 wxUSE_RICHTOOLTIP

#cmakedefine01 wxUSE_SASH

#cmakedefine01 wxUSE_SPLITTER

#cmakedefine01 wxUSE_TOOLTIPS

#cmakedefine01 wxUSE_VALIDATORS

#ifdef __WXMSW__
#cmakedefine01 wxUSE_AUTOID_MANAGEMENT
#else
#cmakedefine01 wxUSE_AUTOID_MANAGEMENT
#endif


#cmakedefine01 wxUSE_COMMON_DIALOGS

#cmakedefine01 wxUSE_BUSYINFO

#cmakedefine01 wxUSE_CHOICEDLG

#cmakedefine01 wxUSE_COLOURDLG

#cmakedefine01 wxUSE_DIRDLG


#cmakedefine01 wxUSE_FILEDLG

#cmakedefine01 wxUSE_FINDREPLDLG

#cmakedefine01 wxUSE_FONTDLG

#cmakedefine01 wxUSE_MSGDLG

#cmakedefine01 wxUSE_PROGRESSDLG

#cmakedefine01 wxUSE_STARTUP_TIPS

#cmakedefine01 wxUSE_TEXTDLG

#cmakedefine01 wxUSE_NUMBERDLG

#cmakedefine01 wxUSE_SPLASH

#cmakedefine01 wxUSE_WIZARDDLG

#cmakedefine01 wxUSE_ABOUTDLG

#cmakedefine01 wxUSE_FILE_HISTORY


#cmakedefine01 wxUSE_METAFILE
#cmakedefine01 wxUSE_ENH_METAFILE
#cmakedefine01 wxUSE_WIN_METAFILES_ALWAYS


#cmakedefine01 wxUSE_MDI

#cmakedefine01 wxUSE_DOC_VIEW_ARCHITECTURE

#cmakedefine01 wxUSE_MDI_ARCHITECTURE

#cmakedefine01 wxUSE_PRINTING_ARCHITECTURE

#cmakedefine01 wxUSE_HTML

#cmakedefine01 wxUSE_GLCANVAS

#cmakedefine01 wxUSE_RICHTEXT


#cmakedefine01 wxUSE_CLIPBOARD

#cmakedefine01 wxUSE_DATAOBJ

#cmakedefine01 wxUSE_DRAG_AND_DROP

#cmakedefine01 wxUSE_ACCESSIBILITY


#cmakedefine01 wxUSE_SNGLINST_CHECKER

#cmakedefine01 wxUSE_DRAGIMAGE

#cmakedefine01 wxUSE_IPC

#cmakedefine01 wxUSE_HELP


#cmakedefine01 wxUSE_MS_HTML_HELP


#cmakedefine01 wxUSE_WXHTML_HELP

#cmakedefine01 wxUSE_CONSTRAINTS


#cmakedefine01 wxUSE_SPLINES


#cmakedefine01 wxUSE_MOUSEWHEEL


#cmakedefine01 wxUSE_UIACTIONSIMULATOR


#cmakedefine01 wxUSE_POSTSCRIPT

#cmakedefine01 wxUSE_AFM_FOR_POSTSCRIPT

#cmakedefine01 wxUSE_SVG

#cmakedefine01 wxUSE_DC_TRANSFORM_MATRIX



#cmakedefine01 wxUSE_IMAGE

#cmakedefine01 wxUSE_LIBPNG

#cmakedefine01 wxUSE_LIBJPEG

#cmakedefine01 wxUSE_LIBTIFF

#cmakedefine01 wxUSE_TGA

#cmakedefine01 wxUSE_GIF

#cmakedefine01 wxUSE_PNM

#cmakedefine01 wxUSE_PCX

#cmakedefine01 wxUSE_IFF

#cmakedefine01 wxUSE_XPM

#cmakedefine01 wxUSE_ICO_CUR

#cmakedefine01 wxUSE_PALETTE


#cmakedefine01 wxUSE_ALL_THEMES

#cmakedefine01 wxUSE_THEME_GTK
#cmakedefine01 wxUSE_THEME_METAL
#cmakedefine01 wxUSE_THEME_MONO
#cmakedefine01 wxUSE_THEME_WIN32


/* --- end common options --- */

/*
 * Unix-specific options
 */
#cmakedefine01 wxUSE_SELECT_DISPATCHER
#cmakedefine01 wxUSE_EPOLL_DISPATCHER

#cmakedefine01 wxUSE_UNICODE_UTF8
#cmakedefine01 wxUSE_UTF8_LOCALE_ONLY

/*
   Use GStreamer for Unix.

   Default is 0 as this requires a lot of dependencies which might not be
   available.

   Recommended setting: 1 (wxMediaCtrl won't work by default without it).
 */
#cmakedefine01 wxUSE_GSTREAMER

/* --- start MSW options --- */

#ifndef wxUSE_UNICODE_MSLU
    #cmakedefine01 wxUSE_UNICODE_MSLU
#endif

#cmakedefine01 wxUSE_MFC

#cmakedefine01 wxUSE_OLE

#cmakedefine01 wxUSE_OLE_AUTOMATION

#cmakedefine01 wxUSE_ACTIVEX

#cmakedefine01 wxUSE_DC_CACHEING

#cmakedefine01 wxUSE_WXDIB

#cmakedefine01 wxUSE_POSTSCRIPT_ARCHITECTURE_IN_MSW

#cmakedefine01 wxUSE_REGKEY

#cmakedefine01 wxUSE_RICHEDIT

#cmakedefine01 wxUSE_RICHEDIT2

#cmakedefine01 wxUSE_OWNER_DRAWN

#cmakedefine01 wxUSE_TASKBARICON_BALLOONS

#cmakedefine01 wxUSE_UXTHEME

#cmakedefine01 wxUSE_INKEDIT

#cmakedefine01 wxUSE_INICONF


#cmakedefine01 wxUSE_DATEPICKCTRL_GENERIC

#cmakedefine01 wxUSE_TIMEPICKCTRL_GENERIC


#cmakedefine01 wxUSE_CRASHREPORT
/* --- end MSW options --- */

/*
 * Define if your compiler supports the explicit keyword
 */
#cmakedefine01 HAVE_EXPLICIT

/*
 * Define if your compiler has C99 va_copy
 */
#cmakedefine01 HAVE_VA_COPY

/*
 * Define if va_list type is an array
 */
#cmakedefine VA_LIST_IS_ARRAY 1

/*
 * Define if the compiler supports variadic macros
 */
#cmakedefine HAVE_VARIADIC_MACROS 1

/*
 * Define if you don't want variadic macros to be used even if they are
 * supported by the compiler.
 */
#cmakedefine wxNO_VARIADIC_MACROS 1

/*
 * Define if your compiler has std::wstring
 */
#cmakedefine01 HAVE_STD_WSTRING
/*
 * Define if your compiler has compliant std::string::compare
 */
#cmakedefine HAVE_STD_STRING_COMPARE
/*
 * Define if your compiler has <hash_map>
 */
#cmakedefine   HAVE_HASH_MAP 1
/*
 * Define if your compiler has <ext/hash_map>
 */
#cmakedefine HAVE_EXT_HASH_MAP 1
/*
 * Define if your compiler has std::hash_map/hash_set
 */
#cmakedefine HAVE_STD_HASH_MAP 1
/*
 * Define if your compiler has __gnu_cxx::hash_map/hash_set
 */
#cmakedefine HAVE_GNU_CXX_HASH_MAP 1

/*
 * Define if your compiler has std::unordered_map
 */
#cmakedefine HAVE_STD_UNORDERED_MAP 1

/*
 * Define if your compiler has std::unordered_set
 */
#cmakedefine HAVE_STD_UNORDERED_SET 1

/*
 * Define if your compiler has std::tr1::unordered_map
 */
#cmakedefine HAVE_TR1_UNORDERED_MAP 1

/*
 * Define if your compiler has std::tr1::unordered_set
 */
#cmakedefine HAVE_TR1_UNORDERED_SET 1

/*
 * Define if your compiler has <tr1/type_traits>
 */
#cmakedefine HAVE_TR1_TYPE_TRAITS 1

/*
 * Define if your compiler has <type_traits>
 */
#cmakedefine HAVE_TYPE_TRAITS 1

/*
 * Define if the compiler supports simple visibility declarations.
 */
#cmakedefine HAVE_VISIBILITY 1

/*
 * Define if the compiler supports GCC's atomic memory access builtins
 */
#cmakedefine HAVE_GCC_ATOMIC_BUILTINS 1

/*
 * Define if compiler's visibility support in libstdc++ is broken
 */
#cmakedefine HAVE_BROKEN_LIBSTDCXX_VISIBILITY

/*
 * The built-in regex supports advanced REs in additional to POSIX's basic
 * and extended. Your system regex probably won't support this, and in this
 * case WX_NO_REGEX_ADVANCED should be defined.
 */
#cmakedefine WX_NO_REGEX_ADVANCED 1
/*
 * On GNU systems use re_search instead of regexec, since the latter does a
 * strlen on the search text affecting the performance of some operations.
 */
#cmakedefine HAVE_RE_SEARCH
/*
 * Use SDL for audio (Unix)
 */
#cmakedefine01 wxUSE_LIBSDL

/*
 * Compile sound backends as plugins
 */
#cmakedefine01 wxUSE_PLUGINS

/*
 * Use GTK print for printing under GTK+ 2.10+
 */
#cmakedefine01 wxUSE_GTKPRINT
/*
 * Use GNOME VFS for MIME types
 */
#cmakedefine01 wxUSE_LIBGNOMEVFS
/*
 * Use the Hildon framework
 */
#cmakedefine01 wxUSE_LIBHILDON
/*
 * Use the Hildon 2.0 framework
 */
#cmakedefine01 wxUSE_LIBHILDON2
/*
 * Use libnotify library.
 */
#cmakedefine01 wxUSE_LIBNOTIFY
/*
 * Use libnotify 0.7+ API.
 */
#cmakedefine01 wxUSE_LIBNOTIFY_0_7
/*
 * Use libXpm
 */
#cmakedefine01 wxHAVE_LIB_XPM
/*
 * Define if you have pthread_cleanup_push/pop()
 */
#cmakedefine wxHAVE_PTHREAD_CLEANUP 1
/*
 * Define if compiler has __thread keyword.
 */
#cmakedefine HAVE___THREAD_KEYWORD 1
/*
 * Define if large (64 bit file offsets) files are supported.
 */
#cmakedefine HAVE_LARGEFILE_SUPPORT 1

/*
 * Use OpenGL
 */
#cmakedefine01 wxUSE_OPENGL

/*
 * Use MS HTML Help via libmspack (Unix)
 */
#cmakedefine01 wxUSE_LIBMSPACK

/*
 * Matthews garbage collection (used for MrEd?)
 */
#cmakedefine01 WXGARBAGE_COLLECTION_ON

/*
 * wxWebKitCtrl
 */
#cmakedefine01 wxUSE_WEBKIT

/*
 * Objective-C class name uniquifying
 */
#cmakedefine01 wxUSE_OBJC_UNIQUIFYING

/*
 * The const keyword is being introduced more in wxWindows.
 * You can use this setting to maintain backward compatibility.
 * If 0: will use const wherever possible.
 * If 1: will use const only where necessary
 *       for precompiled headers to work.
 * If 2: will be totally backward compatible, but precompiled
 *       headers may not work and program size will be larger.
 */
#cmakedefine01 CONST_COMPATIBILITY

/*
 * use the session manager to detect KDE/GNOME
 */
#cmakedefine01 wxUSE_DETECT_SM


/* define with the name of timezone variable */
#cmakedefine WX_TIMEZONE ${WX_TIMEZONE}

/* The type of 3rd argument to getsockname() - usually size_t or int */
#cmakedefine WX_SOCKLEN_T ${WX_SOCKLEN_T}

/* The type of 5th argument to getsockopt() - usually size_t or int */
#cmakedefine SOCKOPTLEN_T ${SOCKOPTLEN_T}

/* The type of statvfs(2) argument */
#cmakedefine WX_STATFS_T ${WX_STATFS_T}

/* The signal handler prototype */
#cmakedefine wxTYPE_SA_HANDLER ${wxTYPE_SA_HANDLER}

/* gettimeofday() usually takes 2 arguments, but some really old systems might
 * have only one, in which case define WX_GETTIMEOFDAY_NO_TZ */
#cmakedefine WX_GETTIMEOFDAY_NO_TZ

/* struct tm doesn't always have the tm_gmtoff field, define this if it does */
#cmakedefine WX_GMTOFF_IN_TM 1

/* Define if you have poll(2) function */
#cmakedefine HAVE_POLL 1

/* Define if you have pw_gecos field in struct passwd */
#cmakedefine HAVE_PW_GECOS 1

/* Define if you have __cxa_demangle() in <cxxabi.h> */
#cmakedefine HAVE_CXA_DEMANGLE 1

/* Define if you have dlopen() */
#cmakedefine HAVE_DLOPEN 1

/* Define if you have gettimeofday() */
#cmakedefine HAVE_GETTIMEOFDAY 1

/* Define if fsync() is available */
#cmakedefine HAVE_FSYNC 1

/* Define if round() is available */
#cmakedefine HAVE_ROUND 1

/* Define if you have ftime() */
#cmakedefine HAVE_FTIME 1

/* Define if you have nanosleep() */
#cmakedefine HAVE_NANOSLEEP 1

/* Define if you have sched_yield */
#cmakedefine HAVE_SCHED_YIELD 1

/* Define if you have pthread_mutexattr_t and functions to work with it */
#cmakedefine HAVE_PTHREAD_MUTEXATTR_T 1

/* Define if you have pthread_mutexattr_settype() declaration */
#cmakedefine HAVE_PTHREAD_MUTEXATTR_SETTYPE_DECL 1

/* Define if you have PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP */
#cmakedefine HAVE_PTHREAD_RECURSIVE_MUTEX_INITIALIZER 1

/* Define if you have pthread_cancel */
#cmakedefine HAVE_PTHREAD_CANCEL 1

/* Define if you have pthread_mutex_timedlock */
#cmakedefine HAVE_PTHREAD_MUTEX_TIMEDLOCK 1

/* Define if you have pthread_attr_setstacksize */
#cmakedefine HAVE_PTHREAD_ATTR_SETSTACKSIZE 1

/* Define if you have shl_load() */
#cmakedefine HAVE_SHL_LOAD 1

/* Define if you have snprintf() */
#cmakedefine HAVE_SNPRINTF 1

/* Define if you have snprintf() declaration in the header */
#cmakedefine HAVE_SNPRINTF_DECL 1

/* Define if you have a snprintf() which supports positional arguments
   (defined in the unix98 standard) */
#cmakedefine HAVE_UNIX98_PRINTF 1

/* define if you have statfs function */
#cmakedefine HAVE_STATFS 1

/* define if you have statfs prototype */
#cmakedefine HAVE_STATFS_DECL 1

/* define if you have statvfs function */
#cmakedefine HAVE_STATVFS 1

/* Define if you have strtoull() and strtoll() */
#cmakedefine HAVE_STRTOULL 1

/* Define if you have all functions to set thread priority */
#cmakedefine HAVE_THREAD_PRIORITY_FUNCTIONS 1

/* Define if you have vsnprintf() */
#cmakedefine HAVE_VSNPRINTF 1

/* Define if you have vsnprintf() declaration in the header */
#cmakedefine HAVE_VSNPRINTF_DECL 1

/* Define if you have a _broken_ vsnprintf() declaration in the header,
 * with 'char*' for the 3rd parameter instead of 'const char*' */
#cmakedefine HAVE_BROKEN_VSNPRINTF_DECL

/* Define if you have vsscanf() */
#cmakedefine HAVE_VSSCANF 1

/* Define if you have vsscanf() declaration in the header */
#cmakedefine HAVE_VSSCANF_DECL 1

/* Define if you have usleep() */
#cmakedefine HAVE_USLEEP 1

/* Define if you have wcscasecmp() function  */
#cmakedefine HAVE_WCSCASECMP 1

/* Define if you have wcsncasecmp() function  */
#cmakedefine HAVE_WCSNCASECMP 1

/* Define if you have wcslen function  */
#cmakedefine HAVE_WCSLEN 1

/* Define if you have wcsdup function  */
#cmakedefine HAVE_WCSDUP 1

/* Define if you have wcsftime() function  */
#cmakedefine HAVE_WCSFTIME 1

/* Define if you have strnlen() function */
#cmakedefine HAVE_STRNLEN 1

/* Define if you have wcsnlen() function */
#cmakedefine HAVE_WCSNLEN 1

/* Define if you have wcstoull() and wcstoll() */
#cmakedefine HAVE_WCSTOULL 1

/* The number of bytes in a wchar_t.  */
#cmakedefine SIZEOF_WCHAR_T ${SIZEOF_WCHAR_T}

/* The number of bytes in a int.  */
#cmakedefine SIZEOF_INT ${SIZEOF_INT}

/* The number of bytes in a pointer.  */
#cmakedefine SIZEOF_VOID_P ${SIZEOF_VOID_P}

/* The number of bytes in a long.  */
#cmakedefine SIZEOF_LONG ${SIZEOF_LONG}

/* The number of bytes in a long long.  */
#cmakedefine SIZEOF_LONG_LONG ${SIZEOF_LONG_LONG}

/* The number of bytes in a short.  */
#cmakedefine SIZEOF_SHORT ${SIZEOF_SHORT}

/* The number of bytes in a size_t.  */
#cmakedefine SIZEOF_SIZE_T ${SIZEOF_SIZE_T}

/* Define if size_t on your machine is the same type as unsigned int. */
#cmakedefine wxSIZE_T_IS_UINT 1

/* Define if size_t on your machine is the same type as unsigned long. */
#cmakedefine wxSIZE_T_IS_ULONG 1

/* Define if wchar_t is distinct type in your compiler. */
#cmakedefine wxWCHAR_T_IS_REAL_TYPE 1

/* Define if you have the dlerror function.  */
#cmakedefine HAVE_DLERROR 1

/* Define if you have Posix fnctl() function. */
#cmakedefine HAVE_FCNTL 1

/* Define if you have BSD flock() function. */
#cmakedefine HAVE_FLOCK 1

/* Define if you have getaddrinfo function. */
#cmakedefine HAVE_GETADDRINFO 1

/* Define if you have a gethostbyname_r function taking 6 arguments. */
#cmakedefine HAVE_FUNC_GETHOSTBYNAME_R_6 1

/* Define if you have a gethostbyname_r function taking 5 arguments. */
#cmakedefine HAVE_FUNC_GETHOSTBYNAME_R_5 1

/* Define if you have a gethostbyname_r function taking 3 arguments. */
#cmakedefine HAVE_FUNC_GETHOSTBYNAME_R_3 1

/* Define if you only have a gethostbyname function */
#cmakedefine HAVE_GETHOSTBYNAME 1

/* Define if you have the gethostname function.  */
#cmakedefine HAVE_GETHOSTNAME 1

/* Define if you have a getservbyname_r function taking 6 arguments. */
#cmakedefine HAVE_FUNC_GETSERVBYNAME_R_6 1

/* Define if you have a getservbyname_r function taking 5 arguments. */
#cmakedefine HAVE_FUNC_GETSERVBYNAME_R_5 1

/* Define if you have a getservbyname_r function taking 4 arguments. */
#cmakedefine HAVE_FUNC_GETSERVBYNAME_R_4 1

/* Define if you only have a getservbyname function */
#cmakedefine HAVE_GETSERVBYNAME 1

/* Define if you have the gmtime_r function.  */
#cmakedefine HAVE_GMTIME_R 1

/* Define if you have the inet_addr function.  */
#cmakedefine HAVE_INET_ADDR 1

/* Define if you have the inet_aton function.  */
#cmakedefine HAVE_INET_ATON 1

/* Define if you have the localtime_r function.  */
#cmakedefine HAVE_LOCALTIME_R 1

/* Define if you have the mktemp function.  */
#cmakedefine HAVE_MKTEMP 1

/* Define if you have the mkstemp function.  */
#cmakedefine HAVE_MKSTEMP 1

/* Define if you have the putenv function.  */
#cmakedefine HAVE_PUTENV 1

/* Define if you have the setenv function.  */
#cmakedefine HAVE_SETENV

/* Define if you have strtok_r function. */
#cmakedefine HAVE_STRTOK_R 1

/* Define if you have thr_setconcurrency function */
#cmakedefine HAVE_THR_SETCONCURRENCY 1

/* Define if you have pthread_setconcurrency function */
#cmakedefine HAVE_PTHREAD_SET_CONCURRENCY 1

/* Define if you have the uname function.  */
#cmakedefine HAVE_UNAME 1

/* Define if you have the unsetenv function.  */
#cmakedefine HAVE_UNSETENV 1

/* Define if you have the <X11/XKBlib.h> header file.  */
#cmakedefine HAVE_X11_XKBLIB_H

/* Define if you have the <X11/extensions/xf86vmode.h> header file.  */
#cmakedefine HAVE_X11_EXTENSIONS_XF86VMODE_H 1

/* Define if you have the <sched.h> header file.  */
#cmakedefine HAVE_SCHED_H 1

/* Define if you have the <unistd.h> header file.  */
#cmakedefine HAVE_UNISTD_H 1

/* Define if you have the <fcntl.h> header file.  */
#cmakedefine HAVE_FCNTL_H 1

/* Define if you have the <wchar.h> header file.  */
#cmakedefine HAVE_WCHAR_H 1

/* Define if you have the <wcstr.h> header file.  */
#cmakedefine HAVE_WCSTR_H 1

/* Define if you have <widec.h> (Solaris only) */
#cmakedefine HAVE_WIDEC_H 1

/* Define if you have the <iconv.h> header file and iconv() symbol.  */
#cmakedefine HAVE_ICONV 1

/* Define as "const" if the declaration of iconv() needs const.  */
#cmakedefine ICONV_CONST 1

/* Define if you have the <langinfo.h> header file.  */
#cmakedefine HAVE_LANGINFO_H 1

/* Define if you have the <w32api.h> header file (mingw,cygwin).  */
#cmakedefine HAVE_W32API_H 1

/* Define if you have the <sys/soundcard.h> header file. */
#cmakedefine HAVE_SYS_SOUNDCARD_H 1

/* Define if you have wcsrtombs() function */
#cmakedefine HAVE_WCSRTOMBS 1

/* Define this if you have putws() */
#cmakedefine HAVE_PUTWS 1

/* Define this if you have fputws() */
#cmakedefine HAVE_FPUTWS 1

/* Define this if you have wprintf() and related functions */
#cmakedefine HAVE_WPRINTF 1

/* Define this if you have vswprintf() and related functions */
#cmakedefine HAVE_VSWPRINTF 1

/* Define this if you have _vsnwprintf */
#cmakedefine HAVE__VSNWPRINTF 1

/* vswscanf() */
#cmakedefine HAVE_VSWSCANF 1

/* Define if fseeko and ftello are available.  */
#cmakedefine HAVE_FSEEKO 1

/* Define this if you are using gtk and gdk contains support for X11R6 XIM */
#cmakedefine HAVE_XIM 1

/* Define this if you have X11/extensions/shape.h */
#cmakedefine HAVE_XSHAPE 1

/* Define this if you have type SPBCDATA */
#cmakedefine HAVE_SPBCDATA 1

/* Define if you have pango_font_family_is_monospace() (Pango >= 1.3.3) */
#cmakedefine HAVE_PANGO_FONT_FAMILY_IS_MONOSPACE 1

/* Define if you have Pango xft support */
#cmakedefine HAVE_PANGO_XFT 1

/* Define if you have the <sys/select.h> header file.  */
#cmakedefine HAVE_SYS_SELECT_H 1

/* Define if you have abi::__forced_unwind in your <cxxabi.h>. */
#cmakedefine HAVE_ABI_FORCEDUNWIND 1

/* Define if fdopen is available.  */
#cmakedefine HAVE_FDOPEN 1

/* Define if sysconf is available. */
#cmakedefine HAVE_SYSCONF 1

/* Define if getpwuid_r is available. */
#cmakedefine HAVE_GETPWUID_R 1

/* Define if getgrgid_r is available. */
#cmakedefine HAVE_GETGRGID_R 1

/* Define if setpriority() is available. */
#cmakedefine HAVE_SETPRIORITY 1

/* Define if locale_t is available */
#cmakedefine HAVE_LOCALE_T 1

/* Define if you have inotify_xxx() functions. */
#cmakedefine wxHAS_INOTIFY 1

/* Define if you have kqueu_xxx() functions. */
#cmakedefine wxHAS_KQUEUE 1

/* -------------------------------------------------------------------------
   Win32 adjustments section
   ------------------------------------------------------------------------- */

#ifdef __WIN32__

/* When using an external jpeg library and the Windows headers already define
 * boolean, define to the type used by the jpeg library for boolean.  */
#cmakedefine wxHACK_BOOLEAN

/* Define if the header pbt.h is missing.  */
#cmakedefine NEED_PBT_H 1

#endif /* __WIN32__ */

/* --------------------------------------------------------*
 *  This stuff is static, it doesn't get modified directly
 *  by configure.
*/

/*
   define some constants identifying wxWindows version in more details than
   just the version number
 */

/* wxLogChain class available */
#define wxHAS_LOG_CHAIN

/* define this when wxDC::Blit() respects SetDeviceOrigin() in wxGTK */
#cmakedefine wxHAS_WORKING_GTK_DC_BLIT

#endif /* __WX_SETUP_H__ */

