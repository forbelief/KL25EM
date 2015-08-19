#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\printf.c"
/*
 * File:        printk.c
 * Purpose:     The standard C library routine printf()
 */

#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：arm_cm4.h
 * 描述         ：工程模版实验
 *
 * 实验平台     ：landzo电子开发版
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：landzo 蓝电子
 * 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/




//1．芯片寄存器映射文件及处理器内核属性文件
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/*
** ###################################################################
**     Processors:          MKL25Z128FM4
**                          MKL25Z128FT4
**                          MKL25Z128LH4
**                          MKL25Z128VLK4
**
**     Compilers:           ARM Compiler
**                          Freescale C/C++ for Embedded ARM
**                          GNU C Compiler
**                          IAR ANSI C/C++ Compiler for ARM
**
**     Reference manual:    KL25RM, Rev.1, Jun 2012
**     Version:             rev. 1.2, 2012-06-21
**
**     Abstract:
**         This header file implements peripheral memory map for MKL25Z4
**         processor.
**
**     Copyright: 1997 - 2012 Freescale Semiconductor, Inc. All Rights Reserved.
**
**     http:                 www.freescale.com
**     mail:                 support@freescale.com
**
**     Revisions:
**     - rev. 1.0 (2012-05-17)
**         Initial version.
**     - rev. 1.1 (2012-06-08)
**         Update according to reference manual rev. 0, draft B.
**     - rev. 1.2 (2012-06-21)
**         Update according to reference manual rev. 1.
**
** ###################################################################
*/

/**
 * @file MKL25Z4.h
 * @version 1.2
 * @date 2012-06-21
 * @brief Peripheral memory map for MKL25Z4
 *
 * This header file implements peripheral memory map for MKL25Z4 processor.
 */


/* ----------------------------------------------------------------------------
   -- MCU activation
   ---------------------------------------------------------------------------- */

/* Prevention from multiple including the same memory map */



/* Check if another memory map has not been also included */





#line 1 "D:\\IAR1\\arm\\inc\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */




  #pragma system_include


#line 1 "D:\\IAR1\\arm\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "D:\\IAR1\\arm\\inc\\c\\ycheck.h"




/* A definiton for a function of what effects it has.
   NS  = no_state, i.e. it uses no internal or external state. It may write
         to errno though
   NE  = no_state, no_errno,  i.e. it uses no internal or external state,
         not even writing to errno. 
   NRx = no_read(x), i.e. it doesn't read through pointer parameter x.
   NWx = no_write(x), i.e. it doesn't write through pointer parameter x.
*/

#line 99 "D:\\IAR1\\arm\\inc\\c\\ycheck.h"









#line 11 "D:\\IAR1\\arm\\inc\\c\\stdint.h"
#line 1 "D:\\IAR1\\arm\\inc\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */





  #pragma system_include


#line 1 "D:\\IAR1\\arm\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "D:\\IAR1\\arm\\inc\\c\\ycheck.h"

#line 12 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* Convenience macros */









/* Used to refer to '__aeabi' symbols in the library. */ 


                /* Versions */










/*
 * Support for some C99 or other symbols
 *
 * This setting makes available some macros, functions, etc that are
 * beneficial.
 *
 * Default is to include them.
 *
 * Disabling this in C++ mode will not compile (some C++ functions uses C99
 * functionality).
 */


  /* Default turned on when compiling C++, EC++, or C99. */
#line 59 "D:\\IAR1\\arm\\inc\\c\\yvals.h"





#line 70 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* Configuration */
#line 1 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"
/***************************************************
 *
 * DLib_Defaults.h is the library configuration manager.
 *
 * Copyright 2003-2010 IAR Systems AB.  
 *
 * This configuration header file performs the following tasks:
 *
 * 1. Includes the configuration header file, defined by _DLIB_CONFIG_FILE,
 *    that sets up a particular runtime environment.
 *
 * 2. Includes the product configuration header file, DLib_Product.h, that
 *    specifies default values for the product and makes sure that the
 *    configuration is valid.
 *
 * 3. Sets up default values for all remaining configuration symbols.
 *
 * This configuration header file, the one defined by _DLIB_CONFIG_FILE, and
 * DLib_Product.h configures how the runtime environment should behave. This
 * includes all system headers and the library itself, i.e. all system headers
 * includes this configuration header file, and the library has been built
 * using this configuration header file.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/* Include the main configuration header file. */
#line 1 "D:\\IAR1\\arm\\INC\\c\\DLib_Config_Normal.h"
/* Customer-specific DLib configuration. */
/* Copyright (C) 2003 IAR Systems.  All rights reserved. */





  #pragma system_include


/* No changes to the defaults. */

#line 40 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"
  /* _DLIB_CONFIG_FILE_STRING is the quoted variant of above */
#line 47 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"

/* Include the product specific header file. */
#line 1 "D:\\IAR1\\arm\\inc\\c\\DLib_Product.h"




   #pragma system_include



/*********************************************************************
*
*       Configuration
*
*********************************************************************/

/* Wide character and multi byte character support in library.
 * This is not allowed to vary over configurations, since math-library
 * is built with wide character support.
 */


/* ARM uses the large implementation of DLib */


/* This ensures that the standard header file "string.h" includes
 * the Arm-specific file "DLib_Product_string.h". */


/* This ensures that the standard header file "fenv.h" includes
 * the Arm-specific file "DLib_Product_fenv.h". */


/* Max buffer used for swap in qsort */




/* Enable system locking  */
#line 45 "D:\\IAR1\\arm\\inc\\c\\DLib_Product.h"

/* Enable AEABI support */


/* Enable rtmodel for setjump buffer size */


/* Enable parsing of hex floats */






/* Special placement for locale structures when building ropi libraries */




/* CPP-library uses software floatingpoint interface */


/* Use speedy implementation of floats (simple quad). */


/* Configure generic ELF init routines. */
#line 99 "D:\\IAR1\\arm\\inc\\c\\DLib_Product.h"







#line 51 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"



/*
 * The remainder of the file sets up defaults for a number of
 * configuration symbols, each corresponds to a feature in the
 * libary.
 *
 * The value of the symbols should either be 1, if the feature should
 * be supported, or 0 if it shouldn't. (Except where otherwise
 * noted.)
 */


/*
 * Small or Large target
 *
 * This define determines whether the target is large or small. It must be 
 * setup in the DLib_Product header or in the compiler itself.
 *
 * For a small target some functionality in the library will not deliver 
 * the best available results. For instance the _accurate variants will not use
 * the extra precision packet for large arguments.
 * 
 */







/*
 * File handling
 *
 * Determines whether FILE descriptors and related functions exists or not.
 * When this feature is selected, i.e. set to 1, then FILE descriptors and
 * related functions (e.g. fprintf, fopen) exist. All files, even stdin,
 * stdout, and stderr will then be handled with a file system mechanism that
 * buffers files before accessing the lowlevel I/O interface (__open, __read,
 * __write, etc).
 *
 * If not selected, i.e. set to 0, then FILE descriptors and related functions
 * (e.g. fprintf, fopen) does not exist. All functions that normally uses
 * stderr will use stdout instead. Functions that uses stdout and stdin (like
 * printf and scanf) will access the lowlevel I/O interface directly (__open,
 * __read, __write, etc), i.e. there will not be any buffering.
 *
 * The default is not to have support for FILE descriptors.
 */





/*
 * Use static buffers for stdout
 *
 * This setting controls whether the stream stdout uses a static 80 bytes
 * buffer or uses a one byte buffer allocated in the file descriptor. This
 * setting is only applicable if the FILE descriptors are enabled above.
 *
 * Default is to use a static 80 byte buffer.
 */





/*
 * Support of locale interface
 *
 * "Locale" is the system in C that support language- and
 * contry-specific settings for a number of areas, including currency
 * symbols, date and time, and multibyte encodings.
 *
 * This setting determines whether the locale interface exist or not.
 * When this feature is selected, i.e. set to 1, the locale interface exist
 * (setlocale, etc). A number of preselected locales can be activated during
 * runtime. The preselected locales and encodings is choosen by defining any
 * number of _LOCALE_USE_xxx and _ENCODING_USE_xxx symbols. The application
 * will start with the "C" locale choosen. (Single byte encoding is always
 * supported in this mode.)
 *
 *
 * If not selected, i.e. set to 0, the locale interface (setlocale, etc) does
 * not exist. One preselected locale and one preselected encoding is then used
 * directly. That locale can not be changed during runtime. The preselected
 * locale and encoding is choosen by defining at most one of _LOCALE_USE_xxx
 * and at most one of _ENCODING_USE_xxx. The default is to use the "C" locale
 * and the single byte encoding, respectively.
 *
 * The default is not to have support for the locale interface with the "C"
 * locale and the single byte encoding.
 *
 * Supported locales
 * -----------------
 * _LOCALE_USE_C                  C standard locale (the default)
 * _LOCALE_USE_POSIX ISO-8859-1   Posix locale
 * _LOCALE_USE_CS_CZ ISO-8859-2   Czech language locale for Czech Republic
 * _LOCALE_USE_DA_DK ISO-8859-1   Danish language locale for Denmark
 * _LOCALE_USE_DA_EU ISO-8859-15  Danish language locale for Europe
 * _LOCALE_USE_DE_AT ISO-8859-1   German language locale for Austria
 * _LOCALE_USE_DE_BE ISO-8859-1   German language locale for Belgium
 * _LOCALE_USE_DE_CH ISO-8859-1   German language locale for Switzerland
 * _LOCALE_USE_DE_DE ISO-8859-1   German language locale for Germany
 * _LOCALE_USE_DE_EU ISO-8859-15  German language locale for Europe
 * _LOCALE_USE_DE_LU ISO-8859-1   German language locale for Luxemburg
 * _LOCALE_USE_EL_EU ISO-8859-7x  Greek language locale for Europe
 *                                (Euro symbol added)
 * _LOCALE_USE_EL_GR ISO-8859-7   Greek language locale for Greece
 * _LOCALE_USE_EN_AU ISO-8859-1   English language locale for Australia
 * _LOCALE_USE_EN_CA ISO-8859-1   English language locale for Canada
 * _LOCALE_USE_EN_DK ISO_8859-1   English language locale for Denmark
 * _LOCALE_USE_EN_EU ISO-8859-15  English language locale for Europe
 * _LOCALE_USE_EN_GB ISO-8859-1   English language locale for United Kingdom
 * _LOCALE_USE_EN_IE ISO-8859-1   English language locale for Ireland
 * _LOCALE_USE_EN_NZ ISO-8859-1   English language locale for New Zealand
 * _LOCALE_USE_EN_US ISO-8859-1   English language locale for USA
 * _LOCALE_USE_ES_AR ISO-8859-1   Spanish language locale for Argentina
 * _LOCALE_USE_ES_BO ISO-8859-1   Spanish language locale for Bolivia
 * _LOCALE_USE_ES_CL ISO-8859-1   Spanish language locale for Chile
 * _LOCALE_USE_ES_CO ISO-8859-1   Spanish language locale for Colombia
 * _LOCALE_USE_ES_DO ISO-8859-1   Spanish language locale for Dominican Republic
 * _LOCALE_USE_ES_EC ISO-8859-1   Spanish language locale for Equador
 * _LOCALE_USE_ES_ES ISO-8859-1   Spanish language locale for Spain
 * _LOCALE_USE_ES_EU ISO-8859-15  Spanish language locale for Europe
 * _LOCALE_USE_ES_GT ISO-8859-1   Spanish language locale for Guatemala
 * _LOCALE_USE_ES_HN ISO-8859-1   Spanish language locale for Honduras
 * _LOCALE_USE_ES_MX ISO-8859-1   Spanish language locale for Mexico
 * _LOCALE_USE_ES_PA ISO-8859-1   Spanish language locale for Panama
 * _LOCALE_USE_ES_PE ISO-8859-1   Spanish language locale for Peru
 * _LOCALE_USE_ES_PY ISO-8859-1   Spanish language locale for Paraguay
 * _LOCALE_USE_ES_SV ISO-8859-1   Spanish language locale for Salvador
 * _LOCALE_USE_ES_US ISO-8859-1   Spanish language locale for USA
 * _LOCALE_USE_ES_UY ISO-8859-1   Spanish language locale for Uruguay
 * _LOCALE_USE_ES_VE ISO-8859-1   Spanish language locale for Venezuela
 * _LOCALE_USE_ET_EE ISO-8859-1   Estonian language for Estonia
 * _LOCALE_USE_EU_ES ISO-8859-1   Basque language locale for Spain
 * _LOCALE_USE_FI_EU ISO-8859-15  Finnish language locale for Europe
 * _LOCALE_USE_FI_FI ISO-8859-1   Finnish language locale for Finland
 * _LOCALE_USE_FO_FO ISO-8859-1   Faroese language locale for Faroe Islands
 * _LOCALE_USE_FR_BE ISO-8859-1   French language locale for Belgium
 * _LOCALE_USE_FR_CA ISO-8859-1   French language locale for Canada
 * _LOCALE_USE_FR_CH ISO-8859-1   French language locale for Switzerland
 * _LOCALE_USE_FR_EU ISO-8859-15  French language locale for Europe
 * _LOCALE_USE_FR_FR ISO-8859-1   French language locale for France
 * _LOCALE_USE_FR_LU ISO-8859-1   French language locale for Luxemburg
 * _LOCALE_USE_GA_EU ISO-8859-15  Irish language locale for Europe
 * _LOCALE_USE_GA_IE ISO-8859-1   Irish language locale for Ireland
 * _LOCALE_USE_GL_ES ISO-8859-1   Galician language locale for Spain
 * _LOCALE_USE_HR_HR ISO-8859-2   Croatian language locale for Croatia
 * _LOCALE_USE_HU_HU ISO-8859-2   Hungarian language locale for Hungary
 * _LOCALE_USE_ID_ID ISO-8859-1   Indonesian language locale for Indonesia
 * _LOCALE_USE_IS_EU ISO-8859-15  Icelandic language locale for Europe
 * _LOCALE_USE_IS_IS ISO-8859-1   Icelandic language locale for Iceland
 * _LOCALE_USE_IT_EU ISO-8859-15  Italian language locale for Europe
 * _LOCALE_USE_IT_IT ISO-8859-1   Italian language locale for Italy
 * _LOCALE_USE_IW_IL ISO-8859-8   Hebrew language locale for Israel
 * _LOCALE_USE_KL_GL ISO-8859-1   Greenlandic language locale for Greenland
 * _LOCALE_USE_LT_LT   BALTIC     Lithuanian languagelocale for Lithuania
 * _LOCALE_USE_LV_LV   BALTIC     Latvian languagelocale for Latvia
 * _LOCALE_USE_NL_BE ISO-8859-1   Dutch language locale for Belgium
 * _LOCALE_USE_NL_EU ISO-8859-15  Dutch language locale for Europe
 * _LOCALE_USE_NL_NL ISO-8859-9   Dutch language locale for Netherlands
 * _LOCALE_USE_NO_EU ISO-8859-15  Norwegian language locale for Europe
 * _LOCALE_USE_NO_NO ISO-8859-1   Norwegian language locale for Norway
 * _LOCALE_USE_PL_PL ISO-8859-2   Polish language locale for Poland
 * _LOCALE_USE_PT_BR ISO-8859-1   Portugese language locale for Brazil
 * _LOCALE_USE_PT_EU ISO-8859-15  Portugese language locale for Europe
 * _LOCALE_USE_PT_PT ISO-8859-1   Portugese language locale for Portugal
 * _LOCALE_USE_RO_RO ISO-8859-2   Romanian language locale for Romania
 * _LOCALE_USE_RU_RU ISO-8859-5   Russian language locale for Russia
 * _LOCALE_USE_SL_SI ISO-8859-2   Slovenian language locale for Slovenia
 * _LOCALE_USE_SV_EU ISO-8859-15  Swedish language locale for Europe
 * _LOCALE_USE_SV_FI ISO-8859-1   Swedish language locale for Finland
 * _LOCALE_USE_SV_SE ISO-8859-1   Swedish language locale for Sweden
 * _LOCALE_USE_TR_TR ISO-8859-9   Turkish language locale for Turkey
 *
 *  Supported encodings
 *  -------------------
 * n/a                            Single byte (used if no other is defined).
 * _ENCODING_USE_UTF8             UTF8 encoding.
 */






/* We need to have the "C" locale if we have full locale support. */






/*
 * Support of multibytes in printf- and scanf-like functions
 *
 * This is the default value for _DLIB_PRINTF_MULTIBYTE and
 * _DLIB_SCANF_MULTIBYTE. See them for a description.
 *
 * Default is to not have support for multibytes in printf- and scanf-like
 * functions.
 */






/*
 * Throw handling in the EC++ library
 *
 * This setting determines what happens when the EC++ part of the library
 * fails (where a normal C++ library 'throws').
 *
 * The following alternatives exists (setting of the symbol):
 * 0                - The application does nothing, i.e. continues with the
 *                    next statement.
 * 1                - The application terminates by calling the 'abort'
 *                    function directly.
 * <anything else>  - An object of class "exception" is created.  This
 *                    object contains a string describing the problem.
 *                    This string is later emitted on "stderr" before
 *                    the application terminates by calling the 'abort'
 *                    function directly.
 *
 * Default is to do nothing.
 */






/*
 * Hexadecimal floating-point numbers in strtod
 *
 * If selected, i.e. set to 1, strtod supports C99 hexadecimal floating-point
 * numbers. This also enables hexadecimal floating-points in internal functions
 * used for converting strings and wide strings to float, double, and long
 * double.
 *
 * If not selected, i.e. set to 0, C99 hexadecimal floating-point numbers
 * aren't supported.
 *
 * Default is not to support hexadecimal floating-point numbers.
 */






/*
 * Printf configuration symbols.
 *
 * All the configuration symbols described further on controls the behaviour
 * of printf, sprintf, and the other printf variants.
 *
 * The library proves four formatters for printf: 'tiny', 'small',
 * 'large', and 'default'.  The setup in this file controls all except
 * 'tiny'.  Note that both small' and 'large' explicitly removes
 * some features.
 */

/*
 * Handle multibytes in printf
 *
 * This setting controls whether multibytes and wchar_ts are supported in
 * printf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * Long long formatting in printf
 *
 * This setting controls long long support (%lld) in printf. Set to 1 to
 * support it, otherwise set to 0.

 * Note, if long long should not be supported and 'intmax_t' is larger than
 * an ordinary 'long', then %jd and %jn will not be supported.
 *
 * Default is to support long long formatting.
 */

#line 351 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"






/*
 * Floating-point formatting in printf
 *
 * This setting controls whether printf supports floating-point formatting.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting.
 */





/*
 * Hexadecimal floating-point formatting in printf
 *
 * This setting controls whether the %a format, i.e. the output of
 * floating-point numbers in the C99 hexadecimal format. Set to 1 to support
 * it, otherwise set to 0.
 *
 * Default is to support %a in printf.
 */





/*
 * Output count formatting in printf
 *
 * This setting controls whether the output count specifier (%n) is supported
 * or not in printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support %n in printf.
 */





/*
 * Support of qualifiers in printf
 *
 * This setting controls whether qualifiers that enlarges the input value
 * [hlLjtz] is supported in printf or not. Set to 1 to support them, otherwise
 * set to 0. See also _DLIB_PRINTF_INT_TYPE_IS_INT and
 * _DLIB_PRINTF_INT_TYPE_IS_LONG.
 *
 * Default is to support [hlLjtz] qualifiers in printf.
 */





/*
 * Support of flags in printf
 *
 * This setting controls whether flags (-+ #0) is supported in printf or not.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support flags in printf.
 */





/*
 * Support widths and precisions in printf
 *
 * This setting controls whether widths and precisions are supported in printf.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support widths and precisions in printf.
 */





/*
 * Support of unsigned integer formatting in printf
 *
 * This setting controls whether unsigned integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in printf.
 */





/*
 * Support of signed integer formatting in printf
 *
 * This setting controls whether signed integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support signed integer formatting in printf.
 */





/*
 * Support of formatting anything larger than int in printf
 *
 * This setting controls if 'int' should be used internally in printf, rather
 * than the largest existing integer type. If 'int' is used, any integer or
 * pointer type formatting use 'int' as internal type even though the
 * formatted type is larger. Set to 1 to use 'int' as internal type, otherwise
 * set to 0.
 *
 * See also next configuration.
 *
 * Default is to internally use largest existing internally type.
 */





/*
 * Support of formatting anything larger than long in printf
 *
 * This setting controls if 'long' should be used internally in printf, rather
 * than the largest existing integer type. If 'long' is used, any integer or
 * pointer type formatting use 'long' as internal type even though the
 * formatted type is larger. Set to 1 to use 'long' as internal type,
 * otherwise set to 0.
 *
 * See also previous configuration.
 *
 * Default is to internally use largest existing internally type.
 */









/*
 * Emit a char a time in printf
 *
 * This setting controls internal output handling. If selected, i.e. set to 1,
 * then printf emits one character at a time, which requires less code but
 * can be slightly slower for some types of output.
 *
 * If not selected, i.e. set to 0, then printf buffers some outputs.
 *
 * Note that it is recommended to either use full file support (see
 * _DLIB_FILE_DESCRIPTOR) or -- for debug output -- use the linker
 * option "-e__write_buffered=__write" to enable buffered I/O rather
 * than deselecting this feature.
 */






/*
 * Scanf configuration symbols.
 *
 * All the configuration symbols described here controls the
 * behaviour of scanf, sscanf, and the other scanf variants.
 *
 * The library proves three formatters for scanf: 'small', 'large',
 * and 'default'.  The setup in this file controls all, however both
 * 'small' and 'large' explicitly removes some features.
 */

/*
 * Handle multibytes in scanf
 *
 * This setting controls whether multibytes and wchar_t:s are supported in
 * scanf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default.
 */





/*
 * Long long formatting in scanf
 *
 * This setting controls whether scanf supports long long support (%lld). It
 * also controls, if 'intmax_t' is larger than an ordinary 'long', i.e. how
 * the %jd and %jn specifiers behaves. Set to 1 to support them, otherwise set
 * to 0.
 *
 * Default is to support long long formatting in scanf.
 */

#line 566 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"





/*
 * Support widths in scanf
 *
 * This controls whether scanf supports widths. Set to 1 to support them,
 * otherwise set to 0.
 *
 * Default is to support widths in scanf.
 */





/*
 * Support qualifiers [hjltzL] in scanf
 *
 * This setting controls whether scanf supports qualifiers [hjltzL] or not. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support qualifiers in scanf.
 */





/*
 * Support floating-point formatting in scanf
 *
 * This setting controls whether scanf supports floating-point formatting. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting in scanf.
 */





/*
 * Support output count formatting (%n)
 *
 * This setting controls whether scanf supports output count formatting (%n).
 * Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support output count formatting in scanf.
 */





/*
 * Support scansets ([]) in scanf
 *
 * This setting controls whether scanf supports scansets ([]) or not. Set to 1
 * to support them, otherwise set to 0.
 *
 * Default is to support scansets in scanf.
 */





/*
 * Support signed integer formatting in scanf
 *
 * This setting controls whether scanf supports signed integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support signed integer formatting in scanf.
 */





/*
 * Support unsigned integer formatting in scanf
 *
 * This setting controls whether scanf supports unsigned integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in scanf.
 */





/*
 * Support assignment suppressing [*] in scanf
 *
 * This setting controls whether scanf supports assignment suppressing [*] or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support assignment suppressing in scanf.
 */





/*
 * Handle multibytes in asctime and strftime.
 *
 * This setting controls whether multibytes and wchar_ts are
 * supported.Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * True if "qsort" should be implemented using bubble sort.
 *
 * Bubble sort is less efficient than quick sort but requires less RAM
 * and ROM resources.
 */





/*
 * Set Buffert size used in qsort
 */





/*
 * The default "rand" function uses an array of 32 long:s of memory to
 * store the current state.
 *
 * The simple "rand" function uses only a single long. However, the
 * quality of the generated psuedo-random numbers are not as good as
 * the default implementation.
 */





/*
 * Wide character and multi byte character support in library.
 */





/*
 * Set attributes on the function used by the C-SPY debug interface to set a
 * breakpoint in.
 */





