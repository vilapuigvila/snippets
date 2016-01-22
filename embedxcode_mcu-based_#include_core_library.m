// embedXcode MCU-based #include Core Library
// Used for selecting and including the core library for embedXcode project, MCU-based
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: EFFC0B14-62B8-4774-B0F1-112A8C8D15D0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// Core library - MCU-based
#if defined(__AVR_ATmega328P__) || defined(__AVR_ATmega2560__) || defined(__AVR_ATmega32U4__) || defined(__SAM3X8E__) // Arduino specific
#if defined(ARDUINO) && (ARDUINO >= 100)
#include "Arduino.h" // for Arduino 1.0
#else
#include "WProgram.h" // for Arduino 23
#endif
#elif defined(__32MX320F128H__) || defined(__32MX795F512L__) || defined(__32MX340F512H__) // chipKIT specific
#include "WProgram.h"
#elif defined(__AVR_ATtinyX5__) // Digispark specific
#include "Arduino.h"
#elif defined(__AVR_ATmega644P__) // Wiring specific
#include "Wiring.h"
#elif defined(__MSP430G2452__) || defined(__MSP430G2553__) || defined(__MSP430G2231__) || defined(__MSP430F5529__) || defined(__MSP430FR5739__) // LaunchPad MSP430 and Experimeter Board FR5739 specific
#include "Energia.h"
#elif defined(__LM4F120H5QR__) // LaunchPad Stellaris and Tiva specific
#include "Energia.h"
#elif defined(__MK20DX128__) // Teensy 3.0 specific
#include "WProgram.h"
#elif defined(MCU_STM32F103RB) || defined(MCU_STM32F103ZE) || defined(MCU_STM32F103CB) || defined(MCU_STM32F103RE) // Maple specific
#include "WProgram.h"
#else // error
#error Platform not defined
#endif