/*
 * Support threading in the library
 *
 * 0    No thread support
 * 1    Thread support with a, b, and d.
 * 2    Thread support with a, b, and e.
 * 3    Thread support with all thread-local storage in a dynamically allocated
 *        memory area and a, and b.
 *      a. Lock on heap accesses
 *      b. Optional lock on file accesses (see _DLIB_FILE_OP_LOCKS below)
 *      d. Use an external thread-local storage interface for all the
 *         libraries static and global variables.
 *      e. Static and global variables aren't safe for access from several
 *         threads.
 *
 * Note that if locks are used the following symbols must be defined:
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * They will be used to initialize the needed locks only once. TYPE is the
 * type for the static control variable, MACRO is the expression that will be
 * evaluated at each usage of a lock, and INIT is the initializer for the
 * control variable.
 *
 * Note that if thread model 3 is used the symbol _DLIB_TLS_POINTER must be
 * defined. It is a thread local pointer to a dynamic memory area that
 * contains all used TLS variables for the library. Optionally the following
 * symbols can be defined as well (default is to use the default const data
 * and data memories):
 *
 *   _DLIB_TLS_INITIALIZER_MEMORY The memory to place the initializers for the
 *                                TLS memory area
 *   _DLIB_TLS_MEMORY             The memory to use for the TLS memory area. A
 *                                pointer to this memory must be castable to a
 *                                default pointer and back.
 *   _DLIB_TLS_REQUIRE_INIT       Set to 1 to require __cstart_init_tls
 *                                when needed to initialize the TLS data
 *                                segment for the main thread.
 *   _DLIB_TLS_SEGMENT_DATA       The name of the TLS RAM data segment
 *   _DLIB_TLS_SEGMENT_INIT       The name of the used to initialize the
 *                                TLS data segment.
 *
 * See DLib_Threads.h for a description of what interfaces needs to be
 * defined for thread support.
 */





/*
 * Used by products where one runtime library can be used by applications
 * with different data models, in order to reduce the total number of
 * libraries required. Typically, this is used when the pointer types does
 * not change over the data models used, but the placement of data variables
 * or/and constant variables do.
 *
 * If defined, this symbol is typically defined to the memory attribute that
 * is used by the runtime library. The actual define must use a
 * _Pragma("type_attribute = xxx") construct. In the header files, it is used
 * on all statically linked data objects seen by the application.
 */




#line 812 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"


/*
 * Turn on support for the Target-specific ABI. The ABI is based on the
 * ARM AEABI. A target, except ARM, may deviate from it.
 */

#line 826 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"


  /* Possible AEABI deviations */
#line 836 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"

#line 844 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"
  /*
   * The "difunc" table contains information about C++ objects that
   * should be dynamically initialized, where each entry in the table
   * represents an initialization function that should be called. When
   * the symbol _DLIB_AEABI_DIFUNC_CONTAINS_OFFSETS is true, each
   * entry in the table is encoded as an offset from the entry
   * location. When false, the entries contain the actual addresses to
   * call.
   */






/*
 * Turn on usage of a pragma to tell the linker the number of elements used
 * in a setjmp jmp_buf.
 */





/*
 * If true, the product supplies a "DLib_Product_string.h" file that
 * is included from "string.h".
 */





/*
 * Determine whether the math fma routines are fast or not.
 */




/*
 * Rtti support.
 */

#line 899 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"

/*
 * Use the "pointers to short" or "pointers to long" implementation of 
 * the basic floating point routines (like Dnorm, Dtest, Dscale, and Dunscale).
 */




/*
 * Use 64-bit long long as intermediary type in Dtest, and fabs.
 * Default is to do this if long long is 64-bits.
 */




/*
 * Favor speed versus some size enlargements in floating point functions.
 */




/*
 * Include dlmalloc as an alternative heap manager in product.
 *
 * Typically, an application will use a "malloc" heap manager that is
 * relatively small but not that efficient. An application can
 * optionally use the "dlmalloc" package, which provides a more
 * effective "malloc" heap manager, if it is included in the product
 * and supported by the settings.
 *
 * See the product documentation on how to use it, and whether or not
 * it is included in the product.
 */

  /* size_t/ptrdiff_t must be a 4 bytes unsigned integer. */
#line 943 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"





/*
 * Allow the 64-bit time_t interface?
 *
 * Default is yes if long long is 64 bits.
 */

  #pragma language = save 
  #pragma language = extended





  #pragma language = restore






/*
 * Is time_t 64 or 32 bits?
 *
 * Default is 32 bits.
 */




/*
 * Do we include math functions that demands lots of constant bytes?
 * (like erf, erfc, expm1, fma, lgamma, tgamma, and *_accurate)
 *
 */




/*
 * Set this to __weak, if supported.
 *
 */
#line 997 "D:\\IAR1\\arm\\inc\\c\\DLib_Defaults.h"


/*
 * Deleted options
 *
 */







#line 73 "D:\\IAR1\\arm\\inc\\c\\yvals.h"











                /* Floating-point */

/*
 * Whenever a floating-point type is equal to another, we try to fold those
 * two types into one. This means that if float == double then we fold float to
 * use double internally. Example sinf(float) will use _Sin(double, uint).
 *
 * _X_FNAME is a redirector for internal support routines. The X can be
 *          D (double), F (float), or L (long double). It redirects by using
 *          another prefix. Example calls to Dtest will be __iar_Dtest,
 *          __iar_FDtest, or __iarLDtest.
 * _X_FUN   is a redirector for functions visible to the customer. As above, the
 *          X can be D, F, or L. It redirects by using another suffix. Example
 *          calls to sin will be sin, sinf, or sinl.
 * _X_TYPE  The type that one type is folded to.
 * _X_PTRCAST is a redirector for a cast operation involving a pointer.
 * _X_CAST  is a redirector for a cast involving the float type.
 *
 * _FLOAT_IS_DOUBLE signals that all internal float routines aren't needed.
 * _LONG_DOUBLE_IS_DOUBLE signals that all internal long double routines
 *                        aren't needed.
 */
#line 147 "D:\\IAR1\\arm\\inc\\c\\yvals.h"





                /* NAMING PROPERTIES */


/* Has support for fixed point types */




/* Has support for secure functions (printf_s, scanf_s, etc) */
/* Will not compile if enabled */
#line 170 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

/* Has support for complex C types */




/* If is Embedded C++ language */






/* If is true C++ language */






/* True C++ language setup */
#line 233 "D:\\IAR1\\arm\\inc\\c\\yvals.h"











                /* NAMESPACE CONTROL */
#line 292 "D:\\IAR1\\arm\\inc\\c\\yvals.h"









#line 308 "D:\\IAR1\\arm\\inc\\c\\yvals.h"








#line 1 "D:\\IAR1\\arm\\inc\\c\\xencoding_limits.h"
/* xencoding_limits.h internal header file */
/* Copyright 2003-2010 IAR Systems AB.  */





  #pragma system_include


#line 1 "D:\\IAR1\\arm\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "D:\\IAR1\\arm\\inc\\c\\ycheck.h"

#line 12 "D:\\IAR1\\arm\\inc\\c\\xencoding_limits.h"
#line 1 "D:\\IAR1\\arm\\inc\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */

#line 707 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 13 "D:\\IAR1\\arm\\inc\\c\\xencoding_limits.h"

                                /* Multibyte encoding length. */


#line 24 "D:\\IAR1\\arm\\inc\\c\\xencoding_limits.h"




#line 42 "D:\\IAR1\\arm\\inc\\c\\xencoding_limits.h"

                                /* Utility macro */














#line 317 "D:\\IAR1\\arm\\inc\\c\\yvals.h"



                /* FLOATING-POINT PROPERTIES */

                /* float properties */
#line 335 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* double properties */
#line 360 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* long double properties */
                /* (must be same as double) */




#line 382 "D:\\IAR1\\arm\\inc\\c\\yvals.h"


                /* INTEGER PROPERTIES */

                                /* MB_LEN_MAX */







  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore
#line 405 "D:\\IAR1\\arm\\inc\\c\\yvals.h"






  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;


#line 424 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

#line 432 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* POINTER PROPERTIES */


typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

/* IAR doesn't support restrict  */


                /* stdarg PROPERTIES */
#line 454 "D:\\IAR1\\arm\\inc\\c\\yvals.h"
  typedef _VA_LIST __Va_list;



__intrinsic __nounwind void __iar_Atexit(void (*)(void));



  typedef struct
  {       /* state of a multibyte translation */
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;
#line 477 "D:\\IAR1\\arm\\inc\\c\\yvals.h"










typedef struct
{       /* file position */

  _Longlong _Off;    /* can be system dependent */



  _Mbstatet _Wstate;
} _Fpost;







                /* THREAD AND LOCALE CONTROL */

#line 1 "D:\\IAR1\\arm\\inc\\c\\DLib_Threads.h"
/***************************************************
 *
 * DLib_Threads.h is the library threads manager.
 *
 * Copyright 2004-2010 IAR Systems AB.  
 *
 * This configuration header file sets up how the thread support in the library
 * should work.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/*
 * DLib can support a multithreaded environment. The preprocessor symbol 
 * _DLIB_THREAD_SUPPORT governs the support. It can be 0 (no support), 
 * 1 (currently not supported), 2 (locks only), and 3 (simulated TLS and locks).
 */

/*
 * This header sets the following symbols that governs the rest of the
 * library:
 * ------------------------------------------
 * _DLIB_MULTI_THREAD     0 No thread support
 *                        1 Multithread support
 * _DLIB_GLOBAL_VARIABLES 0 Use external TLS interface for the libraries global
 *                          and static variables
 *                        1 Use a lock for accesses to the locale and no 
 *                          security for accesses to other global and static
 *                          variables in the library
 * _DLIB_FILE_OP_LOCKS    0 No file-atomic locks
 *                        1 File-atomic locks

 * _DLIB_COMPILER_TLS     0 No Thread-Local-Storage support in the compiler
 *                        1 Thread-Local-Storage support in the compiler
 * _DLIB_TLS_QUAL         The TLS qualifier, define only if _COMPILER_TLS == 1
 *
 * _DLIB_THREAD_MACRO_SETUP_DONE Whether to use the standard definitions of
 *                               TLS macros defined in xtls.h or the definitions
 *                               are provided here.
 *                        0 Use default macros
 *                        1 Macros defined for xtls.h
 *
 * _DLIB_THREAD_LOCK_ONCE_TYPE
 *                        type for control variable in once-initialization of 
 *                        locks
 * _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *                        expression that will be evaluated at each lock access
 *                        to determine if an initialization must be done
 * _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *                        initial value for the control variable
 *
 ****************************************************************************
 * Description
 * -----------
 *
 * If locks are to be used (_DLIB_MULTI_THREAD != 0), the following options
 * has to be used in ilink: 
 *   --redirect __iar_Locksyslock=__iar_Locksyslock_mtx
 *   --redirect __iar_Unlocksyslock=__iar_Unlocksyslock_mtx
 *   --redirect __iar_Lockfilelock=__iar_Lockfilelock_mtx
 *   --redirect __iar_Unlockfilelock=__iar_Unlockfilelock_mtx
 *   --keep     __iar_Locksyslock_mtx
 * and, if C++ is used, also:
 *   --redirect __iar_Initdynamicfilelock=__iar_Initdynamicfilelock_mtx
 *   --redirect __iar_Dstdynamicfilelock=__iar_Dstdynamicfilelock_mtx
 *   --redirect __iar_Lockdynamicfilelock=__iar_Lockdynamicfilelock_mtx
 *   --redirect __iar_Unlockdynamicfilelock=__iar_Unlockdynamicfilelock_mtx
 * Xlink uses similar options (-e and -g). The following lock interface must
 * also be implemented: 
 *   typedef void *__iar_Rmtx;                   // Lock info object
 *
 *   void __iar_system_Mtxinit(__iar_Rmtx *);    // Initialize a system lock
 *   void __iar_system_Mtxdst(__iar_Rmtx *);     // Destroy a system lock
 *   void __iar_system_Mtxlock(__iar_Rmtx *);    // Lock a system lock
 *   void __iar_system_Mtxunlock(__iar_Rmtx *);  // Unlock a system lock
 * The interface handles locks for the heap, the locale, the file system
 * structure, the initialization of statics in functions, etc. 
 *
 * The following lock interface is optional to be implemented:
 *   void __iar_file_Mtxinit(__iar_Rmtx *);    // Initialize a file lock
 *   void __iar_file_Mtxdst(__iar_Rmtx *);     // Destroy a file lock
 *   void __iar_file_Mtxlock(__iar_Rmtx *);    // Lock a file lock
 *   void __iar_file_Mtxunlock(__iar_Rmtx *);  // Unlock a file lock
 * The interface handles locks for each file stream.
 * 
 * These three once-initialization symbols must also be defined, if the 
 * default initialization later on in this file doesn't work (done in 
 * DLib_product.h):
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * If an external TLS interface is used, the following must
 * be defined:
 *   typedef int __iar_Tlskey_t;
 *   typedef void (*__iar_Tlsdtor_t)(void *);
 *   int __iar_Tlsalloc(__iar_Tlskey_t *, __iar_Tlsdtor_t); 
 *                                                    // Allocate a TLS element
 *   int __iar_Tlsfree(__iar_Tlskey_t);               // Free a TLS element
 *   int __iar_Tlsset(__iar_Tlskey_t, void *);        // Set a TLS element
 *   void *__iar_Tlsget(__iar_Tlskey_t);              // Get a TLS element
 *
 */

/* We don't have a compiler that supports tls declarations */



#line 157 "D:\\IAR1\\arm\\inc\\c\\DLib_Threads.h"

  /* Thread support, library supports threaded variables in a user specified
     memory area, locks on heap and on FILE */

  /* See Documentation/ThreadsInternal.html for a description. */





  


#line 176 "D:\\IAR1\\arm\\inc\\c\\DLib_Threads.h"





#line 187 "D:\\IAR1\\arm\\inc\\c\\DLib_Threads.h"





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);









  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 


























#line 242 "D:\\IAR1\\arm\\inc\\c\\DLib_Threads.h"

  /* The thread-local variable access function */
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore



























    /* Make sure that each destructor is inserted into _Deallocate_TLS */
  









  /* Internal function declarations. */






  





  
  typedef void *__iar_Rmtx;
  

  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  /* Function to destroy the locks. Should be called after atexit and 
     _Close_all. */
  __intrinsic __nounwind void __iar_clearlocks(void);


#line 323 "D:\\IAR1\\arm\\inc\\c\\DLib_Threads.h"

  





  

#line 341 "D:\\IAR1\\arm\\inc\\c\\DLib_Threads.h"

  typedef unsigned _Once_t;



  













#line 506 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

#line 516 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* THREAD-LOCAL STORAGE */
#line 524 "D:\\IAR1\\arm\\inc\\c\\yvals.h"


                /* MULTITHREAD PROPERTIES */

  
  
  /* The lock interface for DLib to use. */ 
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  
#line 564 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* LOCK MACROS */
#line 572 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

#line 690 "D:\\IAR1\\arm\\inc\\c\\yvals.h"

                /* MISCELLANEOUS MACROS AND FUNCTIONS*/





#line 705 "D:\\IAR1\\arm\\inc\\c\\yvals.h"



/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 12 "D:\\IAR1\\arm\\inc\\c\\stdint.h"


/* Fixed size types. These are all optional. */

  typedef signed char   int8_t;
  typedef unsigned char uint8_t;



  typedef signed short int   int16_t;
  typedef unsigned short int uint16_t;



  typedef signed int   int32_t;
  typedef unsigned int uint32_t;



  #pragma language=save
  #pragma language=extended
  typedef signed long long int   int64_t;
  typedef unsigned long long int uint64_t;
  #pragma language=restore


/* Types capable of holding at least a certain number of bits.
   These are not optional for the sizes 8, 16, 32, 64. */
typedef signed char   int_least8_t;
typedef unsigned char uint_least8_t;

typedef signed short int   int_least16_t;
typedef unsigned short int uint_least16_t;

typedef signed int   int_least32_t;
typedef unsigned int uint_least32_t;

/* This isn't really optional, but make it so for now. */

  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_least64_t;
  #pragma language=restore


  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_least64_t;
  #pragma language=restore


/* The fastest type holding at least a certain number of bits.
   These are not optional for the size 8, 16, 32, 64.
   For now, the 64 bit size is optional in IAR compilers. */
typedef signed int   int_fast8_t;
typedef unsigned int uint_fast8_t;

typedef signed int   int_fast16_t;
typedef unsigned int uint_fast16_t;

typedef signed int   int_fast32_t;
typedef unsigned int uint_fast32_t;


  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_fast64_t;
  #pragma language=restore


  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_fast64_t;
  #pragma language=restore


/* The integer type capable of holding the largest number of bits. */
#pragma language=save
#pragma language=extended
typedef signed long long int   intmax_t;
typedef unsigned long long int uintmax_t;
#pragma language=restore

/* An integer type large enough to be able to hold a pointer.
   This is optional, but always supported in IAR compilers. */
typedef signed long int   intptr_t;
typedef unsigned long int uintptr_t;

/* An integer capable of holding a pointer to a specific memory type. */



typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;


/* Minimum and maximum limits. */






























































































/* Macros expanding to integer constants. */

































#line 258 "D:\\IAR1\\arm\\inc\\c\\stdint.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 61 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/** Memory map major version (memory maps with equal major version number are
 * compatible) */

/** Memory map minor version */



/* ----------------------------------------------------------------------------
   -- Interrupt vector numbers
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup Interrupt_vector_numbers Interrupt vector numbers
 * @{
 */

/** Interrupt Number Definitions */
typedef enum {
  INT_Initial_Stack_Pointer    = 0,                /**< Initial stack pointer */
  INT_Initial_Program_Counter  = 1,                /**< Initial program counter */
  INT_NMI                      = 2,                /**< Non-maskable interrupt */
  INT_Hard_Fault               = 3,                /**< Hard fault exception */
  INT_Reserved4                = 4,                /**< Reserved interrupt 4 */
  INT_Reserved5                = 5,                /**< Reserved interrupt 5 */
  INT_Reserved6                = 6,                /**< Reserved interrupt 6 */
  INT_Reserved7                = 7,                /**< Reserved interrupt 7 */
  INT_Reserved8                = 8,                /**< Reserved interrupt 8 */
  INT_Reserved9                = 9,                /**< Reserved interrupt 9 */
  INT_Reserved10               = 10,               /**< Reserved interrupt 10 */
  INT_SVCall                   = 11,               /**< A supervisor call exception */
  INT_Reserved12               = 12,               /**< Reserved interrupt 12 */
  INT_Reserved13               = 13,               /**< Reserved interrupt 13 */
  INT_PendableSrvReq           = 14,               /**< PendSV exception - request for system level service */
  INT_SysTick                  = 15,               /**< SysTick interrupt */
  INT_DMA0                     = 16,               /**< DMA channel 0 transfer complete/error interrupt */
  INT_DMA1                     = 17,               /**< DMA channel 1 transfer complete/error interrupt */
  INT_DMA2                     = 18,               /**< DMA channel 2 transfer complete/error interrupt */
  INT_DMA3                     = 19,               /**< DMA channel 3 transfer complete/error interrupt */
  INT_Reserved20               = 20,               /**< Reserved interrupt 20 */
  INT_FTFA                     = 21,               /**< FTFA command complete/read collision interrupt */
  INT_LVD_LVW                  = 22,               /**< Low Voltage Detect, Low Voltage Warning */
  INT_LLW                      = 23,               /**< Low Leakage Wakeup */
  INT_I2C0                     = 24,               /**< I2C0 interrupt */
  INT_I2C1                     = 25,               /**< I2C0 interrupt 25 */
  INT_SPI0                     = 26,               /**< SPI0 interrupt */
  INT_SPI1                     = 27,               /**< SPI1 interrupt */
  INT_UART0                    = 28,               /**< UART0 status/error interrupt */
  INT_UART1                    = 29,               /**< UART1 status/error interrupt */
  INT_UART2                    = 30,               /**< UART2 status/error interrupt */
  INT_ADC0                     = 31,               /**< ADC0 interrupt */
  INT_CMP0                     = 32,               /**< CMP0 interrupt */
  INT_TPM0                     = 33,               /**< TPM0 fault, overflow and channels interrupt */
  INT_TPM1                     = 34,               /**< TPM1 fault, overflow and channels interrupt */
  INT_TPM2                     = 35,               /**< TPM2 fault, overflow and channels interrupt */
  INT_RTC                      = 36,               /**< RTC interrupt */
  INT_RTC_Seconds              = 37,               /**< RTC seconds interrupt */
  INT_PIT                      = 38,               /**< PIT timer interrupt */
  INT_Reserved39               = 39,               /**< Reserved interrupt 39 */
  INT_USB0                     = 40,               /**< USB0 interrupt */
  INT_DAC0                     = 41,               /**< DAC0 interrupt */
  INT_TSI0                     = 42,               /**< TSI0 interrupt */
  INT_MCG                      = 43,               /**< MCG interrupt */
  INT_LPTimer                  = 44,               /**< LPTimer interrupt */
  INT_Reserved45               = 45,               /**< Reserved interrupt 45 */
  INT_PORTA                    = 46,               /**< Port A interrupt */
  INT_PORTD                    = 47                /**< Port D interrupt */
} IRQInterruptIndex;

/**
 * @}
 */ /* end of group Interrupt_vector_numbers */


/* ----------------------------------------------------------------------------
   -- Peripheral type defines
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup Peripheral_defines Peripheral type defines
 * @{
 */


/*
** Start of section using anonymous unions
*/

#line 158 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
  #pragma language=extended




/* ----------------------------------------------------------------------------
   -- ADC
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ADC_Peripheral ADC
 * @{
 */

/** ADC - Peripheral register structure */
typedef struct ADC_MemMap {
  uint32_t SC1[2];                                 /**< ADC Status and Control Registers 1, array offset: 0x0, array step: 0x4 */
  uint32_t CFG1;                                   /**< ADC Configuration Register 1, offset: 0x8 */
  uint32_t CFG2;                                   /**< ADC Configuration Register 2, offset: 0xC */
  uint32_t R[2];                                   /**< ADC Data Result Register, array offset: 0x10, array step: 0x4 */
  uint32_t CV1;                                    /**< Compare Value Registers, offset: 0x18 */
  uint32_t CV2;                                    /**< Compare Value Registers, offset: 0x1C */
  uint32_t SC2;                                    /**< Status and Control Register 2, offset: 0x20 */
  uint32_t SC3;                                    /**< Status and Control Register 3, offset: 0x24 */
  uint32_t OFS;                                    /**< ADC Offset Correction Register, offset: 0x28 */
  uint32_t PG;                                     /**< ADC Plus-Side Gain Register, offset: 0x2C */
  uint32_t MG;                                     /**< ADC Minus-Side Gain Register, offset: 0x30 */
  uint32_t CLPD;                                   /**< ADC Plus-Side General Calibration Value Register, offset: 0x34 */
  uint32_t CLPS;                                   /**< ADC Plus-Side General Calibration Value Register, offset: 0x38 */
  uint32_t CLP4;                                   /**< ADC Plus-Side General Calibration Value Register, offset: 0x3C */
  uint32_t CLP3;                                   /**< ADC Plus-Side General Calibration Value Register, offset: 0x40 */
  uint32_t CLP2;                                   /**< ADC Plus-Side General Calibration Value Register, offset: 0x44 */
  uint32_t CLP1;                                   /**< ADC Plus-Side General Calibration Value Register, offset: 0x48 */
  uint32_t CLP0;                                   /**< ADC Plus-Side General Calibration Value Register, offset: 0x4C */
  uint8_t RESERVED_0[4];
  uint32_t CLMD;                                   /**< ADC Minus-Side General Calibration Value Register, offset: 0x54 */
  uint32_t CLMS;                                   /**< ADC Minus-Side General Calibration Value Register, offset: 0x58 */
  uint32_t CLM4;                                   /**< ADC Minus-Side General Calibration Value Register, offset: 0x5C */
  uint32_t CLM3;                                   /**< ADC Minus-Side General Calibration Value Register, offset: 0x60 */
  uint32_t CLM2;                                   /**< ADC Minus-Side General Calibration Value Register, offset: 0x64 */
  uint32_t CLM1;                                   /**< ADC Minus-Side General Calibration Value Register, offset: 0x68 */
  uint32_t CLM0;                                   /**< ADC Minus-Side General Calibration Value Register, offset: 0x6C */
} volatile *ADC_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- ADC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ADC_Register_Accessor_Macros ADC - Register accessor macros
 * @{
 */


/* ADC - Register accessors */
#line 238 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group ADC_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- ADC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ADC_Register_Masks ADC Register Masks
 * @{
 */

/* SC1 Bit Fields */
#line 263 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CFG1 Bit Fields */
#line 277 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CFG2 Bit Fields */
#line 287 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* R Bit Fields */



/* CV1 Bit Fields */



/* CV2 Bit Fields */



/* SC2 Bit Fields */
#line 315 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SC3 Bit Fields */
#line 327 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* OFS Bit Fields */



/* PG Bit Fields */



/* MG Bit Fields */



/* CLPD Bit Fields */



/* CLPS Bit Fields */



/* CLP4 Bit Fields */



/* CLP3 Bit Fields */



/* CLP2 Bit Fields */



/* CLP1 Bit Fields */



/* CLP0 Bit Fields */



/* CLMD Bit Fields */



/* CLMS Bit Fields */



/* CLM4 Bit Fields */



/* CLM3 Bit Fields */



/* CLM2 Bit Fields */



/* CLM1 Bit Fields */



/* CLM0 Bit Fields */




/**
 * @}
 */ /* end of group ADC_Register_Masks */


/* ADC - Peripheral instance base addresses */
/** Peripheral ADC0 base pointer */

/** Array initializer of ADC peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- ADC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ADC_Register_Accessor_Macros ADC - Register accessor macros
 * @{
 */


/* ADC - Register instance definitions */
/* ADC0 */
#line 446 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* ADC - Register array accessors */



/**
 * @}
 */ /* end of group ADC_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group ADC_Peripheral */


/* ----------------------------------------------------------------------------
   -- BP
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup BP_Peripheral BP
 * @{
 */

/** BP - Peripheral register structure */
typedef struct BP_MemMap {
  uint32_t CTRL;                                   /**< FlashPatch Control Register, offset: 0x0 */
  uint8_t RESERVED_0[4];
  uint32_t COMP[2];                                /**< FlashPatch Comparator Register 0..FlashPatch Comparator Register 1, array offset: 0x8, array step: 0x4 */
  uint8_t RESERVED_1[4032];
  uint32_t PID4;                                   /**< Peripheral Identification Register 4., offset: 0xFD0 */
  uint32_t PID5;                                   /**< Peripheral Identification Register 5., offset: 0xFD4 */
  uint32_t PID6;                                   /**< Peripheral Identification Register 6., offset: 0xFD8 */
  uint32_t PID7;                                   /**< Peripheral Identification Register 7., offset: 0xFDC */
  uint32_t PID0;                                   /**< Peripheral Identification Register 0., offset: 0xFE0 */
  uint32_t PID1;                                   /**< Peripheral Identification Register 1., offset: 0xFE4 */
  uint32_t PID2;                                   /**< Peripheral Identification Register 2., offset: 0xFE8 */
  uint32_t PID3;                                   /**< Peripheral Identification Register 3., offset: 0xFEC */
  uint32_t CID0;                                   /**< Component Identification Register 0., offset: 0xFF0 */
  uint32_t CID1;                                   /**< Component Identification Register 1., offset: 0xFF4 */
  uint32_t CID2;                                   /**< Component Identification Register 2., offset: 0xFF8 */
  uint32_t CID3;                                   /**< Component Identification Register 3., offset: 0xFFC */
} volatile *BP_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- BP - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup BP_Register_Accessor_Macros BP - Register accessor macros
 * @{
 */


/* BP - Register accessors */
#line 515 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group BP_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- BP Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup BP_Register_Masks BP Register Masks
 * @{
 */


/**
 * @}
 */ /* end of group BP_Register_Masks */


/* BP - Peripheral instance base addresses */
/** Peripheral BP base pointer */

/** Array initializer of BP peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- BP - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup BP_Register_Accessor_Macros BP - Register accessor macros
 * @{
 */


/* BP - Register instance definitions */
/* BP */
#line 569 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* BP - Register array accessors */


/**
 * @}
 */ /* end of group BP_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group BP_Peripheral */


/* ----------------------------------------------------------------------------
   -- CMP
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMP_Peripheral CMP
 * @{
 */

/** CMP - Peripheral register structure */
typedef struct CMP_MemMap {
  uint8_t CR0;                                     /**< CMP Control Register 0, offset: 0x0 */
  uint8_t CR1;                                     /**< CMP Control Register 1, offset: 0x1 */
  uint8_t FPR;                                     /**< CMP Filter Period Register, offset: 0x2 */
  uint8_t SCR;                                     /**< CMP Status and Control Register, offset: 0x3 */
  uint8_t DACCR;                                   /**< DAC Control Register, offset: 0x4 */
  uint8_t MUXCR;                                   /**< MUX Control Register, offset: 0x5 */
} volatile *CMP_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- CMP - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMP_Register_Accessor_Macros CMP - Register accessor macros
 * @{
 */


/* CMP - Register accessors */
#line 619 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group CMP_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- CMP Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMP_Register_Masks CMP Register Masks
 * @{
 */

/* CR0 Bit Fields */
#line 641 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CR1 Bit Fields */
#line 658 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FPR Bit Fields */



/* SCR Bit Fields */
#line 675 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* DACCR Bit Fields */
#line 683 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* MUXCR Bit Fields */
#line 692 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group CMP_Register_Masks */


/* CMP - Peripheral instance base addresses */
/** Peripheral CMP0 base pointer */

/** Array initializer of CMP peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- CMP - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CMP_Register_Accessor_Macros CMP - Register accessor macros
 * @{
 */


/* CMP - Register instance definitions */
/* CMP0 */
#line 722 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group CMP_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group CMP_Peripheral */


/* ----------------------------------------------------------------------------
   -- CoreDebug
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CoreDebug_Peripheral CoreDebug
 * @{
 */

/** CoreDebug - Peripheral register structure */
typedef struct CoreDebug_MemMap {
  union {                                          /* offset: 0x0 */
    uint32_t base_DHCSR_Read;                        /**< Debug Halting Control and Status Register, offset: 0x0 */
    uint32_t base_DHCSR_Write;                       /**< Debug Halting Control and Status Register, offset: 0x0 */
  };
  uint32_t base_DCRSR;                             /**< Debug Core Register Selector Register, offset: 0x4 */
  uint32_t base_DCRDR;                             /**< Debug Core Register Data Register, offset: 0x8 */
  uint32_t base_DEMCR;                             /**< Debug Exception and Monitor Control Register, offset: 0xC */
} volatile *CoreDebug_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- CoreDebug - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CoreDebug_Register_Accessor_Macros CoreDebug - Register accessor macros
 * @{
 */


/* CoreDebug - Register accessors */






/**
 * @}
 */ /* end of group CoreDebug_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- CoreDebug Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CoreDebug_Register_Masks CoreDebug Register Masks
 * @{
 */


/**
 * @}
 */ /* end of group CoreDebug_Register_Masks */


/* CoreDebug - Peripheral instance base addresses */
/** Peripheral CoreDebug base pointer */

/** Array initializer of CoreDebug peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- CoreDebug - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup CoreDebug_Register_Accessor_Macros CoreDebug - Register accessor macros
 * @{
 */


/* CoreDebug - Register instance definitions */
/* CoreDebug */






/**
 * @}
 */ /* end of group CoreDebug_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group CoreDebug_Peripheral */


/* ----------------------------------------------------------------------------
   -- DAC
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DAC_Peripheral DAC
 * @{
 */

/** DAC - Peripheral register structure */
typedef struct DAC_MemMap {
  struct {                                         /* offset: 0x0, array step: 0x2 */
    uint8_t DATL;                                    /**< DAC Data Low Register, array offset: 0x0, array step: 0x2 */
    uint8_t DATH;                                    /**< DAC Data High Register, array offset: 0x1, array step: 0x2 */
  } DAT[2];
  uint8_t RESERVED_0[28];
  uint8_t SR;                                      /**< DAC Status Register, offset: 0x20 */
  uint8_t C0;                                      /**< DAC Control Register, offset: 0x21 */
  uint8_t C1;                                      /**< DAC Control Register 1, offset: 0x22 */
  uint8_t C2;                                      /**< DAC Control Register 2, offset: 0x23 */
} volatile *DAC_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- DAC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DAC_Register_Accessor_Macros DAC - Register accessor macros
 * @{
 */


/* DAC - Register accessors */
#line 863 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group DAC_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- DAC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DAC_Register_Masks DAC Register Masks
 * @{
 */

/* DATL Bit Fields */



/* DATH Bit Fields */



/* SR Bit Fields */




/* C0 Bit Fields */
#line 906 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C1 Bit Fields */
#line 913 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C2 Bit Fields */





/**
 * @}
 */ /* end of group DAC_Register_Masks */


/* DAC - Peripheral instance base addresses */
/** Peripheral DAC0 base pointer */

/** Array initializer of DAC peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- DAC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DAC_Register_Accessor_Macros DAC - Register accessor macros
 * @{
 */


/* DAC - Register instance definitions */
/* DAC0 */
#line 950 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* DAC - Register array accessors */



/**
 * @}
 */ /* end of group DAC_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group DAC_Peripheral */


/* ----------------------------------------------------------------------------
   -- DMA
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMA_Peripheral DMA
 * @{
 */

/** DMA - Peripheral register structure */
typedef struct DMA_MemMap {
  union {                                          /* offset: 0x0 */
    uint8_t REQC_ARR[4];                             /**< DMA_REQC0 register...DMA_REQC3 register., array offset: 0x0, array step: 0x1 */
  };
  uint8_t RESERVED_0[252];
  struct {                                         /* offset: 0x100, array step: 0x10 */
    uint32_t SAR;                                    /**< Source Address Register, array offset: 0x100, array step: 0x10 */
    uint32_t DAR;                                    /**< Destination Address Register, array offset: 0x104, array step: 0x10 */
    union {                                          /* offset: 0x108, array step: 0x10 */
      uint32_t DSR_BCR;                                /**< DMA Status Register / Byte Count Register, array offset: 0x108, array step: 0x10 */
      struct {                                         /* offset: 0x108, array step: 0x10 */
        uint8_t RESERVED_0[3];
        uint8_t DSR;                                     /**< DMA_DSR0 register...DMA_DSR3 register., array offset: 0x10B, array step: 0x10 */
      } DMA_DSR_ACCESS8BIT;
    };
    uint32_t DCR;                                    /**< DMA Control Register, array offset: 0x10C, array step: 0x10 */
  } DMA[4];
} volatile *DMA_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- DMA - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMA_Register_Accessor_Macros DMA - Register accessor macros
 * @{
 */


/* DMA - Register accessors */
#line 1011 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group DMA_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- DMA Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMA_Register_Masks DMA Register Masks
 * @{
 */

/* REQC_ARR Bit Fields */





/* SAR Bit Fields */



/* DAR Bit Fields */



/* DSR_BCR Bit Fields */
#line 1056 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* DCR Bit Fields */
#line 1096 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group DMA_Register_Masks */


/* DMA - Peripheral instance base addresses */
/** Peripheral DMA base pointer */

/** Array initializer of DMA peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- DMA - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMA_Register_Accessor_Macros DMA - Register accessor macros
 * @{
 */


/* DMA - Register instance definitions */
/* DMA */
#line 1144 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* DMA - Register array accessors */
#line 1152 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group DMA_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group DMA_Peripheral */


/* ----------------------------------------------------------------------------
   -- DMAMUX
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMAMUX_Peripheral DMAMUX
 * @{
 */

/** DMAMUX - Peripheral register structure */
typedef struct DMAMUX_MemMap {
  uint8_t CHCFG[4];                                /**< Channel Configuration register, array offset: 0x0, array step: 0x1 */
} volatile *DMAMUX_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- DMAMUX - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMAMUX_Register_Accessor_Macros DMAMUX - Register accessor macros
 * @{
 */


/* DMAMUX - Register accessors */


/**
 * @}
 */ /* end of group DMAMUX_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- DMAMUX Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMAMUX_Register_Masks DMAMUX Register Masks
 * @{
 */

/* CHCFG Bit Fields */
#line 1212 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group DMAMUX_Register_Masks */


/* DMAMUX - Peripheral instance base addresses */
/** Peripheral DMAMUX0 base pointer */

/** Array initializer of DMAMUX peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- DMAMUX - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DMAMUX_Register_Accessor_Macros DMAMUX - Register accessor macros
 * @{
 */


/* DMAMUX - Register instance definitions */
/* DMAMUX0 */





/* DMAMUX - Register array accessors */


/**
 * @}
 */ /* end of group DMAMUX_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group DMAMUX_Peripheral */


/* ----------------------------------------------------------------------------
   -- DWT
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DWT_Peripheral DWT
 * @{
 */

/** DWT - Peripheral register structure */
typedef struct DWT_MemMap {
  uint32_t CTRL;                                   /**< Control Register, offset: 0x0 */
  uint8_t RESERVED_0[24];
  uint32_t PCSR;                                   /**< Program Counter Sample Register, offset: 0x1C */
  struct {                                         /* offset: 0x20, array step: 0x10 */
    uint32_t COMP;                                   /**< Comparator Register 0..Comparator Register 1, array offset: 0x20, array step: 0x10 */
    uint32_t MASK;                                   /**< Mask Register 0..Mask Register 1, array offset: 0x24, array step: 0x10 */
    uint32_t FUNCTION;                               /**< Function Register 0..Function Register 1, array offset: 0x28, array step: 0x10 */
    uint8_t RESERVED_0[4];
  } COMPARATOR[2];
} volatile *DWT_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- DWT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DWT_Register_Accessor_Macros DWT - Register accessor macros
 * @{
 */


/* DWT - Register accessors */






/**
 * @}
 */ /* end of group DWT_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- DWT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DWT_Register_Masks DWT Register Masks
 * @{
 */


/**
 * @}
 */ /* end of group DWT_Register_Masks */


/* DWT - Peripheral instance base addresses */
/** Peripheral DWT base pointer */

/** Array initializer of DWT peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- DWT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup DWT_Register_Accessor_Macros DWT - Register accessor macros
 * @{
 */


/* DWT - Register instance definitions */
/* DWT */
#line 1339 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* DWT - Register array accessors */




/**
 * @}
 */ /* end of group DWT_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group DWT_Peripheral */



/* ----------------------------------------------------------------------------
   -- FTFA
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTFA_Peripheral FTFA
 * @{
 */

/** FTFA - Peripheral register structure */
typedef struct FTFA_MemMap {
  uint8_t FSTAT;                                   /**< Flash Status Register, offset: 0x0 */
  uint8_t FCNFG;                                   /**< Flash Configuration Register, offset: 0x1 */
  uint8_t FSEC;                                    /**< Flash Security Register, offset: 0x2 */
  uint8_t FOPT;                                    /**< Flash Option Register, offset: 0x3 */
  uint8_t FCCOB3;                                  /**< Flash Common Command Object Registers, offset: 0x4 */
  uint8_t FCCOB2;                                  /**< Flash Common Command Object Registers, offset: 0x5 */
  uint8_t FCCOB1;                                  /**< Flash Common Command Object Registers, offset: 0x6 */
  uint8_t FCCOB0;                                  /**< Flash Common Command Object Registers, offset: 0x7 */
  uint8_t FCCOB7;                                  /**< Flash Common Command Object Registers, offset: 0x8 */
  uint8_t FCCOB6;                                  /**< Flash Common Command Object Registers, offset: 0x9 */
  uint8_t FCCOB5;                                  /**< Flash Common Command Object Registers, offset: 0xA */
  uint8_t FCCOB4;                                  /**< Flash Common Command Object Registers, offset: 0xB */
  uint8_t FCCOBB;                                  /**< Flash Common Command Object Registers, offset: 0xC */
  uint8_t FCCOBA;                                  /**< Flash Common Command Object Registers, offset: 0xD */
  uint8_t FCCOB9;                                  /**< Flash Common Command Object Registers, offset: 0xE */
  uint8_t FCCOB8;                                  /**< Flash Common Command Object Registers, offset: 0xF */
  uint8_t FPROT3;                                  /**< Program Flash Protection Registers, offset: 0x10 */
  uint8_t FPROT2;                                  /**< Program Flash Protection Registers, offset: 0x11 */
  uint8_t FPROT1;                                  /**< Program Flash Protection Registers, offset: 0x12 */
  uint8_t FPROT0;                                  /**< Program Flash Protection Registers, offset: 0x13 */
} volatile *FTFA_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- FTFA - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTFA_Register_Accessor_Macros FTFA - Register accessor macros
 * @{
 */


/* FTFA - Register accessors */
#line 1420 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group FTFA_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- FTFA Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTFA_Register_Masks FTFA Register Masks
 * @{
 */

/* FSTAT Bit Fields */
#line 1446 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FCNFG Bit Fields */
#line 1455 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FSEC Bit Fields */
#line 1468 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FOPT Bit Fields */



/* FCCOB3 Bit Fields */



/* FCCOB2 Bit Fields */



/* FCCOB1 Bit Fields */



/* FCCOB0 Bit Fields */



/* FCCOB7 Bit Fields */



/* FCCOB6 Bit Fields */



/* FCCOB5 Bit Fields */



/* FCCOB4 Bit Fields */



/* FCCOBB Bit Fields */



/* FCCOBA Bit Fields */



/* FCCOB9 Bit Fields */



/* FCCOB8 Bit Fields */



/* FPROT3 Bit Fields */



/* FPROT2 Bit Fields */



/* FPROT1 Bit Fields */



/* FPROT0 Bit Fields */




/**
 * @}
 */ /* end of group FTFA_Register_Masks */


/* FTFA - Peripheral instance base addresses */
/** Peripheral FTFA base pointer */

/** Array initializer of FTFA peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- FTFA - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FTFA_Register_Accessor_Macros FTFA - Register accessor macros
 * @{
 */


/* FTFA - Register instance definitions */
/* FTFA */
#line 1580 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group FTFA_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group FTFA_Peripheral */


/* ----------------------------------------------------------------------------
   -- GPIO
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup GPIO_Peripheral GPIO
 * @{
 */

/** GPIO - Peripheral register structure */

/** GPIO - Peripheral register structure */
typedef struct GPIO_MemMap
{
    union
    {
        uint32_t PDOR;                                   /**< Port Data Output Register, offset: 0x0 */
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint32_t PDOR0 : 1;
            uint32_t PDOR1: 1;
            uint32_t PDOR2 : 1;
            uint32_t PDOR3 : 1;
            uint32_t PDOR4 : 1;
            uint32_t PDOR5 : 1;
            uint32_t PDOR6 : 1;
            uint32_t PDOR7 : 1;
            uint32_t PDOR8 : 1;
            uint32_t PDOR9 : 1;
            uint32_t PDOR10: 1;
            uint32_t PDOR11: 1;
            uint32_t PDOR12: 1;
            uint32_t PDOR13: 1;
            uint32_t PDOR14: 1;
            uint32_t PDOR15: 1;
            uint32_t PDOR16: 1;
            uint32_t PDOR17: 1;
            uint32_t PDOR18: 1;
            uint32_t PDOR19: 1;
            uint32_t PDOR20: 1;
            uint32_t PDOR21: 1;
            uint32_t PDOR22: 1;
            uint32_t PDOR23: 1;
            uint32_t PDOR24: 1;
            uint32_t PDOR25: 1;
            uint32_t PDOR26: 1;
            uint32_t PDOR27: 1;
            uint32_t PDOR28: 1;
            uint32_t PDOR29: 1;
            uint32_t PDOR30: 1;
            uint32_t PDOR31: 1;
        } PDORs;
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint8_t Byte0;
            uint8_t Byte1;
            uint8_t Byte2;
            uint8_t Byte3;
        } PDORByte;
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint16_t Word0;
            uint16_t Word1;
        } PDORWord;
    };

    uint32_t PSOR;                                   /**< Port Set Output Register, offset: 0x4 */
    uint32_t PCOR;                                   /**< Port Clear Output Register, offset: 0x8 */
    uint32_t PTOR;                                   /**< Port Toggle Output Register, offset: 0xC */

    union
    {
        uint32_t PDIR;                                   /**< Port Data Input Register, offset: 0x10 */
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint32_t PDIR0 : 1;
            uint32_t PDIR1: 1;
            uint32_t PDIR2 : 1;
            uint32_t PDIR3 : 1;
            uint32_t PDIR4 : 1;
            uint32_t PDIR5 : 1;
            uint32_t PDIR6 : 1;
            uint32_t PDIR7 : 1;
            uint32_t PDIR8 : 1;
            uint32_t PDIR9 : 1;
            uint32_t PDIR10: 1;
            uint32_t PDIR11: 1;
            uint32_t PDIR12: 1;
            uint32_t PDIR13: 1;
            uint32_t PDIR14: 1;
            uint32_t PDIR15: 1;
            uint32_t PDIR16: 1;
            uint32_t PDIR17: 1;
            uint32_t PDIR18: 1;
            uint32_t PDIR19: 1;
            uint32_t PDIR20: 1;
            uint32_t PDIR21: 1;
            uint32_t PDIR22: 1;
            uint32_t PDIR23: 1;
            uint32_t PDIR24: 1;
            uint32_t PDIR25: 1;
            uint32_t PDIR26: 1;
            uint32_t PDIR27: 1;
            uint32_t PDIR28: 1;
            uint32_t PDIR29: 1;
            uint32_t PDIR30: 1;
            uint32_t PDIR31: 1;
        } PDIRs;
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint8_t Byte0;
            uint8_t Byte1;
            uint8_t Byte2;
            uint8_t Byte3;
        } PDIRByte;
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint16_t Word0;
            uint16_t Word1;
        } PDIRWord;
    };

    union
    {
        uint32_t PDDR;                                   /**< Port Data Direction Register, offset: 0x14 */
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint32_t DDR0 : 1;
            uint32_t DDR1: 1;
            uint32_t DDR2 : 1;
            uint32_t DDR3 : 1;
            uint32_t DDR4 : 1;
            uint32_t DDR5 : 1;
            uint32_t DDR6 : 1;
            uint32_t DDR7 : 1;
            uint32_t DDR8 : 1;
            uint32_t DDR9 : 1;
            uint32_t DDR10: 1;
            uint32_t DDR11: 1;
            uint32_t DDR12: 1;
            uint32_t DDR13: 1;
            uint32_t DDR14: 1;
            uint32_t DDR15: 1;
            uint32_t DDR16: 1;
            uint32_t DDR17: 1;
            uint32_t DDR18: 1;
            uint32_t DDR19: 1;
            uint32_t DDR20: 1;
            uint32_t DDR21: 1;
            uint32_t DDR22: 1;
            uint32_t DDR23: 1;
            uint32_t DDR24: 1;
            uint32_t DDR25: 1;
            uint32_t DDR26: 1;
            uint32_t DDR27: 1;
            uint32_t DDR28: 1;
            uint32_t DDR29: 1;
            uint32_t DDR30: 1;
            uint32_t DDR31: 1;
        } DDRs;
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint8_t Byte0;
            uint8_t Byte1;
            uint8_t Byte2;
            uint8_t Byte3;
        } DDRByte;
        struct                                            // 用于直接赋值位的   ——by 蓝宙
        {
            uint16_t Word0;
            uint16_t Word1;
        } DDRWord;
    };

} volatile *GPIO_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- GPIO - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup GPIO_Register_Accessor_Macros GPIO - Register accessor macros
 * @{
 */


/* GPIO - Register accessors */
#line 1784 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group GPIO_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- GPIO Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup GPIO_Register_Masks GPIO Register Masks
 * @{
 */

/* PDOR Bit Fields */



/* PSOR Bit Fields */



/* PCOR Bit Fields */



/* PTOR Bit Fields */



/* PDIR Bit Fields */



/* PDDR Bit Fields */




/**
 * @}
 */ /* end of group GPIO_Register_Masks */


/* GPIO - Peripheral instance base addresses */
/** Peripheral PTA base pointer */

/** Peripheral PTB base pointer */

/** Peripheral PTC base pointer */

/** Peripheral PTD base pointer */

/** Peripheral PTE base pointer */

/** Array initializer of GPIO peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- GPIO - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup GPIO_Register_Accessor_Macros GPIO - Register accessor macros
 * @{
 */


/* GPIO - Register instance definitions */
/* PTA */
#line 1861 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PTB */
#line 1868 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PTC */
#line 1875 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PTD */
#line 1882 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PTE */
#line 1889 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group GPIO_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group GPIO_Peripheral */

/* ----------------------------------------------------------------------------
   -- FGPIO
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FGPIO_Peripheral FGPIO
 * @{
 */

/** FGPIO - Peripheral register structure */
typedef struct FGPIO_MemMap {
  uint32_t PDOR;                                   /**< Port Data Output Register, offset: 0x0 */
  uint32_t PSOR;                                   /**< Port Set Output Register, offset: 0x4 */
  uint32_t PCOR;                                   /**< Port Clear Output Register, offset: 0x8 */
  uint32_t PTOR;                                   /**< Port Toggle Output Register, offset: 0xC */
  uint32_t PDIR;                                   /**< Port Data Input Register, offset: 0x10 */
  uint32_t PDDR;                                   /**< Port Data Direction Register, offset: 0x14 */
} volatile *FGPIO_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- FGPIO - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FGPIO_Register_Accessor_Macros FGPIO - Register accessor macros
 * @{
 */


/* FGPIO - Register accessors */
#line 1935 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group FGPIO_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- FGPIO Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FGPIO_Register_Masks FGPIO Register Masks
 * @{
 */

/* PDOR Bit Fields */



/* PSOR Bit Fields */



/* PCOR Bit Fields */



/* PTOR Bit Fields */



/* PDIR Bit Fields */



/* PDDR Bit Fields */




/**
 * @}
 */ /* end of group FGPIO_Register_Masks */


/* FGPIO - Peripheral instance base addresses */
/** Peripheral FPTA base pointer */

/** Peripheral FPTB base pointer */

/** Peripheral FPTC base pointer */

/** Peripheral FPTD base pointer */

/** Peripheral FPTE base pointer */

/** Array initializer of FGPIO peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- FGPIO - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup FGPIO_Register_Accessor_Macros FGPIO - Register accessor macros
 * @{
 */


/* FGPIO - Register instance definitions */
/* FPTA */
#line 2012 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FPTB */
#line 2019 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FPTC */
#line 2026 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FPTD */
#line 2033 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FPTE */
#line 2040 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group FGPIO_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group FGPIO_Peripheral */


/* ----------------------------------------------------------------------------
   -- I2C
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2C_Peripheral I2C
 * @{
 */

/** I2C - Peripheral register structure */
typedef struct I2C_MemMap {
  uint8_t A1;                                      /**< I2C Address Register 1, offset: 0x0 */
  uint8_t F;                                       /**< I2C Frequency Divider register, offset: 0x1 */
  uint8_t C1;                                      /**< I2C Control Register 1, offset: 0x2 */
  uint8_t S;                                       /**< I2C Status register, offset: 0x3 */
  uint8_t D;                                       /**< I2C Data I/O register, offset: 0x4 */
  uint8_t C2;                                      /**< I2C Control Register 2, offset: 0x5 */
  uint8_t FLT;                                     /**< I2C Programmable Input Glitch Filter register, offset: 0x6 */
  uint8_t RA;                                      /**< I2C Range Address register, offset: 0x7 */
  uint8_t SMB;                                     /**< I2C SMBus Control and Status register, offset: 0x8 */
  uint8_t A2;                                      /**< I2C Address Register 2, offset: 0x9 */
  uint8_t SLTH;                                    /**< I2C SCL Low Timeout Register High, offset: 0xA */
  uint8_t SLTL;                                    /**< I2C SCL Low Timeout Register Low, offset: 0xB */
} volatile *I2C_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- I2C - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2C_Register_Accessor_Macros I2C - Register accessor macros
 * @{
 */


/* I2C - Register accessors */
#line 2099 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group I2C_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- I2C Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2C_Register_Masks I2C Register Masks
 * @{
 */

/* A1 Bit Fields */



/* F Bit Fields */
#line 2125 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C1 Bit Fields */
#line 2142 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* S Bit Fields */
#line 2159 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* D Bit Fields */



/* C2 Bit Fields */
#line 2177 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FLT Bit Fields */
#line 2187 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* RA Bit Fields */



/* SMB Bit Fields */
#line 2208 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* A2 Bit Fields */



/* SLTH Bit Fields */



/* SLTL Bit Fields */




/**
 * @}
 */ /* end of group I2C_Register_Masks */


/* I2C - Peripheral instance base addresses */
/** Peripheral I2C0 base pointer */

/** Peripheral I2C1 base pointer */

/** Array initializer of I2C peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- I2C - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup I2C_Register_Accessor_Macros I2C - Register accessor macros
 * @{
 */


/* I2C - Register instance definitions */
/* I2C0 */
#line 2258 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* I2C1 */
#line 2271 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group I2C_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group I2C_Peripheral */


/* ----------------------------------------------------------------------------
   -- LLWU
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LLWU_Peripheral LLWU
 * @{
 */

/** LLWU - Peripheral register structure */
typedef struct LLWU_MemMap {
  uint8_t PE1;                                     /**< LLWU Pin Enable 1 register, offset: 0x0 */
  uint8_t PE2;                                     /**< LLWU Pin Enable 2 register, offset: 0x1 */
  uint8_t PE3;                                     /**< LLWU Pin Enable 3 register, offset: 0x2 */
  uint8_t PE4;                                     /**< LLWU Pin Enable 4 register, offset: 0x3 */
  uint8_t ME;                                      /**< LLWU Module Enable register, offset: 0x4 */
  uint8_t F1;                                      /**< LLWU Flag 1 register, offset: 0x5 */
  uint8_t F2;                                      /**< LLWU Flag 2 register, offset: 0x6 */
  uint8_t F3;                                      /**< LLWU Flag 3 register, offset: 0x7 */
  uint8_t FILT1;                                   /**< LLWU Pin Filter 1 register, offset: 0x8 */
  uint8_t FILT2;                                   /**< LLWU Pin Filter 2 register, offset: 0x9 */
} volatile *LLWU_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- LLWU - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LLWU_Register_Accessor_Macros LLWU - Register accessor macros
 * @{
 */


/* LLWU - Register accessors */
#line 2326 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group LLWU_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- LLWU Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LLWU_Register_Masks LLWU Register Masks
 * @{
 */

/* PE1 Bit Fields */
#line 2354 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PE2 Bit Fields */
#line 2367 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PE3 Bit Fields */
#line 2380 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PE4 Bit Fields */
#line 2393 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ME Bit Fields */
#line 2410 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* F1 Bit Fields */
#line 2427 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* F2 Bit Fields */
#line 2444 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* F3 Bit Fields */
#line 2461 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FILT1 Bit Fields */
#line 2470 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FILT2 Bit Fields */
#line 2479 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group LLWU_Register_Masks */


/* LLWU - Peripheral instance base addresses */
/** Peripheral LLWU base pointer */

/** Array initializer of LLWU peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- LLWU - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LLWU_Register_Accessor_Macros LLWU - Register accessor macros
 * @{
 */


/* LLWU - Register instance definitions */
/* LLWU */
#line 2513 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group LLWU_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group LLWU_Peripheral */


/* ----------------------------------------------------------------------------
   -- LPTMR
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LPTMR_Peripheral LPTMR
 * @{
 */

/** LPTMR - Peripheral register structure */
typedef struct LPTMR_MemMap {
  uint32_t CSR;                                    /**< Low Power Timer Control Status Register, offset: 0x0 */
  uint32_t PSR;                                    /**< Low Power Timer Prescale Register, offset: 0x4 */
  uint32_t CMR;                                    /**< Low Power Timer Compare Register, offset: 0x8 */
  uint32_t CNR;                                    /**< Low Power Timer Counter Register, offset: 0xC */
} volatile *LPTMR_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- LPTMR - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LPTMR_Register_Accessor_Macros LPTMR - Register accessor macros
 * @{
 */


/* LPTMR - Register accessors */





/**
 * @}
 */ /* end of group LPTMR_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- LPTMR Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LPTMR_Register_Masks LPTMR Register Masks
 * @{
 */

/* CSR Bit Fields */
#line 2587 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PSR Bit Fields */
#line 2596 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CMR Bit Fields */



/* CNR Bit Fields */




/**
 * @}
 */ /* end of group LPTMR_Register_Masks */


/* LPTMR - Peripheral instance base addresses */
/** Peripheral LPTMR0 base pointer */

/** Array initializer of LPTMR peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- LPTMR - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup LPTMR_Register_Accessor_Macros LPTMR - Register accessor macros
 * @{
 */


/* LPTMR - Register instance definitions */
/* LPTMR0 */





/**
 * @}
 */ /* end of group LPTMR_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group LPTMR_Peripheral */


/* ----------------------------------------------------------------------------
   -- MCG
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCG_Peripheral MCG
 * @{
 */

/** MCG - Peripheral register structure */
typedef struct MCG_MemMap {
  uint8_t C1;                                      /**< MCG Control 1 Register, offset: 0x0 */
  uint8_t C2;                                      /**< MCG Control 2 Register, offset: 0x1 */
  uint8_t C3;                                      /**< MCG Control 3 Register, offset: 0x2 */
  uint8_t C4;                                      /**< MCG Control 4 Register, offset: 0x3 */
  uint8_t C5;                                      /**< MCG Control 5 Register, offset: 0x4 */
  uint8_t C6;                                      /**< MCG Control 6 Register, offset: 0x5 */
  uint8_t S;                                       /**< MCG Status Register, offset: 0x6 */
  uint8_t RESERVED_0[1];
  uint8_t SC;                                      /**< MCG Status and Control Register, offset: 0x8 */
  uint8_t RESERVED_1[1];
  uint8_t ATCVH;                                   /**< MCG Auto Trim Compare Value High Register, offset: 0xA */
  uint8_t ATCVL;                                   /**< MCG Auto Trim Compare Value Low Register, offset: 0xB */
  uint8_t C7;                                      /**< MCG Control 7 Register, offset: 0xC */
  uint8_t C8;                                      /**< MCG Control 8 Register, offset: 0xD */
  uint8_t C9;                                      /**< MCG Control 9 Register, offset: 0xE */
  uint8_t C10;                                     /**< MCG Control 10 Register, offset: 0xF */
} volatile *MCG_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- MCG - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCG_Register_Accessor_Macros MCG - Register accessor macros
 * @{
 */


/* MCG - Register accessors */
#line 2697 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group MCG_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- MCG Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCG_Register_Masks MCG Register Masks
 * @{
 */

/* C1 Bit Fields */
#line 2725 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C2 Bit Fields */
#line 2739 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C3 Bit Fields */



/* C4 Bit Fields */
#line 2754 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C5 Bit Fields */
#line 2762 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C6 Bit Fields */
#line 2772 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* S Bit Fields */
#line 2788 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SC Bit Fields */
#line 2802 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ATCVH Bit Fields */



/* ATCVL Bit Fields */



/* C8 Bit Fields */



/**
 * @}
 */ /* end of group MCG_Register_Masks */


/* MCG - Peripheral instance base addresses */
/** Peripheral MCG base pointer */

/** Array initializer of MCG peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- MCG - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCG_Register_Accessor_Macros MCG - Register accessor macros
 * @{
 */


/* MCG - Register instance definitions */
/* MCG */
#line 2851 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group MCG_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group MCG_Peripheral */


/* ----------------------------------------------------------------------------
   -- MCM
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCM_Peripheral MCM
 * @{
 */

/** MCM - Peripheral register structure */
typedef struct MCM_MemMap {
  uint8_t RESERVED_0[8];
  uint16_t PLASC;                                  /**< Crossbar Switch (AXBS) Slave Configuration, offset: 0x8 */
  uint16_t PLAMC;                                  /**< Crossbar Switch (AXBS) Master Configuration, offset: 0xA */
  uint32_t PLACR;                                  /**< Platform Control Register, offset: 0xC */
  uint8_t RESERVED_1[48];
  uint32_t CPO;                                    /**< Compute Operation Control Register, offset: 0x40 */
} volatile *MCM_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- MCM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCM_Register_Accessor_Macros MCM - Register accessor macros
 * @{
 */


/* MCM - Register accessors */





/**
 * @}
 */ /* end of group MCM_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- MCM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCM_Register_Masks MCM Register Masks
 * @{
 */

/* PLASC Bit Fields */



/* PLAMC Bit Fields */



/* PLACR Bit Fields */
#line 2936 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CPO Bit Fields */
#line 2943 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group MCM_Register_Masks */


/* MCM - Peripheral instance base addresses */
/** Peripheral MCM base pointer */

/** Array initializer of MCM peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- MCM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MCM_Register_Accessor_Macros MCM - Register accessor macros
 * @{
 */


/* MCM - Register instance definitions */
/* MCM */





/**
 * @}
 */ /* end of group MCM_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group MCM_Peripheral */


/* ----------------------------------------------------------------------------
   -- MTB
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTB_Peripheral MTB
 * @{
 */

/** MTB - Peripheral register structure */
typedef struct MTB_MemMap {
  uint32_t POSITION;                               /**< MTB Position Register, offset: 0x0 */
  uint32_t MASTER;                                 /**< MTB Master Register, offset: 0x4 */
  uint32_t FLOW;                                   /**< MTB Flow Register, offset: 0x8 */
  uint32_t BASE;                                   /**< MTB Base Register, offset: 0xC */
  uint8_t RESERVED_0[3824];
  uint32_t MODECTRL;                               /**< Integration Mode Control Register, offset: 0xF00 */
  uint8_t RESERVED_1[156];
  uint32_t TAGSET;                                 /**< Claim TAG Set Register, offset: 0xFA0 */
  uint32_t TAGCLEAR;                               /**< Claim TAG Clear Register, offset: 0xFA4 */
  uint8_t RESERVED_2[8];
  uint32_t LOCKACCESS;                             /**< Lock Access Register, offset: 0xFB0 */
  uint32_t LOCKSTAT;                               /**< Lock Status Register, offset: 0xFB4 */
  uint32_t AUTHSTAT;                               /**< Authentication Status Register, offset: 0xFB8 */
  uint32_t DEVICEARCH;                             /**< Device Architecture Register, offset: 0xFBC */
  uint8_t RESERVED_3[8];
  uint32_t DEVICECFG;                              /**< Device Configuration Register, offset: 0xFC8 */
  uint32_t DEVICETYPID;                            /**< Device Type Identifier Register, offset: 0xFCC */
  uint32_t PERIPHID[8];                            /**< Peripheral ID Register, array offset: 0xFD0, array step: 0x4 */
  uint32_t COMPID[4];                              /**< Component ID Register, array offset: 0xFF0, array step: 0x4 */
} volatile *MTB_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- MTB - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTB_Register_Accessor_Macros MTB - Register accessor macros
 * @{
 */


/* MTB - Register accessors */
#line 3040 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group MTB_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- MTB Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTB_Register_Masks MTB Register Masks
 * @{
 */

/* POSITION Bit Fields */





/* MASTER Bit Fields */
#line 3077 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FLOW Bit Fields */
#line 3085 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* BASE Bit Fields */



/* MODECTRL Bit Fields */



/* TAGSET Bit Fields */



/* TAGCLEAR Bit Fields */



/* LOCKACCESS Bit Fields */



/* LOCKSTAT Bit Fields */



/* AUTHSTAT Bit Fields */
#line 3118 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* DEVICEARCH Bit Fields */



/* DEVICECFG Bit Fields */



/* DEVICETYPID Bit Fields */



/* PERIPHID Bit Fields */



/* COMPID Bit Fields */




/**
 * @}
 */ /* end of group MTB_Register_Masks */


/* MTB - Peripheral instance base addresses */
/** Peripheral MTB base pointer */

/** Array initializer of MTB peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- MTB - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTB_Register_Accessor_Macros MTB - Register accessor macros
 * @{
 */


/* MTB - Register instance definitions */
/* MTB */
#line 3187 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* MTB - Register array accessors */



/**
 * @}
 */ /* end of group MTB_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group MTB_Peripheral */


/* ----------------------------------------------------------------------------
   -- MTBDWT
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTBDWT_Peripheral MTBDWT
 * @{
 */

/** MTBDWT - Peripheral register structure */
typedef struct MTBDWT_MemMap {
  uint32_t CTRL;                                   /**< MTB DWT Control Register, offset: 0x0 */
  uint8_t RESERVED_0[28];
  struct {                                         /* offset: 0x20, array step: 0x10 */
    uint32_t COMP;                                   /**< MTB_DWT Comparator Register, array offset: 0x20, array step: 0x10 */
    uint32_t MASK;                                   /**< MTB_DWT Comparator Mask Register, array offset: 0x24, array step: 0x10 */
    uint32_t FCT;                                    /**< MTB_DWT Comparator Function Register 0..MTB_DWT Comparator Function Register 1, array offset: 0x28, array step: 0x10 */
    uint8_t RESERVED_0[4];
  } COMPARATOR[2];
  uint8_t RESERVED_1[448];
  uint32_t TBCTRL;                                 /**< MTB_DWT Trace Buffer Control Register, offset: 0x200 */
  uint8_t RESERVED_2[3524];
  uint32_t DEVICECFG;                              /**< Device Configuration Register, offset: 0xFC8 */
  uint32_t DEVICETYPID;                            /**< Device Type Identifier Register, offset: 0xFCC */
  uint32_t PERIPHID[8];                            /**< Peripheral ID Register, array offset: 0xFD0, array step: 0x4 */
  uint32_t COMPID[4];                              /**< Component ID Register, array offset: 0xFF0, array step: 0x4 */
} volatile *MTBDWT_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- MTBDWT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTBDWT_Register_Accessor_Macros MTBDWT - Register accessor macros
 * @{
 */


/* MTBDWT - Register accessors */
#line 3250 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group MTBDWT_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- MTBDWT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTBDWT_Register_Masks MTBDWT Register Masks
 * @{
 */

/* CTRL Bit Fields */
#line 3272 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* COMP Bit Fields */



/* MASK Bit Fields */



/* FCT Bit Fields */
#line 3294 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* TBCTRL Bit Fields */
#line 3302 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* DEVICECFG Bit Fields */



/* DEVICETYPID Bit Fields */



/* PERIPHID Bit Fields */



/* COMPID Bit Fields */




/**
 * @}
 */ /* end of group MTBDWT_Register_Masks */


/* MTBDWT - Peripheral instance base addresses */
/** Peripheral MTBDWT base pointer */

/** Array initializer of MTBDWT peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- MTBDWT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup MTBDWT_Register_Accessor_Macros MTBDWT - Register accessor macros
 * @{
 */


/* MTBDWT - Register instance definitions */
/* MTBDWT */
#line 3364 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* MTBDWT - Register array accessors */






/**
 * @}
 */ /* end of group MTBDWT_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group MTBDWT_Peripheral */


/* ----------------------------------------------------------------------------
   -- NV
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NV_Peripheral NV
 * @{
 */

/** NV - Peripheral register structure */
typedef struct NV_MemMap {
  uint8_t BACKKEY3;                                /**< Backdoor Comparison Key 3., offset: 0x0 */
  uint8_t BACKKEY2;                                /**< Backdoor Comparison Key 2., offset: 0x1 */
  uint8_t BACKKEY1;                                /**< Backdoor Comparison Key 1., offset: 0x2 */
  uint8_t BACKKEY0;                                /**< Backdoor Comparison Key 0., offset: 0x3 */
  uint8_t BACKKEY7;                                /**< Backdoor Comparison Key 7., offset: 0x4 */
  uint8_t BACKKEY6;                                /**< Backdoor Comparison Key 6., offset: 0x5 */
  uint8_t BACKKEY5;                                /**< Backdoor Comparison Key 5., offset: 0x6 */
  uint8_t BACKKEY4;                                /**< Backdoor Comparison Key 4., offset: 0x7 */
  uint8_t FPROT3;                                  /**< Non-volatile P-Flash Protection 1 - Low Register, offset: 0x8 */
  uint8_t FPROT2;                                  /**< Non-volatile P-Flash Protection 1 - High Register, offset: 0x9 */
  uint8_t FPROT1;                                  /**< Non-volatile P-Flash Protection 0 - Low Register, offset: 0xA */
  uint8_t FPROT0;                                  /**< Non-volatile P-Flash Protection 0 - High Register, offset: 0xB */
  uint8_t FSEC;                                    /**< Non-volatile Flash Security Register, offset: 0xC */
  uint8_t FOPT;                                    /**< Non-volatile Flash Option Register, offset: 0xD */
} volatile *NV_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- NV - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NV_Register_Accessor_Macros NV - Register accessor macros
 * @{
 */


/* NV - Register accessors */
#line 3434 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group NV_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- NV Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NV_Register_Masks NV Register Masks
 * @{
 */

/* BACKKEY3 Bit Fields */



/* BACKKEY2 Bit Fields */



/* BACKKEY1 Bit Fields */



/* BACKKEY0 Bit Fields */



/* BACKKEY7 Bit Fields */



/* BACKKEY6 Bit Fields */



/* BACKKEY5 Bit Fields */



/* BACKKEY4 Bit Fields */



/* FPROT3 Bit Fields */



/* FPROT2 Bit Fields */



/* FPROT1 Bit Fields */



/* FPROT0 Bit Fields */



/* FSEC Bit Fields */
#line 3510 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FOPT Bit Fields */
#line 3523 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group NV_Register_Masks */


/* NV - Peripheral instance base addresses */
/** Peripheral FTFA_FlashConfig base pointer */

/** Array initializer of NV peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- NV - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NV_Register_Accessor_Macros NV - Register accessor macros
 * @{
 */


/* NV - Register instance definitions */
/* FTFA_FlashConfig */
#line 3561 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group NV_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group NV_Peripheral */


/* ----------------------------------------------------------------------------
   -- NVIC
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NVIC_Peripheral NVIC
 * @{
 */

/** NVIC - Peripheral register structure */
typedef struct NVIC_MemMap {
  uint32_t ISER;                                   /**< Interrupt Set Enable Register, offset: 0x0 */
  uint8_t RESERVED_0[124];
  uint32_t ICER;                                   /**< Interrupt Clear Enable Register, offset: 0x80 */
  uint8_t RESERVED_1[124];
  uint32_t ISPR;                                   /**< Interrupt Set Pending Register, offset: 0x100 */
  uint8_t RESERVED_2[124];
  uint32_t ICPR;                                   /**< Interrupt Clear Pending Register, offset: 0x180 */
  uint8_t RESERVED_3[380];
  uint32_t IP[8];                                  /**< Interrupt Priority Register n, array offset: 0x300, array step: 0x4 */
} volatile *NVIC_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- NVIC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NVIC_Register_Accessor_Macros NVIC - Register accessor macros
 * @{
 */


/* NVIC - Register accessors */






/**
 * @}
 */ /* end of group NVIC_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- NVIC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NVIC_Register_Masks NVIC Register Masks
 * @{
 */

/* ISER Bit Fields */



/* ICER Bit Fields */



/* ISPR Bit Fields */



/* ICPR Bit Fields */



/* IP Bit Fields */
#line 3738 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group NVIC_Register_Masks */


/* NVIC - Peripheral instance base addresses */
/** Peripheral NVIC base pointer */

/** Array initializer of NVIC peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- NVIC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup NVIC_Register_Accessor_Macros NVIC - Register accessor macros
 * @{
 */


/* NVIC - Register instance definitions */
/* NVIC */
#line 3774 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* NVIC - Register array accessors */


/**
 * @}
 */ /* end of group NVIC_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group NVIC_Peripheral */


/* ----------------------------------------------------------------------------
   -- OSC
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup OSC_Peripheral OSC
 * @{
 */

/** OSC - Peripheral register structure */
typedef struct OSC_MemMap {
  uint8_t CR;                                      /**< OSC Control Register, offset: 0x0 */
} volatile *OSC_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- OSC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup OSC_Register_Accessor_Macros OSC - Register accessor macros
 * @{
 */


/* OSC - Register accessors */


/**
 * @}
 */ /* end of group OSC_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- OSC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup OSC_Register_Masks OSC Register Masks
 * @{
 */

/* CR Bit Fields */
#line 3842 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group OSC_Register_Masks */


/* OSC - Peripheral instance base addresses */
/** Peripheral OSC0 base pointer */

/** Array initializer of OSC peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- OSC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup OSC_Register_Accessor_Macros OSC - Register accessor macros
 * @{
 */


/* OSC - Register instance definitions */
/* OSC0 */


/**
 * @}
 */ /* end of group OSC_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group OSC_Peripheral */


/* ----------------------------------------------------------------------------
   -- PIT
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PIT_Peripheral PIT
 * @{
 */

/** PIT - Peripheral register structure */
typedef struct PIT_MemMap {
  uint32_t MCR;                                    /**< PIT Module Control Register, offset: 0x0 */
  uint8_t RESERVED_0[220];
  uint32_t LTMR64H;                                /**< PIT Upper Lifetime Timer Register, offset: 0xE0 */
  uint32_t LTMR64L;                                /**< PIT Lower Lifetime Timer Register, offset: 0xE4 */
  uint8_t RESERVED_1[24];
  struct {                                         /* offset: 0x100, array step: 0x10 */
    uint32_t LDVAL;                                  /**< Timer Load Value Register, array offset: 0x100, array step: 0x10 */
    uint32_t CVAL;                                   /**< Current Timer Value Register, array offset: 0x104, array step: 0x10 */
    uint32_t TCTRL;                                  /**< Timer Control Register, array offset: 0x108, array step: 0x10 */
    uint32_t TFLG;                                   /**< Timer Flag Register, array offset: 0x10C, array step: 0x10 */
  } CHANNEL[2];
} volatile *PIT_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- PIT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PIT_Register_Accessor_Macros PIT - Register accessor macros
 * @{
 */


/* PIT - Register accessors */
#line 3920 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group PIT_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- PIT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PIT_Register_Masks PIT Register Masks
 * @{
 */

/* MCR Bit Fields */




/* LTMR64H Bit Fields */



/* LTMR64L Bit Fields */



/* LDVAL Bit Fields */



/* CVAL Bit Fields */



/* TCTRL Bit Fields */
#line 3963 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* TFLG Bit Fields */



/**
 * @}
 */ /* end of group PIT_Register_Masks */


/* PIT - Peripheral instance base addresses */
/** Peripheral PIT base pointer */

/** Array initializer of PIT peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- PIT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PIT_Register_Accessor_Macros PIT - Register accessor macros
 * @{
 */


/* PIT - Register instance definitions */
/* PIT */
#line 4001 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* PIT - Register array accessors */





/**
 * @}
 */ /* end of group PIT_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group PIT_Peripheral */


/* ----------------------------------------------------------------------------
   -- PMC
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PMC_Peripheral PMC
 * @{
 */

/** PMC - Peripheral register structure */
typedef struct PMC_MemMap {
  uint8_t LVDSC1;                                  /**< Low Voltage Detect Status And Control 1 register, offset: 0x0 */
  uint8_t LVDSC2;                                  /**< Low Voltage Detect Status And Control 2 register, offset: 0x1 */
  uint8_t REGSC;                                   /**< Regulator Status And Control register, offset: 0x2 */
} volatile *PMC_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- PMC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PMC_Register_Accessor_Macros PMC - Register accessor macros
 * @{
 */


/* PMC - Register accessors */




/**
 * @}
 */ /* end of group PMC_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- PMC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PMC_Register_Masks PMC Register Masks
 * @{
 */

/* LVDSC1 Bit Fields */
#line 4075 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* LVDSC2 Bit Fields */
#line 4085 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* REGSC Bit Fields */
#line 4094 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group PMC_Register_Masks */


/* PMC - Peripheral instance base addresses */
/** Peripheral PMC base pointer */

/** Array initializer of PMC peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- PMC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PMC_Register_Accessor_Macros PMC - Register accessor macros
 * @{
 */


/* PMC - Register instance definitions */
/* PMC */




/**
 * @}
 */ /* end of group PMC_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group PMC_Peripheral */


/* ----------------------------------------------------------------------------
   -- PORT
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PORT_Peripheral PORT
 * @{
 */

/** PORT - Peripheral register structure */
typedef struct PORT_MemMap {
  uint32_t PCR[32];        /**< Pin Control Register n, array offset: 0x0, array step: 0x4 */
  uint32_t GPCLR;          /**< Global Pin Control Low Register, offset: 0x80 */
  uint32_t GPCHR;          /**< Global Pin Control High Register, offset: 0x84 */
  uint8_t RESERVED_0[24];
  uint32_t ISFR;           /**< Interrupt Status Flag Register, offset: 0xA0 */
} volatile *PORT_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- PORT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PORT_Register_Accessor_Macros PORT - Register accessor macros
 * @{
 */


/* PORT - Register accessors */





/**
 * @}
 */ /* end of group PORT_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- PORT Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PORT_Register_Masks PORT Register Masks
 * @{
 */

/* PCR Bit Fields */
#line 4199 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* GPCLR Bit Fields */
#line 4206 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* GPCHR Bit Fields */
#line 4213 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ISFR Bit Fields */




/**
 * @}
 */ /* end of group PORT_Register_Masks */


/* PORT - Peripheral instance base addresses */
/** Peripheral PORTA base pointer */

/** Peripheral PORTB base pointer */

/** Peripheral PORTC base pointer */

/** Peripheral PORTD base pointer */

/** Peripheral PORTE base pointer */

/** Array initializer of PORT peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- PORT - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup PORT_Register_Accessor_Macros PORT - Register accessor macros
 * @{
 */


/* PORT - Register instance definitions */
/* PORTA */
#line 4284 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PORTB */
#line 4320 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PORTC */
#line 4356 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PORTD */
#line 4392 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PORTE */
#line 4428 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* PORT - Register array accessors */






/**
 * @}
 */ /* end of group PORT_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group PORT_Peripheral */


/* ----------------------------------------------------------------------------
   -- RCM
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RCM_Peripheral RCM
 * @{
 */

/** RCM - Peripheral register structure */
typedef struct RCM_MemMap {
  uint8_t SRS0;                                    /**< System Reset Status Register 0, offset: 0x0 */
  uint8_t SRS1;                                    /**< System Reset Status Register 1, offset: 0x1 */
  uint8_t RESERVED_0[2];
  uint8_t RPFC;                                    /**< Reset Pin Filter Control register, offset: 0x4 */
  uint8_t RPFW;                                    /**< Reset Pin Filter Width register, offset: 0x5 */
} volatile *RCM_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- RCM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RCM_Register_Accessor_Macros RCM - Register accessor macros
 * @{
 */


/* RCM - Register accessors */





/**
 * @}
 */ /* end of group RCM_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- RCM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RCM_Register_Masks RCM Register Masks
 * @{
 */

/* SRS0 Bit Fields */
#line 4509 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SRS1 Bit Fields */
#line 4518 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* RPFC Bit Fields */





/* RPFW Bit Fields */




/**
 * @}
 */ /* end of group RCM_Register_Masks */


/* RCM - Peripheral instance base addresses */
/** Peripheral RCM base pointer */

/** Array initializer of RCM peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- RCM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RCM_Register_Accessor_Macros RCM - Register accessor macros
 * @{
 */


/* RCM - Register instance definitions */
/* RCM */





/**
 * @}
 */ /* end of group RCM_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group RCM_Peripheral */


/* ----------------------------------------------------------------------------
   -- ROM
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ROM_Peripheral ROM
 * @{
 */

/** ROM - Peripheral register structure */
typedef struct ROM_MemMap {
  uint32_t ENTRY[3];                               /**< Entry, array offset: 0x0, array step: 0x4 */
  uint32_t TABLEMARK;                              /**< End of Table Marker Register, offset: 0xC */
  uint8_t RESERVED_0[4028];
  uint32_t SYSACCESS;                              /**< System Access Register, offset: 0xFCC */
  uint32_t PERIPHID4;                              /**< Peripheral ID Register, offset: 0xFD0 */
  uint32_t PERIPHID5;                              /**< Peripheral ID Register, offset: 0xFD4 */
  uint32_t PERIPHID6;                              /**< Peripheral ID Register, offset: 0xFD8 */
  uint32_t PERIPHID7;                              /**< Peripheral ID Register, offset: 0xFDC */
  uint32_t PERIPHID0;                              /**< Peripheral ID Register, offset: 0xFE0 */
  uint32_t PERIPHID1;                              /**< Peripheral ID Register, offset: 0xFE4 */
  uint32_t PERIPHID2;                              /**< Peripheral ID Register, offset: 0xFE8 */
  uint32_t PERIPHID3;                              /**< Peripheral ID Register, offset: 0xFEC */
  uint32_t COMPID[4];                              /**< Component ID Register, array offset: 0xFF0, array step: 0x4 */
} volatile *ROM_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- ROM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ROM_Register_Accessor_Macros ROM - Register accessor macros
 * @{
 */


/* ROM - Register accessors */
#line 4616 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group ROM_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- ROM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ROM_Register_Masks ROM Register Masks
 * @{
 */

/* ENTRY Bit Fields */



/* TABLEMARK Bit Fields */



/* SYSACCESS Bit Fields */



/* PERIPHID4 Bit Fields */



/* PERIPHID5 Bit Fields */



/* PERIPHID6 Bit Fields */



/* PERIPHID7 Bit Fields */



/* PERIPHID0 Bit Fields */



/* PERIPHID1 Bit Fields */



/* PERIPHID2 Bit Fields */



/* PERIPHID3 Bit Fields */



/* COMPID Bit Fields */




/**
 * @}
 */ /* end of group ROM_Register_Masks */


/* ROM - Peripheral instance base addresses */
/** Peripheral ROM base pointer */

/** Array initializer of ROM peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- ROM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup ROM_Register_Accessor_Macros ROM - Register accessor macros
 * @{
 */


/* ROM - Register instance definitions */
/* ROM */
#line 4720 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* ROM - Register array accessors */



/**
 * @}
 */ /* end of group ROM_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group ROM_Peripheral */


/* ----------------------------------------------------------------------------
   -- RTC
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RTC_Peripheral RTC
 * @{
 */

/** RTC - Peripheral register structure */
typedef struct RTC_MemMap {
  uint32_t TSR;                                    /**< RTC Time Seconds Register, offset: 0x0 */
  uint32_t TPR;                                    /**< RTC Time Prescaler Register, offset: 0x4 */
  uint32_t TAR;                                    /**< RTC Time Alarm Register, offset: 0x8 */
  uint32_t TCR;                                    /**< RTC Time Compensation Register, offset: 0xC */
  uint32_t CR;                                     /**< RTC Control Register, offset: 0x10 */
  uint32_t SR;                                     /**< RTC Status Register, offset: 0x14 */
  uint32_t LR;                                     /**< RTC Lock Register, offset: 0x18 */
  uint32_t IER;                                    /**< RTC Interrupt Enable Register, offset: 0x1C */
} volatile *RTC_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- RTC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RTC_Register_Accessor_Macros RTC - Register accessor macros
 * @{
 */


/* RTC - Register accessors */
#line 4775 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group RTC_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- RTC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RTC_Register_Masks RTC Register Masks
 * @{
 */

/* TSR Bit Fields */



/* TPR Bit Fields */



/* TAR Bit Fields */



/* TCR Bit Fields */
#line 4815 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CR Bit Fields */
#line 4836 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SR Bit Fields */
#line 4845 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* LR Bit Fields */
#line 4854 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* IER Bit Fields */
#line 4865 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group RTC_Register_Masks */


/* RTC - Peripheral instance base addresses */
/** Peripheral RTC base pointer */

/** Array initializer of RTC peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- RTC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup RTC_Register_Accessor_Macros RTC - Register accessor macros
 * @{
 */


/* RTC - Register instance definitions */
/* RTC */
#line 4897 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group RTC_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group RTC_Peripheral */


/* ----------------------------------------------------------------------------
   -- SCB
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SCB_Peripheral SCB
 * @{
 */

/** SCB - Peripheral register structure */
typedef struct SCB_MemMap {
  uint8_t RESERVED_0[8];
  uint32_t ACTLR;                                  /**< Auxiliary Control Register,, offset: 0x8 */
  uint8_t RESERVED_1[3316];
  uint32_t CPUID;                                  /**< CPUID Base Register, offset: 0xD00 */
  uint32_t ICSR;                                   /**< Interrupt Control and State Register, offset: 0xD04 */
  uint32_t VTOR;                                   /**< Vector Table Offset Register, offset: 0xD08 */
  uint32_t AIRCR;                                  /**< Application Interrupt and Reset Control Register, offset: 0xD0C */
  uint32_t SCR;                                    /**< System Control Register, offset: 0xD10 */
  uint32_t CCR;                                    /**< Configuration and Control Register, offset: 0xD14 */
  uint8_t RESERVED_2[4];
  uint32_t SHPR2;                                  /**< System Handler Priority Register 2, offset: 0xD1C */
  uint32_t SHPR3;                                  /**< System Handler Priority Register 3, offset: 0xD20 */
  uint32_t SHCSR;                                  /**< System Handler Control and State Register, offset: 0xD24 */
  uint8_t RESERVED_3[8];
  uint32_t DFSR;                                   /**< Debug Fault Status Register, offset: 0xD30 */
} volatile *SCB_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- SCB - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SCB_Register_Accessor_Macros SCB - Register accessor macros
 * @{
 */


/* SCB - Register accessors */
#line 4958 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group SCB_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- SCB Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SCB_Register_Masks SCB Register Masks
 * @{
 */

/* CPUID Bit Fields */
#line 4986 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ICSR Bit Fields */
#line 5005 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* VTOR Bit Fields */



/* AIRCR Bit Fields */
#line 5019 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SCR Bit Fields */
#line 5026 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CCR Bit Fields */




/* SHPR2 Bit Fields */



/* SHPR3 Bit Fields */
#line 5042 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SHCSR Bit Fields */


/* DFSR Bit Fields */
#line 5056 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group SCB_Register_Masks */


/* SCB - Peripheral instance base addresses */
/** Peripheral SystemControl base pointer */

/** Array initializer of SCB peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- SCB - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SCB_Register_Accessor_Macros SCB - Register accessor macros
 * @{
 */


/* SCB - Register instance definitions */
/* SystemControl */
#line 5091 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group SCB_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group SCB_Peripheral */


/* ----------------------------------------------------------------------------
   -- SIM
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SIM_Peripheral SIM
 * @{
 */

/** SIM - Peripheral register structure */
typedef struct SIM_MemMap {
  uint32_t SOPT1;                                  /**< System Options Register 1, offset: 0x0 */
  uint32_t SOPT1CFG;                               /**< SOPT1 Configuration Register, offset: 0x4 */
  uint8_t RESERVED_0[4092];
  uint32_t SOPT2;                                  /**< System Options Register 2, offset: 0x1004 */
  uint8_t RESERVED_1[4];
  uint32_t SOPT4;                                  /**< System Options Register 4, offset: 0x100C */
  uint32_t SOPT5;                                  /**< System Options Register 5, offset: 0x1010 */
  uint8_t RESERVED_2[4];
  uint32_t SOPT7;                                  /**< System Options Register 7, offset: 0x1018 */
  uint8_t RESERVED_3[8];
  uint32_t SDID;                                   /**< System Device Identification Register, offset: 0x1024 */
  uint8_t RESERVED_4[12];
  uint32_t SCGC4;                                  /**< System Clock Gating Control Register 4, offset: 0x1034 */
  uint32_t SCGC5;                                  /**< System Clock Gating Control Register 5, offset: 0x1038 */
  uint32_t SCGC6;                                  /**< System Clock Gating Control Register 6, offset: 0x103C */
  uint32_t SCGC7;                                  /**< System Clock Gating Control Register 7, offset: 0x1040 */
  uint32_t CLKDIV1;                                /**< System Clock Divider Register 1, offset: 0x1044 */
  uint8_t RESERVED_5[4];
  uint32_t FCFG1;                                  /**< Flash Configuration Register 1, offset: 0x104C */
  uint32_t FCFG2;                                  /**< Flash Configuration Register 2, offset: 0x1050 */
  uint8_t RESERVED_6[4];
  uint32_t UIDMH;                                  /**< Unique Identification Register Mid-High, offset: 0x1058 */
  uint32_t UIDML;                                  /**< Unique Identification Register Mid Low, offset: 0x105C */
  uint32_t UIDL;                                   /**< Unique Identification Register Low, offset: 0x1060 */
  uint8_t RESERVED_7[156];
  uint32_t COPC;                                   /**< COP Control Register, offset: 0x1100 */
  uint32_t SRVCOP;                                 /**< Service COP Register, offset: 0x1104 */
} volatile *SIM_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- SIM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SIM_Register_Accessor_Macros SIM - Register accessor macros
 * @{
 */


/* SIM - Register accessors */
#line 5172 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group SIM_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- SIM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SIM_Register_Masks SIM Register Masks
 * @{
 */

/* SOPT1 Bit Fields */
#line 5197 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SOPT1CFG Bit Fields */
#line 5204 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SOPT2 Bit Fields */
#line 5220 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SOPT4 Bit Fields */
#line 5231 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SOPT5 Bit Fields */
#line 5248 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SOPT7 Bit Fields */
#line 5256 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SDID Bit Fields */
#line 5278 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SCGC4 Bit Fields */
#line 5297 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SCGC5 Bit Fields */
#line 5312 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SCGC6 Bit Fields */
#line 5331 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SCGC7 Bit Fields */


/* CLKDIV1 Bit Fields */
#line 5341 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FCFG1 Bit Fields */
#line 5349 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* FCFG2 Bit Fields */



/* UIDMH Bit Fields */



/* UIDML Bit Fields */



/* UIDL Bit Fields */



/* COPC Bit Fields */
#line 5373 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SRVCOP Bit Fields */




/**
 * @}
 */ /* end of group SIM_Register_Masks */


/* SIM - Peripheral instance base addresses */
/** Peripheral SIM base pointer */

/** Array initializer of SIM peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- SIM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SIM_Register_Accessor_Macros SIM - Register accessor macros
 * @{
 */


/* SIM - Register instance definitions */
/* SIM */
#line 5420 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"




/**
 * @}
 */ /* end of group SIM_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group SIM_Peripheral */


/* ----------------------------------------------------------------------------
   -- SMC
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SMC_Peripheral SMC
 * @{
 */

/** SMC - Peripheral register structure */
typedef struct SMC_MemMap {
  uint8_t PMPROT;                                  /**< Power Mode Protection register, offset: 0x0 */
  uint8_t PMCTRL;                                  /**< Power Mode Control register, offset: 0x1 */
  uint8_t STOPCTRL;                                /**< Stop Control Register, offset: 0x2 */
  uint8_t PMSTAT;                                  /**< Power Mode Status register, offset: 0x3 */
} volatile *SMC_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- SMC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SMC_Register_Accessor_Macros SMC - Register accessor macros
 * @{
 */


/* SMC - Register accessors */





/**
 * @}
 */ /* end of group SMC_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- SMC Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SMC_Register_Masks SMC Register Masks
 * @{
 */

/* PMPROT Bit Fields */
#line 5488 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PMCTRL Bit Fields */
#line 5497 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* STOPCTRL Bit Fields */
#line 5506 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* PMSTAT Bit Fields */




/**
 * @}
 */ /* end of group SMC_Register_Masks */


/* SMC - Peripheral instance base addresses */
/** Peripheral SMC base pointer */

/** Array initializer of SMC peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- SMC - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SMC_Register_Accessor_Macros SMC - Register accessor macros
 * @{
 */


/* SMC - Register instance definitions */
/* SMC */





/**
 * @}
 */ /* end of group SMC_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group SMC_Peripheral */


/* ----------------------------------------------------------------------------
   -- SPI
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SPI_Peripheral SPI
 * @{
 */

/** SPI - Peripheral register structure */
typedef struct SPI_MemMap {
  uint8_t C1;                                      /**< SPI control register 1, offset: 0x0 */
  uint8_t C2;                                      /**< SPI control register 2, offset: 0x1 */
  uint8_t BR;                                      /**< SPI baud rate register, offset: 0x2 */
  uint8_t S;                                       /**< SPI status register, offset: 0x3 */
  uint8_t RESERVED_0[1];
  uint8_t D;                                       /**< SPI data register, offset: 0x5 */
  uint8_t RESERVED_1[1];
  uint8_t M;                                       /**< SPI match register, offset: 0x7 */
} volatile *SPI_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- SPI - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SPI_Register_Accessor_Macros SPI - Register accessor macros
 * @{
 */


/* SPI - Register accessors */
#line 5587 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group SPI_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- SPI Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SPI_Register_Masks SPI Register Masks
 * @{
 */

/* C1 Bit Fields */
#line 5619 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C2 Bit Fields */
#line 5636 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* BR Bit Fields */
#line 5643 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* S Bit Fields */
#line 5652 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* D Bit Fields */



/* M Bit Fields */




/**
 * @}
 */ /* end of group SPI_Register_Masks */


/* SPI - Peripheral instance base addresses */
/** Peripheral SPI0 base pointer */

/** Peripheral SPI1 base pointer */

/** Array initializer of SPI peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- SPI - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SPI_Register_Accessor_Macros SPI - Register accessor macros
 * @{
 */


/* SPI - Register instance definitions */
/* SPI0 */
#line 5692 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SPI1 */
#line 5699 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group SPI_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group SPI_Peripheral */


/* ----------------------------------------------------------------------------
   -- SysTick
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SysTick_Peripheral SysTick
 * @{
 */

/** SysTick - Peripheral register structure */
typedef struct SysTick_MemMap {
  uint32_t CSR;                                    /**< SysTick Control and Status Register, offset: 0x0 */
  uint32_t RVR;                                    /**< SysTick Reload Value Register, offset: 0x4 */
  uint32_t CVR;                                    /**< SysTick Current Value Register, offset: 0x8 */
  uint32_t CALIB;                                  /**< SysTick Calibration Value Register, offset: 0xC */
} volatile *SysTick_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- SysTick - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SysTick_Register_Accessor_Macros SysTick - Register accessor macros
 * @{
 */


/* SysTick - Register accessors */





/**
 * @}
 */ /* end of group SysTick_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- SysTick Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SysTick_Register_Masks SysTick Register Masks
 * @{
 */

/* CSR Bit Fields */
#line 5766 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* RVR Bit Fields */



/* CVR Bit Fields */



/* CALIB Bit Fields */
#line 5782 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group SysTick_Register_Masks */


/* SysTick - Peripheral instance base addresses */
/** Peripheral SysTick base pointer */

/** Array initializer of SysTick peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- SysTick - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup SysTick_Register_Accessor_Macros SysTick - Register accessor macros
 * @{
 */


/* SysTick - Register instance definitions */
/* SysTick */





/**
 * @}
 */ /* end of group SysTick_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group SysTick_Peripheral */


/* ----------------------------------------------------------------------------
   -- TPM
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TPM_Peripheral TPM
 * @{
 */

/** TPM - Peripheral register structure */
typedef struct TPM_MemMap {
  uint32_t SC;                                     /**< Status and Control, offset: 0x0 */
  uint32_t CNT;                                    /**< Counter, offset: 0x4 */
  uint32_t MOD;                                    /**< Modulo, offset: 0x8 */
  struct {                                         /* offset: 0xC, array step: 0x8 */
    uint32_t CnSC;                                   /**< Channel (n) Status and Control, array offset: 0xC, array step: 0x8 */
    uint32_t CnV;                                    /**< Channel (n) Value, array offset: 0x10, array step: 0x8 */
  } CONTROLS[6];
  uint8_t RESERVED_0[20];
  uint32_t STATUS;                                 /**< Capture and Compare Status, offset: 0x50 */
  uint8_t RESERVED_1[48];
  uint32_t CONF;                                   /**< Configuration, offset: 0x84 */
} volatile *TPM_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- TPM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TPM_Register_Accessor_Macros TPM - Register accessor macros
 * @{
 */


/* TPM - Register accessors */
#line 5863 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group TPM_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- TPM Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TPM_Register_Masks TPM Register Masks
 * @{
 */

/* SC Bit Fields */
#line 5893 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CNT Bit Fields */



/* MOD Bit Fields */



/* CnSC Bit Fields */
#line 5916 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CnV Bit Fields */



/* STATUS Bit Fields */
#line 5935 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CONF Bit Fields */
#line 5952 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group TPM_Register_Masks */


/* TPM - Peripheral instance base addresses */
/** Peripheral TPM0 base pointer */

/** Peripheral TPM1 base pointer */

/** Peripheral TPM2 base pointer */

/** Array initializer of TPM peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- TPM - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TPM_Register_Accessor_Macros TPM - Register accessor macros
 * @{
 */


/* TPM - Register instance definitions */
/* TPM0 */
#line 5997 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* TPM1 */
#line 6007 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* TPM2 */
#line 6017 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* TPM - Register array accessors */
#line 6025 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group TPM_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group TPM_Peripheral */


/* ----------------------------------------------------------------------------
   -- TSI
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TSI_Peripheral TSI
 * @{
 */

/** TSI - Peripheral register structure */
typedef struct TSI_MemMap {
  uint32_t GENCS;                                  /**< TSI General Control and Status Register, offset: 0x0 */
  uint32_t DATA;                                   /**< TSI DATA Register, offset: 0x4 */
  uint32_t TSHD;                                   /**< TSI Threshold Register, offset: 0x8 */
} volatile *TSI_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- TSI - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TSI_Register_Accessor_Macros TSI - Register accessor macros
 * @{
 */


/* TSI - Register accessors */




/**
 * @}
 */ /* end of group TSI_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- TSI Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TSI_Register_Masks TSI Register Masks
 * @{
 */

/* GENCS Bit Fields */
#line 6118 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* DATA Bit Fields */
#line 6129 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* TSHD Bit Fields */
#line 6136 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group TSI_Register_Masks */


/* TSI - Peripheral instance base addresses */
/** Peripheral TSI0 base pointer */

/** Array initializer of TSI peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- TSI - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup TSI_Register_Accessor_Macros TSI - Register accessor macros
 * @{
 */


/* TSI - Register instance definitions */
/* TSI0 */




/**
 * @}
 */ /* end of group TSI_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group TSI_Peripheral */


/* ----------------------------------------------------------------------------
   -- UART
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UART_Peripheral UART
 * @{
 */

/** UART - Peripheral register structure */
typedef struct UART_MemMap {
  uint8_t BDH;            /**< UART Baud Rate Register: High, offset: 0x0 */
  uint8_t BDL;            /**< UART Baud Rate Register: Low, offset: 0x1 */
  uint8_t C1;             /**< UART Control Register 1, offset: 0x2 */
  uint8_t C2;             /**< UART Control Register 2, offset: 0x3 */
  uint8_t S1;             /**< UART Status Register 1, offset: 0x4 */
  uint8_t S2;             /**< UART Status Register 2, offset: 0x5 */
  uint8_t C3;             /**< UART Control Register 3, offset: 0x6 */
  uint8_t D;              /**< UART Data Register, offset: 0x7 */
  uint8_t C4;             /**< UART Control Register 4, offset: 0x8 */
} volatile *UART_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- UART - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UART_Register_Accessor_Macros UART - Register accessor macros
 * @{
 */


/* UART - Register accessors */
#line 6216 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group UART_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- UART Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UART_Register_Masks UART Register Masks
 * @{
 */

/* BDH Bit Fields */
#line 6241 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* BDL Bit Fields */



/* C1 Bit Fields */
#line 6262 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C2 Bit Fields */
#line 6279 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* S1 Bit Fields */
#line 6296 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* S2 Bit Fields */
#line 6311 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C3 Bit Fields */
#line 6328 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* D Bit Fields */
#line 6345 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C4 Bit Fields */
#line 6356 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group UART_Register_Masks */


/* UART - Peripheral instance base addresses */
/** Peripheral UART0 base pointer */

/** Peripheral UART1 base pointer */

/** Peripheral UART2 base pointer */

/** Array initializer of UART peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- UART - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UARTLP_Register_Accessor_Macros UARTLP - Register accessor macros
 * @{
 */

/* UART0 */
#line 6394 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* UART - Register instance definitions */
/* UART1 */
#line 6406 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* UART2 */
#line 6416 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group UART_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group UART_Peripheral */


/* ----------------------------------------------------------------------------
   -- UARTLP
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UARTLP_Peripheral UARTLP
 * @{
 */

/** UARTLP - Peripheral register structure */
typedef struct UARTLP_MemMap {
  uint8_t BDH;        /**< UART Baud Rate Register High, offset: 0x0 */
  uint8_t BDL;        /**< UART Baud Rate Register Low, offset: 0x1 */
  uint8_t C1;         /**< UART Control Register 1, offset: 0x2 */
  uint8_t C2;         /**< UART Control Register 2, offset: 0x3 */
  uint8_t S1;         /**< UART Status Register 1, offset: 0x4 */
  uint8_t S2;         /**< UART Status Register 2, offset: 0x5 */
  uint8_t C3;         /**< UART Control Register 3, offset: 0x6 */
  uint8_t D;          /**< UART Data Register, offset: 0x7 */
  uint8_t MA1;        /**< UART Match Address Registers 1, offset: 0x8 */
  uint8_t MA2;        /**< UART Match Address Registers 2, offset: 0x9 */
  uint8_t C4;         /**< UART Control Register 4, offset: 0xA */
  uint8_t C5;         /**< UART Control Register 5, offset: 0xB */
} volatile *UARTLP_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- UARTLP - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UARTLP_Register_Accessor_Macros UARTLP - Register accessor macros
 * @{
 */


/* UARTLP - Register accessors */
#line 6475 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group UARTLP_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- UARTLP Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup UARTLP_Register_Masks UARTLP Register Masks
 * @{
 */

/* BDH Bit Fields */
#line 6500 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* BDL Bit Fields */



/* C1 Bit Fields */
#line 6521 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C2 Bit Fields */
#line 6538 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* S1 Bit Fields */
#line 6555 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* S2 Bit Fields */
#line 6572 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C3 Bit Fields */
#line 6589 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* D Bit Fields */
#line 6606 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* MA1 Bit Fields */



/* MA2 Bit Fields */



/* C4 Bit Fields */
#line 6624 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* C5 Bit Fields */
#line 6633 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group UARTLP_Register_Masks */




/**
 * @}
 */ /* end of group UARTLP_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group UARTLP_Peripheral */


/* ----------------------------------------------------------------------------
   -- USB
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USB_Peripheral USB
 * @{
 */

/** USB - Peripheral register structure */
typedef struct USB_MemMap {
  uint8_t PERID;                                   /**< Peripheral ID register, offset: 0x0 */
  uint8_t RESERVED_0[3];
  uint8_t IDCOMP;                                  /**< Peripheral ID Complement register, offset: 0x4 */
  uint8_t RESERVED_1[3];
  uint8_t REV;                                     /**< Peripheral Revision register, offset: 0x8 */
  uint8_t RESERVED_2[3];
  uint8_t ADDINFO;                                 /**< Peripheral Additional Info register, offset: 0xC */
  uint8_t RESERVED_3[3];
  uint8_t OTGISTAT;                                /**< OTG Interrupt Status register, offset: 0x10 */
  uint8_t RESERVED_4[3];
  uint8_t OTGICR;                                  /**< OTG Interrupt Control Register, offset: 0x14 */
  uint8_t RESERVED_5[3];
  uint8_t OTGSTAT;                                 /**< OTG Status register, offset: 0x18 */
  uint8_t RESERVED_6[3];
  uint8_t OTGCTL;                                  /**< OTG Control register, offset: 0x1C */
  uint8_t RESERVED_7[99];
  uint8_t ISTAT;                                   /**< Interrupt Status register, offset: 0x80 */
  uint8_t RESERVED_8[3];
  uint8_t INTEN;                                   /**< Interrupt Enable register, offset: 0x84 */
  uint8_t RESERVED_9[3];
  uint8_t ERRSTAT;                                 /**< Error Interrupt Status register, offset: 0x88 */
  uint8_t RESERVED_10[3];
  uint8_t ERREN;                                   /**< Error Interrupt Enable register, offset: 0x8C */
  uint8_t RESERVED_11[3];
  uint8_t STAT;                                    /**< Status register, offset: 0x90 */
  uint8_t RESERVED_12[3];
  uint8_t CTL;                                     /**< Control register, offset: 0x94 */
  uint8_t RESERVED_13[3];
  uint8_t ADDR;                                    /**< Address register, offset: 0x98 */
  uint8_t RESERVED_14[3];
  uint8_t BDTPAGE1;                                /**< BDT Page Register 1, offset: 0x9C */
  uint8_t RESERVED_15[3];
  uint8_t FRMNUML;                                 /**< Frame Number Register Low, offset: 0xA0 */
  uint8_t RESERVED_16[3];
  uint8_t FRMNUMH;                                 /**< Frame Number Register High, offset: 0xA4 */
  uint8_t RESERVED_17[3];
  uint8_t TOKEN;                                   /**< Token register, offset: 0xA8 */
  uint8_t RESERVED_18[3];
  uint8_t SOFTHLD;                                 /**< SOF Threshold Register, offset: 0xAC */
  uint8_t RESERVED_19[3];
  uint8_t BDTPAGE2;                                /**< BDT Page Register 2, offset: 0xB0 */
  uint8_t RESERVED_20[3];
  uint8_t BDTPAGE3;                                /**< BDT Page Register 3, offset: 0xB4 */
  uint8_t RESERVED_21[11];
  struct {                                         /* offset: 0xC0, array step: 0x4 */
    uint8_t ENDPT;                                   /**< Endpoint Control register, array offset: 0xC0, array step: 0x4 */
    uint8_t RESERVED_0[3];
  } ENDPOINT[16];
  uint8_t USBCTRL;                                 /**< USB Control register, offset: 0x100 */
  uint8_t RESERVED_22[3];
  uint8_t OBSERVE;                                 /**< USB OTG Observe register, offset: 0x104 */
  uint8_t RESERVED_23[3];
  uint8_t CONTROL;                                 /**< USB OTG Control register, offset: 0x108 */
  uint8_t RESERVED_24[3];
  uint8_t USBTRC0;                                 /**< USB Transceiver Control Register 0, offset: 0x10C */
} volatile *USB_MemMapPtr;

/* ----------------------------------------------------------------------------
   -- USB - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USB_Register_Accessor_Macros USB - Register accessor macros
 * @{
 */


/* USB - Register accessors */
#line 6757 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group USB_Register_Accessor_Macros */


/* ----------------------------------------------------------------------------
   -- USB Register Masks
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USB_Register_Masks USB Register Masks
 * @{
 */

/* PERID Bit Fields */



/* IDCOMP Bit Fields */



/* REV Bit Fields */



/* ADDINFO Bit Fields */





/* OTGISTAT Bit Fields */
#line 6803 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* OTGICR Bit Fields */
#line 6816 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* OTGSTAT Bit Fields */
#line 6829 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* OTGCTL Bit Fields */
#line 6838 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ISTAT Bit Fields */
#line 6855 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* INTEN Bit Fields */
#line 6872 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ERRSTAT Bit Fields */
#line 6887 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ERREN Bit Fields */
#line 6902 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* STAT Bit Fields */
#line 6910 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CTL Bit Fields */
#line 6927 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* ADDR Bit Fields */





/* BDTPAGE1 Bit Fields */



/* FRMNUML Bit Fields */



/* FRMNUMH Bit Fields */



/* TOKEN Bit Fields */
#line 6952 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* SOFTHLD Bit Fields */



/* BDTPAGE2 Bit Fields */



/* BDTPAGE3 Bit Fields */



/* ENDPT Bit Fields */
#line 6979 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* USBCTRL Bit Fields */




/* OBSERVE Bit Fields */
#line 6991 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
/* CONTROL Bit Fields */


/* USBTRC0 Bit Fields */
#line 7003 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/**
 * @}
 */ /* end of group USB_Register_Masks */


/* USB - Peripheral instance base addresses */
/** Peripheral USB0 base pointer */

/** Array initializer of USB peripheral base pointers */


/* ----------------------------------------------------------------------------
   -- USB - Register accessor macros
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup USB_Register_Accessor_Macros USB - Register accessor macros
 * @{
 */


/* USB - Register instance definitions */
/* USB0 */
#line 7069 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* USB - Register array accessors */


/**
 * @}
 */ /* end of group USB_Register_Accessor_Macros */


/**
 * @}
 */ /* end of group USB_Peripheral */


/*
** End of section using anonymous unions
*/

#line 7094 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"
  #pragma language=default




/**
 * @}
 */ /* end of group Peripheral_defines */


/* ----------------------------------------------------------------------------
   -- Backward Compatibility
   ---------------------------------------------------------------------------- */

/**
 * @addtogroup Backward_Compatibility_Symbols Backward Compatibility
 * @{
 */

/* No backward compatibility issues. */

/**
 * @}
 */ /* end of group Backward_Compatibility_Symbols */


#line 7128 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\headers\\MKL25Z4.h"

/* MKL25Z4.h, eof. */
#line 19 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"

//2．定义开关总中断





//3．位操作宏函数（置位、清位、获得寄存器一位的状态）




//4．重定义基本数据类型（类型别名宏定义）
typedef unsigned char        uint_8;   // 无符号8位数，字节
typedef unsigned short int   uint_16;  // 无符号16位数，字
typedef unsigned long int    uint_32;  // 无符号32位数，长字
typedef char                 int_8;    // 有符号8位数
typedef short int            int_16;   // 有符号16位数
typedef int                  int_32;   // 有符号32位数
//不优化类型
typedef volatile uint_8      vuint_8;  // 不优化无符号8位数，字节
typedef volatile uint_16     vuint_16; // 不优化无符号16位数，字
typedef volatile uint_32     vuint_32; // 不优化无符号32位数，长字
typedef volatile int_8       vint_8;   // 不优化有符号8位数
typedef volatile int_16      vint_16;  // 不优化有符号16位数
typedef volatile int_32      vint_32;  // 不优化有符号32位数

typedef	union
{
	uint_32	DW;
	uint_16	W[2];
	uint_8	B[4];
	struct
	{
		uint_32 b0:1; uint_32 b1:1; uint_32 b2:1; uint_32 b3:1; uint_32 b4:1; uint_32 b5:1; uint_32 b6:1; uint_32 b7:1; 
		uint_32 b8:1; uint_32 b9:1; uint_32 b10:1;uint_32 b11:1;uint_32 b12:1;uint_32 b13:1;uint_32 b14:1;uint_32 b15:1;
		uint_32 b16:1;uint_32 b17:1;uint_32 b18:1;uint_32 b19:1;uint_32 b20:1;uint_32 b21:1;uint_32 b22:1;uint_32 b23:1;
		uint_32 b24:1;uint_32 b25:1;uint_32 b26:1;uint_32 b27:1;uint_32 b28:1;uint_32 b29:1;uint_32 b30:1;uint_32 b31:1;
	};
}Dtype;		//sizeof(Dtype)	为 4 
/*
 * 中断号类型声明
 */
typedef enum
{
   NMI_IRQn                      = -14,                 /**< Non-maskable interrupt */
   Hard_Fault_IRQn               = -13,                 /**< Hard fault exception */
   Reserved4_IRQn                = -12,                 /**< Reserved interrupt 4 */
   Reserved5_IRQn                = -11,                 /**< Reserved interrupt 5 */
   Reserved6_IRQn                = -10,                 /**< Reserved interrupt 6 */
   Reserved7_IRQn                = -9,                  /**< Reserved interrupt 7 */
   Reserved8_IRQn                = -8,                  /**< Reserved interrupt 8 */
   Reserved9_IRQn                = -7,                  /**< Reserved interrupt 9 */
   Reserved10_IRQn               = -6,                  /**< Reserved interrupt 10 */
   SVCall_IRQn                   = -5,                  /**< A supervisor call exception */
   Reserved12_IRQn               = -4,                  /**< Reserved interrupt 12 */
   Reserved13_IRQn               = -3,                  /**< Reserved interrupt 13 */
   PendableSrvReq_IRQn           = -2,                  /**< PendSV exception - request for system level service */
   SysTick_IRQn                  = -1,                  /**< SysTick interrupt */

   DMA0_IRQn                     =  0,                  /**< DMA channel 0 transfer complete/error interrupt */
   DMA1_IRQn                     =  1,                  /**< DMA channel 1 transfer complete/error interrupt */
   DMA2_IRQn                     =  2,                  /**< DMA channel 2 transfer complete/error interrupt */
   DMA3_IRQn                     =  3,                  /**< DMA channel 3 transfer complete/error interrupt */
   Reserved20_IRQn               =  4,                  /**< Reserved interrupt 20 */
   FTFA_IRQn                     =  5,                  /**< FTFA command complete/read collision interrupt */
   LVD_LVW_IRQn                  =  6,                  /**< Low Voltage Detect, Low Voltage Warning */
   LLW_IRQn                      =  7,                  /**< Low Leakage Wakeup */
   I2C0_IRQn                     =  8,                  /**< I2C0 interrupt */
   I2C1_IRQn                     =  9,                  /**< I2C0 interrupt 25 */
   SPI0_IRQn                     = 10,                  /**< SPI0 interrupt */
   SPI1_IRQn                     = 11,                  /**< SPI1 interrupt */
   UART0_IRQn                    = 12,                  /**< UART0 status/error interrupt */
   UART1_IRQn                    = 13,                  /**< UART1 status/error interrupt */
   UART2_IRQn                    = 14,                  /**< UART2 status/error interrupt */
   ADC0_IRQn                     = 15,                  /**< ADC0 interrupt */
   CMP0_IRQn                     = 16,                  /**< CMP0 interrupt */
   TPM0_IRQn                     = 17,                  /**< TPM0 fault, overflow and channels interrupt */
   TPM1_IRQn                     = 18,                  /**< TPM1 fault, overflow and channels interrupt */
   TPM2_IRQn                     = 19,                  /**< TPM2 fault, overflow and channels interrupt */
   RTC_IRQn                      = 20,                  /**< RTC interrupt */
   RTC_Seconds_IRQn              = 21,                  /**< RTC seconds interrupt */
   PIT_IRQn                      = 22,                  /**< PIT timer interrupt */
   I2S0_IRQn                     = 23,                  /**< I2S0 transmit interrupt */
   USB0_IRQn                     = 24,                  /**< USB0 interrupt */
   DAC0_IRQn                     = 25,                  /**< DAC0 interrupt */
   TSI0_IRQn                     = 26,                  /**< TSI0 interrupt */
   MCG_IRQn                      = 27,                  /**< MCG interrupt */
   LPTMR_IRQn                    = 28,                  /**< LPTimer interrupt */
   Reserved45_IRQn               = 29,                  /**< Reserved interrupt 45 */
   PORTA_IRQn                    = 30,                  /**< Port A interrupt */
   PORTC_PORTD_IRQn              = 31                   /**< Port C and port D interrupt */
} IRQn_t, IRQn_Type;
/*
 * 定义运行到RAM的函数
 */







//喂狗




// 7、包含相关头文件
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\assert.h"
/*
 * File:        assert.h
 * Purpose:     Provide macro for software assertions
 *
 * Notes:       assert_failed() defined in assert.c
 */




/********************************************************************/

void assert_failed(char *, int);

#line 22 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\assert.h"

/********************************************************************/


#line 129 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\io.h"
/*
 * File:		io.h
 * Purpose:		Serial Input/Output routines
 *
 */




/********************************************************************/

char	
in_char(void);

void
out_char(char);

int
char_present(void);

int		
printf(const char *, ... );

int
sprintf(char *, const char *, ... );

/********************************************************************/

#line 130 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\memtest.h"
/**********************************************************************
 *
 * Filename:    memtest.h
 * 
 * Description: Memory-testing module API.
 *
 * Notes:       The memory tests can be easily ported to systems with
 *              different data bus widths by redefining 'datum' type.
 *
 * 
 * Copyright (c) 2000 by Michael Barr.  This software is placed into
 * the public domain and may be used for any purpose.  However, this
 * notice must not be changed or removed and no warranty is either
 * expressed or implied by its publication or distribution.
 **********************************************************************/





/*
 * Define NULL pointer value.
 */




/*
 * Set the data bus width.
 */
typedef unsigned long datum;

/*
 * Function prototypes.
 */
datum   memTestDataBus(volatile datum * address);
datum * memTestAddressBus(volatile datum * baseAddress, unsigned long nBytes);
datum * memTestDevice(volatile datum * baseAddress, unsigned long nBytes);




#line 131 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\queue.h"
/*
 * File:    queue.h
 * Purpose: Implement a first in, first out linked list
 *
 * Notes:
 */




/********************************************************************/

/* 
 * Individual queue node
 */
typedef struct NODE
{
    struct NODE *next;
} QNODE;

/* 
 * Queue Struture - linked list of qentry items 
 */
typedef struct
{
    QNODE *head;
    QNODE *tail;
} QUEUE;

/*
 * Functions provided by queue.c
 */
void
queue_init(QUEUE *);

int
queue_isempty(QUEUE *);

void
queue_add(QUEUE *, QNODE *);

QNODE*
queue_remove(QUEUE *);

QNODE*
queue_peek(QUEUE *);

void
queue_move(QUEUE *, QUEUE *);

/********************************************************************/

#line 132 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\stdlib.h"
/*
 * File:        stdlib.h
 * Purpose:     Function prototypes for standard library functions
 *
 * Notes:
 */




/********************************************************************
 * Standard library functions
 ********************************************************************/

int
isspace (int);

int
isalnum (int);

int
isdigit (int);

int
isupper (int);

int
strcasecmp (const char *, const char *);

int
strncasecmp (const char *, const char *, int);

unsigned long
strtoul (char *, char **, int);

int
strlen (const char *);

char *
strcat (char *, const char *);

char *
strncat (char *, const char *, int);

char *
strcpy (char *, const char *);

char *
strncpy (char *, const char *, int);

int
strcmp (const char *, const char *);

int
strncmp (const char *, const char *, int);

void *
memcpy (void *, const void *, unsigned);

void *
memset (void *, int, unsigned);

void
free (void *);
 
void *
malloc (unsigned);

/********************************************************************/

#line 133 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\uif.h"
/*
 * File:    uif.h
 * Purpose: Provide an interactive user interface
 *
 * Notes:   The commands, set/show parameters, and prompt are configured
 *          at the project level
 */




/********************************************************************/

/*
 * Function prototypes
 */
char *
get_line (char *);

uint_32
get_value (char *, int *, int);

void
run_cmd (void);

int
make_argv (char *, char **);

void
uif_cmd_help (int, char **);

void
uif_cmd_set (int, char **);

void
uif_cmd_show (int, char **);

/*
 * Maximum command line arguments
 */


/*
 * Maximum length of the command line
 */


/*
 * The command table entry data structure
 */
typedef const struct
{
    char *  cmd;                    /* command name user types, ie. GO  */
    int     min_args;               /* min num of args command accepts  */
    int     max_args;               /* max num of args command accepts  */
    int     flags;                  /* command flags (e.g. repeat)      */
    void    (*func)(int, char **);  /* actual function to call          */
    char *  description;            /* brief description of command     */
    char *  syntax;                 /* syntax of command                */
} UIF_CMD;

/*
 * Prototype and macro for size of the command table
 */




extern UIF_CMD UIF_CMDTAB[];
extern const int UIF_NUM_CMD;






/*
 * Macros for User InterFace command table entries
 */















/*
 * Macro to include all standard user interface commands
 */





/*
 * The set/show table entry data structure
 */
typedef const struct
{
    char *  option;
    int     min_args;
    int     max_args;
    void    (*func)(int, char **);
    char *  syntax;
} UIF_SETCMD;

/*
 * Prototype and macro for size of the table
 */




extern UIF_SETCMD UIF_SETCMDTAB[];
extern const int UIF_NUM_SETCMD;




/*
 * Strings defined in uif.c that may be useful to external functions
 */
extern const char HELPMSG[];
extern const char INVARG[];
extern const char INVALUE[];

/********************************************************************/

#line 134 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\typedef.h"







#line 38 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\typedef.h"





#line 135 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
//#include "tower.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\platforms\\freedom.h"
/*
 * File:        freedom.h
 * Purpose:     Kinetis Freedom hardware definitions
 *
 * Notes:
 */




#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\mcg\\mcg.h"
/******************** (C) COPYRIGHT 2011  ********************
 * 文件名       ：mcg.h
 * 描述         ：锁相环头文件
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：
 * 淘宝店       ：
**********************************************************************************/




#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\setup.h"
/*
 * 文件：setup.h
 * 目的：设置各个模块所用到的片内外设的模块号，通道号，管脚号。
 *
 */




/*****************************宏定义符号*******************************/





/*****************************io控制标志检测*******************************/
/***************************************************************
PTA4,PTA5,PTA16,PTA17.		有中断
PTD3,PTD4,PTD5,PTD6,PTD7.	有中断，有拨码开关
PTE20,PTE23,PTE30.		有自锁和拨码开关，
****************************************************************/

#line 29 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\setup.h"





/*****************************AD*******************************/
#line 41 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\setup.h"


/*****************************UART通讯*******************************/




/*****************************超声波测距*******************************/







/*****************************电机*******************************/







/*****************************舵机*******************************/




/*****************************PID*******************************/





/*************************************模拟定时器*****************************/



/***************************************调试************************************/
/***************************************************************
PTA4,PTA5,PTA16,PTA17.		有中断
PTD3,PTD4,PTD5,PTD6,PTD7.	有中断，有拨码开关
PTE20,PTE23,PTE30.		有自锁和拨码开关，
****************************************************************/









#line 17 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\mcg\\mcg.h"

enum crystal_val
{
    XTAL2,
    XTAL4,
    XTAL6,
    XTAL8,
    XTAL10,
    XTAL12,
    XTAL14,
    XTAL16,
    XTAL18,
    XTAL20,
    XTAL22,
    XTAL24,
    XTAL26,
    XTAL28,
    XTAL30,
    XTAL32
};


typedef enum clk_option
{
    PLLUSR      ,  //自定义设置分频系数模式，直接加载 全局变量 mcg_div 的值
    PLL48    = 48,
    PLL50    = 50,
    PLL80    = 80,
    PLL96    = 96,
    PLL100   = 100,
    PLL110   = 110,
    PLL120   = 120,
    PLL125   = 125,
    PLL130   = 130,
    PLL140   = 140,
    PLL150   = 150,
    PLL160   = 160,
    PLL170   = 170,
    PLL180   = 180,
    PLL200   = 200, //绝大部分芯片都成超到这个程度
    PLL225   = 225, //不同芯片，不同板子，超频能力不一样，不一定全部都能超到这个水平
    PLL250   = 250
} clk_option;


//时钟分频因子
struct mcg_div
{
    unsigned char prdiv;       //外部晶振分频因子选项
    unsigned char vdiv;        //外部晶振倍频因子选项
    unsigned char core_div;    //内核时钟分频因子
    unsigned char bus_div;     //总线时钟分频因子
    unsigned char flex_div;    //flex时钟分频因子
    unsigned char flash_div;   //flash时钟分频因子
};
/*
 * 定义晶振时钟，单位为MHz
 */


extern struct mcg_div  mcg_div;


unsigned char pll_init(clk_option);         //锁相环初始化



/********************** 内部用 或 不常用  **************************/





/********************************************************************/
#line 12 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\platforms\\freedom.h"


extern unsigned long core_clk_khz;
extern unsigned long core_clk_mhz;
extern unsigned long bus_clk_khz;

/********************************************************************/

/* Global defines */


/* Define the CPU used on this hardware platform */




/* Define the default serial port interface */



/*************************************************************************
*                            蓝宙电子工作室
*
*  功能说明：定义时钟频率
*  备    注：如果 MCG_CLK_MHZ 定义为 PLLUSR ，则初始化系统时用下面的自定义因子
*************************************************************************/
//#define NO_PLL_INIT








/*********************   自定义 时钟频率 分频因子   ********************/
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\mcg\\Fire_kinetis_MCG_CFG.h"
/******************** (C) COPYRIGHT 2011  ********************
 * 文件名       ：Fire_Kinetis_MCG_CFG.h
 * 描述         ：配置锁相环的列表，仅仅用于查找数据，不参与程序编译
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：
 * 淘宝店       ：
 * 技术支持论坛 ：
**********************************************************************************/
#line 516 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\mcg\\Fire_kinetis_MCG_CFG.h"









#line 49 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\platforms\\freedom.h"
#line 55 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\platforms\\freedom.h"
/***********************************************************************/
#line 137 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\arm_cm0.h"
/*
 * File:		arm_cm0.h
 * Purpose:		Definitions common to all ARM Cortex M4 processors
 *
 * Notes:
 */




/*ARM Cortex M0 implementation for interrupt priority shift*/


/***********************************************************************/
// function prototypes for arm_cm0.c
void stop (void);
void wait (void);
void write_vtor (int);
void enable_irq (int);
void disable_irq (int);
void set_irq_priority (int, int);

/***********************************************************************/
/*!< Macro to enable all interrupts. */


 /*!< Macro to disable all interrupts. */

/***********************************************************************/


/*
 * Misc. Defines
 */

























/***********************************************************************/
/*
 * The basic data types
 */
typedef unsigned char		uint8;  /*  8 bits */
typedef unsigned short int	uint16; /* 16 bits */
typedef unsigned long int	uint32; /* 32 bits */

typedef char			int8;   /*  8 bits */
typedef short int	        int16;  /* 16 bits */
typedef int		        int32;  /* 32 bits */

typedef volatile int8		vint8;  /*  8 bits */
typedef volatile int16		vint16; /* 16 bits */
typedef volatile int32		vint32; /* 32 bits */

typedef volatile uint8		vuint8;  /*  8 bits */
typedef volatile uint16		vuint16; /* 16 bits */
typedef volatile uint32		vuint32; /* 32 bits */

// function prototype for main function
void  main(void);

/***********************************************************************/


#line 138 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
//#include "sysinit.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\vectors.h"
/******************************************************************************
* File:    vectors.h
*
* Purpose: Provide custom interrupt service routines for Kinetis L Family .
*
* NOTE: This vector table is a superset table, so interrupt sources might be
*       listed that are not available on the specific Kinetis L Family device you are
*       using.
******************************************************************************/




// function prototype for default_isr in vectors.c
void default_isr(void);
void abort_isr(void);
void SRTC_ISR(void);

void hard_fault_handler_c(unsigned int * hardfault_args);

/* Interrupt Vector Table Function Pointers */

/* Interrupt Vector Table Function Pointers */
#line 53 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\vectors.h"

typedef void pointer(void);

extern void __startup(void);
extern unsigned long __BOOT_STACK_ADDRESS[];
extern void __iar_program_start(void);
extern void SRTC_ISR(void);
                                        // Address   Vector IRQ   Source module   Source description
#line 109 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\vectors.h"

/* Flash configuration field values below */
/* Please be careful when modifying any of
 * the values below as it can secure the
* flash (possibly permanently): 0x400-0x409.
 */




//#define CONFIG_4	0xffffdffe //b5=0,b4=1,b0=1 div1 slow works
//#define CONFIG_4	0xffffcefe //b5=0,b4=0,b0=0;div8 slow
//#define CONFIG_4	0xffffeefe //b5=1,b4=0,b0=0 div8 fast
//#define CONFIG_4	0xffffcffe //b5=0,b4=0,b0=1;div4 slow
//#define CONFIG_4	0xffffeffe //b5=1,b4=0,b0=1;div4 fast
//#define CONFIG_4	0xfffffefe //b5=1,b4=1,b0=0;div2 fast
//#define CONFIG_4	0xffffdefe //b5=0,b4=1,b0=0;div2 slow



/* End of "vectors.h" */




   
   
   
   







#line 140 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\startup.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：startup.h
 * 描述         ：CPU启动相关函数的头文件
 * 备注         ：
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/





/********************************************************************/

void common_startup(void);

/********************************************************************/

#line 141 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"

#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\sysinit.h"





#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：arm_cm4.h
 * 描述         ：工程模版实验
 *
 * 实验平台     ：landzo电子开发版
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：landzo 蓝电子
 * 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/

#line 148 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"


void  init_critical(void);
void  enter_critical(void);
void  exit_critical(void);
#line 7 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\cpu\\sysinit.h"


//定义系统时钟、总线时钟

//===========================================================================
//函数名称：sys_init
//函数返回：无
//参数说明：无 
//功能概要：(1)KL25的EXTAL(40)、XTAL(41)接8Mhz外部晶振，产生PLL/FLL输出时钟频
//             率48MHz,内核时钟48MHz，总线时钟24MHz，内部参考时钟4MHz。
//          (2)对于这些频率，sys_init.h有相应的宏常量定义可以供编程时使用
//===========================================================================
void sys_init(void);

#line 143 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：gpio_cfg.h
 * 描述         ：gpio的端口定义头文件
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：蓝宙电子工作室
 * 淘宝店       ：
**********************************************************************************/



//定义PTA的端口  ——by 蓝宙
#line 48 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTB的端口  ——by 蓝宙
#line 82 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTC的端口  ——by 蓝宙
#line 116 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTD的端口  ——by 蓝宙
#line 150 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTE的端口  ——by 蓝宙
#line 184 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"



//定义PTA的输出输入方向  ——by 蓝宙
#line 220 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTB的输出输入方向  ——by 蓝宙
#line 254 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTC的输出输入方向  ——by 蓝宙
#line 288 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTD的输出输入方向  ——by 蓝宙
#line 322 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTE的输出输入方向  ——by 蓝宙
#line 356 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"


//定义PTA的输入端口  ——by 蓝宙
#line 391 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTB的输入端口  ——by 蓝宙
#line 425 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTC的输入端口  ——by 蓝宙
#line 459 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTD的输入端口  ——by 蓝宙
#line 493 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"

//定义PTE的输入端口  ——by 蓝宙
#line 527 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio_cfg.h"



//定义PTA的8位端口  ——by 蓝宙





//定义PTB的8位端口  ——by 蓝宙






//定义PTC的8位端口  ——by 蓝宙





//定义PTD的8位端口  ——by 蓝宙





//定义PTE的8位端口  ——by 蓝宙






//定义PTA的8位输出输入方向  ——by 蓝宙





//定义PTB的8位输出输入方向  ——by 蓝宙





//定义PTC的8位输出输入方向  ——by 蓝宙





//定义PTD的8位输出输入方向  ——by 蓝宙





//定义PTE的8位输出输入方向  ——by 蓝宙






//定义PTA的8位输入端口  ——by 蓝宙





//定义PTB的8位输入端口  ——by 蓝宙





//定义PTC的8位输入端口  ——by 蓝宙






//定义PTD的8位输入端口  ——by 蓝宙





//定义PTE的8位输入端口  ——by 蓝宙






//定义PTA的16位端口  ——by 蓝宙



//定义PTB的16位端口  ——by 蓝宙



//定义PTC的16位端口  ——by 蓝宙




//定义PTD的16位端口  ——by 蓝宙




//定义PTE的16位端口  ——by 蓝宙




//定义PTA的16位输出输入方向  ——by 蓝宙




//定义PTB的16位输出输入方向  ——by 蓝宙




//定义PTC的16位输出输入方向  ——by 蓝宙




//定义PTD的16位输出输入方向  ——by 蓝宙




//定义PTE的16位输出输入方向  ——by 蓝宙




//定义PTA的16位输入端口  ——by 蓝宙




//定义PTB的16位输入端口  ——by 蓝宙



//定义PTC的16位输入端口  ——by 蓝宙




//定义PTD的16位输入端口  ——by 蓝宙




//定义PTE的16位输入端口  ——by 蓝宙







typedef enum 
{
    /*  PTA端口    */ //0~31
    PTA0,
    PTA1,
    PTA2,
    PTA3,
    PTA4,
    PTA5,
    PTA6,
    PTA7,
    PTA8,
    PTA9,
    PTA10,
    PTA11,
    PTA12,
    PTA13,
    PTA14,
    PTA15,
    PTA16,
    PTA17,
    PTA18,
    PTA19,
    PTA20,
    PTA21,
    PTA22,
    PTA23,
    PTA24,
    PTA25,
    PTA26,
    PTA27,
    PTA28,
    PTA29,
    PTA30,
    PTA31,

    /*  PTB端口    */   //32~63
    PTB0,
    PTB1,
    PTB2,
    PTB3,
    PTB4,
    PTB5,
    PTB6,
    PTB7,
    PTB8,
    PTB9,
    PTB10,
    PTB11,
    PTB12,
    PTB13,
    PTB14,
    PTB15,
    PTB16,
    PTB17,
    PTB18,
    PTB19,
    PTB20,
    PTB21,
    PTB22,
    PTB23,
    PTB24,
    PTB25,
    PTB26,
    PTB27,
    PTB28,
    PTB29,
    PTB30,
    PTB31,

    /*  PTC端口    */
    PTC0,
    PTC1,
    PTC2,
    PTC3,
    PTC4,
    PTC5,
    PTC6,
    PTC7,
    PTC8,
    PTC9,
    PTC10,
    PTC11,
    PTC12,
    PTC13,
    PTC14,
    PTC15,
    PTC16,
    PTC17,
    PTC18,
    PTC19,
    PTC20,
    PTC21,
    PTC22,
    PTC23,
    PTC24,
    PTC25,
    PTC26,
    PTC27,
    PTC28,
    PTC29,
    PTC30,
    PTC31,

    /*  PTD端口    */
    PTD0,
    PTD1,
    PTD2,
    PTD3,
    PTD4,
    PTD5,
    PTD6,
    PTD7,
    PTD8,
    PTD9,
    PTD10,
    PTD11,
    PTD12,
    PTD13,
    PTD14,
    PTD15,
    PTD16,
    PTD17,
    PTD18,
    PTD19,
    PTD20,
    PTD21,
    PTD22,
    PTD23,
    PTD24,
    PTD25,
    PTD26,
    PTD27,
    PTD28,
    PTD29,
    PTD30,
    PTD31,

    /*  PTE端口    */
    PTE0,
    PTE1,
    PTE2,
    PTE3,
    PTE4,
    PTE5,
    PTE6,
    PTE7,
    PTE8,
    PTE9,
    PTE10,
    PTE11,
    PTE12,
    PTE13,
    PTE14,
    PTE15,
    PTE16,
    PTE17,
    PTE18,
    PTE19,
    PTE20,
    PTE21,
    PTE22,
    PTE23,
    PTE24,
    PTE25,
    PTE26,
    PTE27,
    PTE28,
    PTE29,
    PTE30,
    PTE31,

} PTxn;


#line 145 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\port\\port.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
* 文件名       ： port.h
* 描述         ：工程模版实验
*
* 实验平台     ：landzo电子开发版
* 库版本       ：
* 嵌入系统     ：
*
* 作者         ：landzo 蓝电子
* 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/




#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"




#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：arm_cm4.h
 * 描述         ：工程模版实验
 *
 * 实验平台     ：landzo电子开发版
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：landzo 蓝电子
 * 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/

#line 148 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"


void  init_critical(void);
void  enter_critical(void);
void  exit_critical(void);
#line 6 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"

/*
 * Include 用户自定义的头文件
 */

#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
* 文件名       ： gpio.h
* 描述         ：工程模版实验
*
* 实验平台     ：landzo电子开发版
* 库版本       ：
* 嵌入系统     ：
*
* 作者         ：landzo 蓝电子
* 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/




#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\app\\include.h"

#line 18 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\gpio\\gpio.h"

/*
 * 定义管脚方向
 */
typedef enum GPIO_CFG
{
    //这里的值不能改！！！
    GPI         = 0,                                //定义管脚输入方向      GPIOx_PDDRn里，0表示输入，1表示输出
    GPO         = 1,                                //定义管脚输出方向
    
    GPI_DOWN    = 0x02,                       //输入下拉              PORTx_PCRn需要PE=1，PS=0
    GPI_UP      = 0x03,                       //输入上拉              PORTx_PCRn需要PE=1，PS=1
    GPI_PF      = 0x10,                       //输入，带无源滤波器,滤波范围：10 MHz ~ 30 MHz 。不支持高速接口（>=2MHz）  0b10000           Passive Filter Enable
    GPI_DOWN_PF = GPI_DOWN | GPI_PF ,         //输入下拉，带无源滤波器
    GPI_UP_PF   = GPI_UP   | GPI_PF ,         //输入上拉，带无源滤波器

    GPO_HDS     = 0x41,                        //输出高驱动能力   0b100 0001    High drive strength
    GPO_SSR     = 0x05,                        //输出慢变化率          0b101    Slow slew rate
    GPO_HDS_SSR = GPO_HDS | GPO_SSR,           //输出高驱动能力、慢变化率
} GPIO_CFG;

//定义管脚方式
typedef enum GPIO_INP{
  
   GPI_DISAB      = 0X0  ,                     //不允许中断
   GPI_EMA_RING   = 0X01 ,                     //DMA上升沿中断
   GPI_EMA_FALL   = 0X02 ,                     //DMA下降沿中断
   GPI_EMA_EITH   = 0X03 ,                     //DMA跳变沿中断
   GPI_INP_ZERO   = 0X08 ,                     //逻辑零中断
   GPI_INP_RING   = 0X09 ,                     //上升沿中断
   GPI_INP_FALL   = 0X0A ,                     //下降沿中断
   GPI_INP_EITH   = 0X0B ,                     //跳变沿中断
   GPI_INP_ONE    = 0X0C ,                     //逻辑一中断 
    
} GPIO_INP ;  //引脚中断定义 




void gpio_Interrupt_init(PTxn ptxn, GPIO_CFG cfg, GPIO_INP mode);
void gpio_init(PTxn ptxn, uint8_t dir, uint8_t state);
void gpio_set(PTxn ptxn, uint8_t state);
uint8_t gpio_get(PTxn ptxn);
void gpio_turn(PTxn ptxn);






//GPIO  1位操作




//GPIO  2位操作




//GPIO  4位操作




//GPIO  8位操作





//GPIO  16位操作




//GPIO  32位操作






/****************************内部使用，用户不需要关心****************************/




#line 12 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\drivers\\port\\port.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
* 文件名       ： port.h
* 描述         ：工程模版实验
*
* 实验平台     ：landzo电子开发版
* 库版本       ：
* 嵌入系统     ：
*
* 作者         ：landzo 蓝电子
* 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/

#line 13 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\uart\\uart.h"
//============================================================================
//文件名称：uart.h
//功能概要：UART底层驱动构件头文件
//版权所有：苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
//更新记录：2012-11-12   V1.0
//============================================================================




#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：arm_cm4.h
 * 描述         ：工程模版实验
 *
 * 实验平台     ：landzo电子开发版
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：landzo 蓝电子
 * 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/

#line 148 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"


void  init_critical(void);
void  enter_critical(void);
void  exit_critical(void);
#line 12 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\uart\\uart.h"


typedef enum  UARTn
{
    //初始化默认配置       --TXD--      --RXD--     可以复用其他通道，请自行修改 uart_init
    UART0,    //           PTD7         PTD6
    UART1,    //           PTC4         PTC3
    UART2,    //           PTD3         PTD2

} UARTn;

void uart_init (UARTn uratn,uint32_t baud_rate);

char uart_getchar (UARTn uratn);                     //无限等待接受1个字节
uint8_t uart_pendchar (UARTn uratn,uint8_t *fp);    //有限时间等待接收一个字符
uint8_t uart_pendstr (UARTn uratn, uint8_t *str);   //有限时间等待接收字符串

int uart_query (UARTn uratn);                                 //查询是否接收到一个字节
void uart_putchar (UARTn uratn, char ch);                    //发送1个字节
void uart_sendN (UARTn uratn, uint8_t *buff, uint16_t len);  //发送n个字节
void uart_sendStr (UARTn uratn, const uint8_t *str);         //发送字符串

void uart_irq_EN(UARTn uratn);                               //开串口接收中断
void uart_irq_DIS(UARTn uratn);                               //关串口接收中断 


#line 14 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\i2c\\i2c.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：i2c.h
 * 描述         ：I2C头文件
 * 备注         ：修改自官方例程
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：
 * 淘宝店       ：http://landzo.taobao.com/
**********************************************************************************/



#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\drivers\\i2c\\i2c_cfg.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：i2c_cfg.h
 * 描述         ：I2C头文件
 * 备注         ：修改自官方例程
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：
 * 淘宝店       ：http://landzo.taobao.com/
**********************************************************************************/





//启动信号



//停止信号



//重复启动


//进入接收模式(应答,需要接收多个数据，接收最后一个字节前需要禁用应答i2c_DisableAck)


                                      
//进入接收模式(不应答,只接收一个字节)

                                    //I2C_C1_REG(I2Cx[I2Cn]) |=  I2C_C1_TXAK_MASK

//禁用应答(接收最后一个字节)


//等待 I2C_S



//判断是否应答了


//写一个字节




#line 17 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\i2c\\i2c.h"

/**
 *  @brief I2C模块编号
 */

typedef enum I2Cn
{
    I2C0  = 0,
    I2C1  = 1
} I2Cn;

/**
 *  @brief 主机读写模式选择
 */
typedef enum MSmode
{
    MWSR =   0x00,  /* 主机写模式  */
    MRSW =   0x01   /* 主机读模式  */
} MSmode;

void iic_init(I2Cn i2cn); 

void  I2C_WriteAddr(I2Cn i2cn, uint8_t SlaveID, uint8_t Addr, uint8_t Data);      //读取地址里的内容
uint8_t    I2C_ReadAddr(I2Cn i2cn, uint8_t SlaveID, uint8_t Addr);                //往地址里写入内容
void  I2C_StartTransmission (I2Cn i2cn, uint8_t SlaveID, MSmode);                //启动传输
//uint8_t iic_read1(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t *Data);
//uint8_t iic_write1(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t Data);
//uint8_t iic_readn(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t Data[], uint8_t N);
//uint8_t iic_writen(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr,uint8_t Data[], uint8_t N);
//
//uint8_t waitflag(I2Cn i2cn, uint8_t x) ;
//void send_signal(I2Cn i2cn, uint8_t Signal);
#line 15 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\ADC\\adc.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
* 文件名       ： adc.H
* 描述         ：工程模版实验
*
* 实验平台     ：landzo电子开发版
* 库版本       ：
* 嵌入系统     ：
*
* 作者         ：landzo 蓝电子
* 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/






typedef enum
{
    // ---------------------------------ADC0-------------------------
    ADC0_DP0 = 0,   // PTE20
    ADC0_SE0 = 0,

    ADC0_DP1 = 1,   // PTE16
    ADC0_SE1 = 1,

    ADC0_DP2 = 2,   // PTE18
    ADC0_SE2 = 2,

    ADC0_DP3 = 3,   // PTE22
    ADC0_SE3 = 3,

    ADC0_DM0 = 4,   // PTE21
    ADC0_SE4a= 4,

    ADC0_DM1 = 5,   // PTE17
    ADC0_SE5a= 5,

    ADC0_DM2 = 6,   // PTE19
    ADC0_SE6a= 6,

    ADC0_DM3 = 7,   // PTE23
    ADC0_SE7a= 7,

    ADC0_SE4b= 4,   // PTE29     不支持软件ADC，传递进软件触发ADC，会当作 a通道处理

    ADC0_SE5b= 5,   // PTD1      不支持软件ADC，传递进软件触发ADC，会当作 a通道处理

    ADC0_SE6b= 6,   // PTD5      不支持软件ADC，传递进软件触发ADC，会当作 a通道处理

    ADC0_SE7b= 7,   // PTD6      不支持软件ADC，传递进软件触发ADC，会当作 a通道处理

    ADC0_SE8,       // PTB0

    ADC0_SE9,       // PTB1

    ADC0_RES0,      // 保留

    ADC0_SE11,      // PTC2

    ADC0_SE12,      // PTB2

    ADC0_SE13,      // PTB3

    ADC0_SE14,      // PTC0

    ADC0_SE15,      // PTC1

    ADC0_RES1,      // 保留

    ADC0_RES2,      // 保留

    ADC0_RES3,      // 保留

    ADC0_RES4,      // 保留

    ADC0_RES5,      // 保留

    ADC0_RES6,      // 保留

    ADC0_RES7,      // 保留

    ADC0_SE23,      // PTE30

    DAC0_OUT = ADC0_SE23, // PTE30  DAC0输出 ,传入 ADC函数会当作 ADC0_SE23  处理

    ADC0_RES8,      // 保留

    ADC0_RES9,      // 保留

    Temp0_Sensor,   // Temperature Sensor,内部温度测量，可用ADC函数
    Bandgap0,       // 温度补偿结构带隙基准源   不支持ADC
    ADC0_RES10,     // 保留
    VREFH0,         // 参考高电压,可用ADC函数 ,结果恒为 2^n-1
    VREFL0,         // 参考低电压,可用ADC函数 ,结果恒为 0
    Module0_Dis,    // 不支持 ADC

} ADCn_Ch_e;

typedef enum  //ADC模块
{
    ADC0,
    ADC1
} ADCn_e;

//精度位数
typedef enum ADC_nbit
{
    ADC_8bit   = 0x00,
    ADC_10bit  = 0x02,
    ADC_12bit  = 0x01,
    ADC_16bit  = 0x03
} ADC_nbit;
enum HardwareAverage
{
	sample4 = 0,
	sample8 = 1,
	sample16 = 2,
	sample32 = 3,
};

//外部函数接口声明
void      adc_init(ADCn_Ch_e);              	                //ADC初始化
uint16_t  adc_once (ADCn_Ch_e, ADC_nbit);    	                //采集一次一路模拟量的AD值
uint16_t adc_ave(ADCn_Ch_e adcn_ch, ADC_nbit bit, uint8_t N);   //均值滤波
uint16_t  adc_sum(ADCn_Ch_e adcn_ch, ADC_nbit bit, unsigned char N);        //采样集合
void adc_start(ADCn_Ch_e adcn_ch, ADC_nbit bit) ;
void adc_stop(ADCn_e);                                          //停止ADC转换

#line 16 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\lptmr\\lptmr.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
* 文件名       ： lptmr.h
* 描述         ：工程模版实验
*
* 实验平台     ：landzo电子开发版
* 库版本       ：
* 嵌入系统     ：
*
* 作者         ：landzo 蓝电子
* 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/






//中断号


/**
 *  @brief LPTMR脉冲计数输入管脚选项
 */
typedef enum
{
    //只有1、2管脚，并没有0、3管脚
    LPT0_ALT1 = 1,      // PTA19
    LPT0_ALT2 = 2       // PTC5
} LPT0_ALTn;

/**
 *  @brief LPTMR脉冲计数触发方式
 */
typedef enum LPT_CFG
{
    LPT_Rising  = 0,    //上升沿触发
    LPT_Falling = 1     //下降沿触发
} LPT_CFG;




/*          用于延时         */
void     lptmr_delay_ms(uint16_t ms);      //延时(ms)
void     lptmr_delay_us(uint16_t us);      //延时(us)

/*       用于定时           */
void     lptmr_timing_ms(uint16_t ms);     //定时(ms)
void     lptmr_timing_us(uint16_t ms);     //定时(us)

/*        用于计时           */
void     lptmr_time_start_ms(void);      //开始计时(ms)
uint32_t   lptmr_time_get_ms(void);        //获取计时时间 

void     lptmr_time_start_us(void);      //开始计时(ns)
uint32_t   lptmr_time_get_us(void);        //获取计时时间 

void     lptmr_time_close();             //关闭计时器


/*       用于脉冲计数        */
void     lptmr_counter_init (LPT0_ALTn, uint16_t count, LPT_CFG);   //计数器初始化设置
uint16_t   lptmr_pulse_get   (void);                               //获取计数值
void     lptmr_pulse_clean (void);                               //清空计数值


                                   //中断复位函数，仅供参考（需用户自行实现）

//============================================================================
//函数名称：lptmr_internal_ref_init
//函数返回：无
//参数说明：内部参考时钟初始化
//功能概要：采用内部参考时钟（PSC=0X0）
//         内部参考时钟有两个时钟源:(1)MCG_C2[IRCS]=0,使用慢速内部时钟(32kHz)
//                                 (2)MCG_C2[IRCS]=1,使用快速内部时钟(2Mhz)   
//         本例采用的是快速时钟源，周期= compare_value/ClkBus/prescale=4秒
//         prescale = 2^(8+1)=512,ClkBus=2Mhz,compare_value=15625
//============================================================================
void lptmr_internal_ref_init();

//============================================================================
//函数名称：enable_lptmr_int
//函数返回：无
//参数说明：无
//功能概要：开启LPT定时器中断
//============================================================================
void enable_lptmr_int();

//============================================================================
//函数名称：disable_lptmr_int
//函数返回：无
//参数说明：无
//功能概要：关闭LPT定时器中断
//============================================================================
void disable_lptmr_int();

#line 18 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\pit\\pit.h"
//==========================================================================
//文件名称：pit.h
//功能概要：KL25 pit底层驱动程序头文件
//版权所有：苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
//版本更新：2013-3-9  V2.0  柏祥。
//==========================================================================




//1 头文件
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：arm_cm4.h
 * 描述         ：工程模版实验
 *
 * 实验平台     ：landzo电子开发版
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：landzo 蓝电子
 * 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/

#line 148 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"


void  init_critical(void);
void  enter_critical(void);
void  exit_critical(void);
#line 13 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\pit\\pit.h"

//定义PIT模块号
typedef enum PITn
{
    PIT0,
    PIT1,

    PIT_MAX,
} PITn;



//ms是毫秒=0.001秒 us是微秒=0.000001秒 ns是纳秒=0.000000001秒

/*****************************以下代码用于PIT中断*************************************/

void         pit_init(PITn, uint32_t cnt);                                            //初始化PITn，并设置定时时间(单位为bus时钟周期)




/*****************************以上代码用于PIT中断*************************************/
/*****************************以下代码用于PIT延时*************************************/

//注意了，延时函数不需要初始化的，直接调用

void        pit_delay(PITn pitn, uint32_t cnt);                                       //PIT延时（不需要初始化的）




/*****************************以上代码用于PIT延时*************************************/
/*****************************以下代码用于PIT计时*************************************/

void    pit_time_start  (PITn pitn);                                                //PIT开始计时
uint32_t  pit_time_get    (PITn pitn);                                                //获取 PITn计时时间(超时时会关闭 定时器)（单位为 bus时钟）(若值为 0xFFFFFFFF，则表示溢出)
void    pit_time_close  (PITn pitn);                                                //关闭 PIT 计时




/*****************************以上代码用于PIT计时*************************************/



//==========================================================================
//函数名称: pit_init                                                         
//函数返回: 无                                          
//参数说明: pitno:表示pit通道号。        
//功能概要: 设置相关寄存器的值        


//==========================================================================
//函数名称: enable_pit_int                                                     
//函数返回: 无                                              
//参数说明: 无      
//功能概要: 开PIT中断                                                                                                     
//==========================================================================
void enable_pit_int();

//==========================================================================
//函数名称: disable_pit_int                                                    
//函数返回: 无                                              
//参数说明: 无    
//功能概要: 关闭PIT中断                                                                                                     
//==========================================================================
void disable_pit_int();

#line 20 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\tpm\\tpm.h"
//===========================================================================
//文件名称：tpm.h
//功能概要：tpm底层驱动构件头文件
//版权所有：苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
//更新记录：2013-3-9   V2.0 柏祥
//===========================================================================








//定义TPM模块号
typedef enum
{
    TPM0,
    TPM1,
    TPM2,

    TPM_MAX,
} TPMn_e;

//定义TPM 通道号
typedef enum
{

    TPM_CH0,
    TPM_CH1,
    TPM_CH2,
    TPM_CH3,
    TPM_CH4,
    TPM_CH5,
    TPM_CH6,
    TPM_CH7,

} TPM_CHn_e;

typedef enum
{
    TPM_CLKIN0,
    TPM_CLKIN1,
} TPM_CLKIN_e;

//分频系数
typedef enum
{
    TPM_PS_1,
    TPM_PS_2,
    TPM_PS_4,
    TPM_PS_8,
    TPM_PS_16,
    TPM_PS_32,
    TPM_PS_64,
    TPM_PS_128,

    TPM_PS_MAX,
}TPM_PS_e;

//用于开始计数 或者 重载计数
typedef enum
{
    EXTRG_IN,       //外部触发
    CMP0_OUT,       //CMP0 输出

    TRG_CFG_RES0,   //保留
    TRG_CFG_RES1,   //保留

    PIT0_TRG,       //PIT0 触发
    PIT1_TRG,       //PIT0 触发

    TRG_CFG_RES2,   //保留
    TRG_CFG_RES3,   //保留

    TPM0_OVER,      //TPM0溢出
    TPM1_OVER,      //TPM1溢出
    TPM2_OVER,      //TPM2溢出

    TRG_CFG_RES4,   //保留

    RTC_ALARM,      //RTC报警
    RTC_SEC,        //RTC秒中断

    LPTMR_TRG,      //LPTMR 触发

    TRG_CFG_RES5,   //保留


}TPMx_TRG_CFG_e;


/*********************** PWM **************************/






void TPM_Enable_int(uint8_t tpmModule);
void TPM_Disable_int(uint8_t tpmModule);
void tpm_port_mux(TPMn_e tpmn, TPM_CHn_e ch);
void TPM_PWM_init(TPMn_e, TPM_CHn_e, uint32_t freq, uint32_t duty);  //初始化TPM的PWM功能并设置频率、占空比。设置通道输出占空比。同一个TPM，各通道的PWM频率是一样的，共3个TPM
void TPM_Stop(uint8_t tpmModule);


void  TPM_PWM_Duty(TPMn_e, TPM_CHn_e, uint32_t duty);  //设置通道占空比,占空比为 （duty * 精度） % ，如果 TPM_PRECISON 定义为 1000 ，duty = 100 ，则占空比 100*0.1%=10%
void  TPM_PWM_freq(TPMn_e, uint32_t freq);               //设置TPM的频率（改频率后，需要重新配置占空比）



void     TPM_pulse_init(TPMn_e tpmn,TPM_CLKIN_e clkin,TPM_PS_e ps);
void     TPM_pulse_clean (TPMn_e tpmn);
uint16_t TPM_pulse_get (TPMn_e tpmn);

#line 21 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\dma\\dma.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
* 文件名       ： DMA.h
* 描述         ：工程模版实验
*
* 实验平台     ：landzo电子开发版
* 库版本       ：
* 嵌入系统     ：
*
* 作者         ：landzo 蓝电子
* 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/




typedef enum
{
    /*        禁用通道            */
    Channel_Disabled        = 0,

    /*        UART            */
    DMA_UART0_Rx            = 2,
    DMA_UART0_Tx            = 3,
    DMA_UART1_Rx            = 4,
    DMA_UART1_Tx            = 5,
    DMA_UART2_Rx            = 6,
    DMA_UART2_Tx            = 7,

    /*        I2S           
    DMA_I2S0_Rx             = 14,
    DMA_I2S0_Tx             = 15, */

    /*        SPI            */
    DMA_SPI0_Rx             = 16,
    DMA_SPI0_Tx             = 17,
    DMA_SPI1_Rx             = 18,
    DMA_SPI1_Tx             = 19,

    /*        I2C            */
    DMA_I2C0                = 22,
    DMA_I2C1                = 23,

    /*        FTM            */
    DMA_TPM0_CH0            = 24,
    DMA_TPM0_CH1            = 25,
    DMA_TPM0_CH2            = 26,
    DMA_TPM0_CH3            = 27,
    DMA_TPM0_CH4            = 28,
    DMA_TPM0_CH5            = 29,


    DMA_FTM1_CH0            = 32,
    DMA_FTM1_CH1            = 33,

    DMA_FTM2_CH0            = 34,
    DMA_FTM2_CH1            = 35,


    /*     ADC/DAC/CMP/CMT    */
    DMA_ADC0                = 40,

    DMA_CMP0                = 42,

    DMA_DAC0                = 45,



    DMA_PORTA              = 49,
    DMA_PORTD              = 52,

    DMA_FTM0_OVER           = 54,
    DMA_FTM1_OVER           = 55,
    DMA_FTM2_OVER           = 56,

    DMA_TSI                 = 57,

    DMA_Always_EN1          = 60,
    DMA_Always_EN2          = 61,
    DMA_Always_EN3          = 62,
    DMA_Always_EN4          = 63,

} DMA_sources;



typedef enum
{
    DADDR_RECOVER = 0,        //恢复目的地址
    DADDR_KEEPON  = 1,        //目的地址保持不变

} DMA_cfg;

typedef enum      //DMA每次传输字节数
{
    DMA_BYTE1 = 1,
    DMA_BYTE2 = 2,
    DMA_BYTE4 = 0,
} DMA_BYTEn;


typedef enum
{
    DMA_CH0,
    DMA_CH1,
    DMA_CH2,
    DMA_CH3,
} DMA_CHn;












//#define  DMA_CHn_DIS(DMA_CHn)   DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,DMA_CHn) &= DMAMUX_CHCFG_SOURCE(Channel_Disabled)  //禁用通道



//初始化DMA，使得PORT端口数据通过DMA传输到BUFF缓冲区
void DMA_PORTx2BUFF_Init(DMA_CHn, void *SADDR, void *DADDR, PTxn, DMA_BYTEn, uint32_t count);



//DMA 重新做，传输完毕后，一些参数会改变，需要重新赋值
static inline void dma_repeat(DMA_CHn CHn,void *SADDR, void *DADDR,uint32_t count)
{
    ((((DMA_MemMapPtr)0x40008000u))->DMA[CHn]. DSR_BCR)|= 0x1000000u;
    ((((DMA_MemMapPtr)0x40008000u))->DMA[CHn]. DSR_BCR) =   (0
                         | (((uint32_t)(((uint32_t)(count))<<0))&0xFFFFFFu)              //传输数目
                         );

    ((((DMA_MemMapPtr)0x40008000u))->DMA[CHn]. SAR) =    (uint32)SADDR;                      // 设置  源地址
    ((((DMA_MemMapPtr)0x40008000u))->DMA[CHn]. DAR) =    (uint32)DADDR;                      // 设置目的地址

    ((((DMAMUX_MemMapPtr)0x40021000u))->CHCFG[DMA_CH0]) |= 0x80u;                        //使能DMA 硬件请求
    ((((DMA_MemMapPtr)0x40008000u))->DMA[CHn]. DCR) |=  0x40000000u;

}

#line 22 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\app\\include.h"






#line 18 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\port\\port.h"

//得出：PTx = PTxn / 32 ; PTn = PTxn & 31





/*! 枚举PORT 配置 */
typedef enum
{
    //中断方式和DMA请求方式，两者只能选其中一种（可以不选）
    //中断方式选择
    IRQ_ZERO     = 0x08 << 16,   //低电平触发
    IRQ_RISING   = 0x09 << 16,   //上升沿触发
    IRQ_FALLING  = 0x0A << 16,   //下降沿触发
    IRQ_EITHER   = 0x0B << 16,   //跳变沿触发
    IRQ_ONE      = 0x0C << 16,   //高电平触发

    //DMA请求选择
    DMA_RISING   = 0x01 << 16,   //上升沿触发
    DMA_FALLING  = 0x02 << 16,   //下降沿触发
    DMA_EITHER   = 0x03 << 16,   //跳变沿触发


    HDS          = 0x01 << 6,    //输出高驱动能力
    PF           = 0x01 << 4,    //带无源滤波器
    SSR          = 0x01 << 2,    //输出慢变化率          Slow slew rate

    //下拉上拉选择
    PULLDOWN     = 0x02 << 0,     //下拉
    PULLUP       = 0x03 << 0,     //上拉

    //功能复用选择(如果不需要改变功能复用选择，保留原先的功能复用，直接选择ALT0 )
    //需要查 K60 Signal Multiplexing and Pin Assignments
    ALT0         = 0x00 << 8,
    ALT1         = 0x01 << 8,    //GPIO
    ALT2         = 0x02 << 8,
    ALT3         = 0x03 << 8,
    ALT4         = 0x04 << 8,
    ALT5         = 0x05 << 8,
    ALT6         = 0x06 << 8,
    ALT7         = 0x07 << 8,
} port_cfg;

extern volatile struct  PORT_MemMap *PORTX[5];


void  port_init         (PTxn ptxn, uint32_t cfg);   //PORT初始化(配置 MUX 复用功能)
void  port_init_NoALT   (PTxn ptxn, uint32_t cfg);   //PORT初始化(不改变 MUX 复用功能)


//如下函数可用在 PORT 中断复位函数里，func就是对应管脚的中断复位函数
//具体用法可参考 porta_handler
#line 78 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\port\\port.h"


#line 146 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"
#line 1 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\fire_drivers_cfg.h"
/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：fire_drivers_cfg.h
 * 描述         ：K60复用管家配置
 * 备注         ：，，
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：蓝宙电子工作室
 * 淘宝店       ：http://landzo.taobao.com/
**********************************************************************************/







/**********************************  UART   ***************************************/

//      模块通道    端口          可选范围                          建议









/**********************************  TPM    ***************************************/





//      模块通道    端口          可选范围                                    建议
#line 45 "F:\\KL25EM\\KL25EM_dfxx\\KL25EM_dfxx_ewp\\..\\src\\drivers\\fire_drivers_cfg.h"


//      模块通道    端口          可选范围                                    建议



//      模块通道    端口          可选范围                                    建议





/**********************************  I2C   ***************************************/

//      模块通道    端口          可选范围                                    建议







/**********************************  SPI   ***************************************/
//PCS接口，不用的时候需要注释，就不会进行初始化对应的管脚
//      模块通道    端口          可选范围                  建议















/**********************************  DAC   ***************************************/





#line 147 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\common.h"



void  init_critical(void);
void  enter_critical(void);
void  exit_critical(void);
#line 7 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\printf.c"
#include <stdarg.h>

/********************************************************************/

typedef struct
{
    int dest;
    void (*func)(char);
    char *loc;
} PRINTK_INFO;

int 
printk (PRINTK_INFO *, const char *, va_list);

/********************************************************************/
























#line 55 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\printf.c"

#line 65 "F:\\KL25EM\\KL25EM_dfxx\\src\\common\\printf.c"

/********************************************************************/
static void
printk_putc (int c, int *count, PRINTK_INFO *info)
{
    switch (info->dest)
    {
        case (1):
            info->func((char)c);
            break;
        case (2):
            *(info->loc) = (unsigned char)c;
            ++(info->loc);
            break;
        default:
            break;
    }
    *count += 1;
}

/********************************************************************/
static int
printk_mknumstr (char *numstr, void *nump, int neg, int radix)
{
    int a,b,c;
    unsigned int ua,ub,uc;

    int nlen;
    char *nstrp;

    nlen = 0;
    nstrp = numstr;
    *nstrp++ = '\0';

    if (neg)
    {
        a = *(int *)nump;
        if (a == 0)
        {
            *nstrp = '0';
            ++nlen;
            goto done;
        }
        while (a != 0)
        {
            b = (int)a / (int)radix;
            c = (int)a - ((int)b * (int)radix);
            if (c < 0)
            {
                c = ~c + 1 + '0';
            }
            else
            {
                c = c + '0';
            }
            a = b;
            *nstrp++ = (char)c;
            ++nlen;
        }
    }
    else
    {
        ua = *(unsigned int *)nump;
        if (ua == 0)
        {
            *nstrp = '0';
            ++nlen;
            goto done;
        }
        while (ua != 0)
        {
            ub = (unsigned int)ua / (unsigned int)radix;
            uc = (unsigned int)ua - ((unsigned int)ub * (unsigned int)radix);
            if (uc < 10)
            {
                uc = uc + '0';
            }
            else
            {
                uc = uc - 10 + 'A';
            }
            ua = ub;
            *nstrp++ = (char)uc;
            ++nlen;
        }
    }
    done:
    return nlen;
}

/********************************************************************/
static void
printk_pad_zero (int curlen, int field_width, int *count, PRINTK_INFO *info)
{
    int i;

    for (i = curlen; i < field_width; i++)
    {
        printk_putc('0',count, info);
    }
}

/********************************************************************/
static void
printk_pad_space (int curlen, int field_width, int *count, PRINTK_INFO *info)
{
    int i;

    for (i = curlen; i < field_width; i++)
    {
        printk_putc(' ',count, info);
    }
}

/********************************************************************/
int
printk (PRINTK_INFO *info, const char *fmt, va_list ap)
{
    /* va_list ap; */
    char *p;
    int c;

    char vstr[33];
    char *vstrp;
    int vlen;

    int done;
    int count = 0;

    int flags_used;
    int field_width;






    int ival;
    int schar, dschar;
    int *ivalp;
    char *sval;
    int cval;
    unsigned int uval;

    /*
     * Start parsing apart the format string and display appropriate
     * formats and data.
     */
    for (p = (char *)fmt; (c = *p) != 0; p++)
    {
        /*
         * All formats begin with a '%' marker.  Special chars like
         * '\n' or '\t' are normally converted to the appropriate
         * character by the __compiler__.  Thus, no need for this
         * routine to account for the '\' character.
         */
        if (c != '%')
        {
            /*
             * This needs to be replaced with something like
             * 'out_char()' or call an OS routine.
             */

            if (c != '\n')
            {
                printk_putc(c, &count, info);
            }
            else
            {
                printk_putc(0x0D /* CR */, &count, info);
                printk_putc(0x0A /* LF */, &count, info);
            }




            /*
             * By using 'continue', the next iteration of the loop
             * is used, skipping the code that follows.
             */
            continue;
        }

        /*
         * First check for specification modifier flags.
         */
        flags_used = 0;
        done = (0);
        while (!done)
        {
            switch (/* c = */ *++p)
            {
                case '-':
                    flags_used |= (0x01);
                    break;
                case '+':
                    flags_used |= (0x02);
                    break;
                case ' ':
                    flags_used |= (0x04);
                    break;
                case '0':
                    flags_used |= (0x08);
                    break;
                case '#':
                    flags_used |= (0x10);
                    break;
                default:
                    /* we've gone one char too far */
                     --p;
                    done = (1);
                    break;
            }
        }

        /*
         * Next check for minimum field width.
         */
        field_width = 0;
        done = (0);
        while (!done)
        {
            switch (c = *++p)
            {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    field_width = (field_width * 10) + (c - '0');
                    break;
                default:
                    /* we've gone one char too far */
                    --p;
                    done = (1);
                    break;
            }
        }

        /*
         * Next check for the width and precision field separator.
         */
        if (*++p == '.')
        {

            /*
             * Must get precision field width, if present.
             */
            done = (0);
            while (!done)
            {
                switch (/* c = uncomment if used below */ *++p)
                {
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':




                        break;
                    default:
                        /* we've gone one char too far */
                        --p;
                        done = (1);
                        break;
                }
            }
        }
        else
        {
            /* we've gone one char too far */
            --p;




        }

        /*
         * Check for the length modifier.
         */
        switch (*++p)
        {
            case 'h':
                break;
            case 'l':
                break;
            case 'L':
                break;
            default:
                /* we've gone one char too far */
                --p;
                break;
        }

        /*
         * Now we're ready to examine the format.
         */
        switch (c = *++p)
        {
            case 'd':
            case 'i':
                ival = (int)va_arg(ap, int);
                vlen = printk_mknumstr(vstr,&ival,(1),10);
                vstrp = &vstr[vlen];

                if (ival < 0)
                {
                    schar = '-';
                    ++vlen;
                }
                else
                {
                    if ((flags_used & (0x02)))
                    {
                        schar = '+';
                        ++vlen;
                    }
                    else
                    {
                        if ((flags_used & (0x04)))
                        {
                            schar = ' ';
                            ++vlen;
                        }
                        else
                        {
                            schar = 0;
                        }
                    }
                }
                dschar = (0);
            
                /*
                 * do the ZERO pad.
                 */
                if ((flags_used & (0x08)))
                {
                    if (schar)
                        printk_putc(schar, &count, info);
                    dschar = (1);
            
                    printk_pad_zero (vlen, field_width, &count, info);
                    vlen = field_width;
                }
                else
                {
                    if (!(flags_used & (0x01)))
                    {
                        printk_pad_space (vlen, field_width, &count, info);
            
                        if (schar)
                            printk_putc(schar, &count, info);
                        dschar = (1);
                    }
                }
            
                /* the string was built in reverse order, now display in */
                /* correct order */
                if (!dschar && schar)
                {
                    printk_putc(schar, &count, info);
                }
                goto cont_xd;

            case 'x':
            case 'X':
                uval = (unsigned int)va_arg(ap, unsigned int);
                vlen = printk_mknumstr(vstr,&uval,(0),16);
                vstrp = &vstr[vlen];

                dschar = (0);
                if ((flags_used & (0x08)))
                {
                    if ((flags_used & (0x10)))
                    {
                        printk_putc('0', &count, info);
                        printk_putc('x', &count, info);
                        /*vlen += 2;*/
                        dschar = (1);
                    }
                    printk_pad_zero (vlen, field_width, &count, info);
                    vlen = field_width;
                }
                else
                {
                    if (!(flags_used & (0x01)))
                    {
                        if ((flags_used & (0x10)))
                        {
                            vlen += 2;
                        }
                        printk_pad_space (vlen, field_width, &count, info);
                        if ((flags_used & (0x10)))
                        {
                            printk_putc('0', &count, info);
                            printk_putc('x', &count, info);
                            dschar = (1);
                        }
                    }
                }

                if (((flags_used & (0x10))) && !dschar)
                {
                    printk_putc('0', &count, info);
                    printk_putc('x', &count, info);
                    vlen += 2;
                }
                goto cont_xd;

            case 'o':
                uval = (unsigned int)va_arg(ap, unsigned int);
                vlen = printk_mknumstr(vstr,&uval,(0),8);
                goto cont_u;
            case 'b':
                uval = (unsigned int)va_arg(ap, unsigned int);
                vlen = printk_mknumstr(vstr,&uval,(0),2);
                goto cont_u;
            case 'p':
                uval = (unsigned int)va_arg(ap, void *);
                vlen = printk_mknumstr(vstr,&uval,(0),16);
                goto cont_u;
            case 'u':
                uval = (unsigned int)va_arg(ap, unsigned int);
                vlen = printk_mknumstr(vstr,&uval,(0),10);

                cont_u:
                    vstrp = &vstr[vlen];

                    if ((flags_used & (0x08)))
                    {
                        printk_pad_zero (vlen, field_width, &count, info);
                        vlen = field_width;
                    }
                    else
                    {
                        if (!(flags_used & (0x01)))
                        {
                            printk_pad_space (vlen, field_width, &count, info);
                        }
                    }

                cont_xd:
                    while (*vstrp)
                        printk_putc(*vstrp--, &count, info);

                    if ((flags_used & (0x01)))
                    {
                        printk_pad_space (vlen, field_width, &count, info);
                    }
                break;

            case 'c':
                cval = (char)va_arg(ap, unsigned int);
                printk_putc(cval,&count, info);
                break;
            case 's':
                sval = (char *)va_arg(ap, char *);
                if (sval)
                {
                    vlen = strlen(sval);
                    if (!(flags_used & (0x01)))
                    {
                        printk_pad_space (vlen, field_width, &count, info);
                    }
                    while (*sval)
                        printk_putc(*sval++,&count, info);
                    if ((flags_used & (0x01)))
                    {
                        printk_pad_space (vlen, field_width, &count, info);
                    }
                }
                break;
            case 'n':
                ivalp = (int *)va_arg(ap, int *);
                *ivalp = count;
                break;
            default:
                printk_putc(c,&count, info);
                break;
        }
    }
    return count;
}

/********************************************************************/
int
printf (const char *fmt, ...)
{
    va_list ap;
    int rvalue;
    PRINTK_INFO info;


    info.dest = (1);
    info.func = &out_char;
    /*
     * Initialize the pointer to the variable length argument list.
     */
    va_start(ap, fmt);
    rvalue = printk(&info, fmt, ap);
    /*
     * Cleanup the variable length argument list.
     */
    va_end(ap);
    return rvalue;
}

/********************************************************************/
int
sprintf (char *s, const char *fmt, ...)
{
    va_list ap;
    int rvalue = 0;
    PRINTK_INFO info;

    /*
     * Initialize the pointer to the variable length argument list.
     */
    if (s != 0)
    {
        info.dest = (2);
        info.loc = s;
        va_start(ap, fmt);
        rvalue = printk(&info, fmt, ap);
        *info.loc = '\0';
        va_end(ap);
    }
    return rvalue;
}

/********************************************************************/
