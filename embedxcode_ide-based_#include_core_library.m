// embedXcode IDE-based #include Core Library
// Used for selecting and including the core library for embedXcode project, IDE-based
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: 8094FFEF-D0B0-44C0-81FD-9002B5EDEC8F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// Core library - IDE-based
        #if defined(WIRING) // Wiring specific
        #include "Wiring.h"
        #elif defined(MAPLE_IDE) // Maple specific
        #include "WProgram.h"
        #elif defined(MPIDE) // chipKIT specific
        #include "WProgram.h"
        #elif defined(DIGISPARK) // Digispark specific
        #include "Arduino.h"
        #elif defined(ENERGIA) // LaunchPad MSP430 G2 and F5529, Stellaris and Tiva, Experimeter Board FR5739 specific
        #include "Energia.h"
        #elif defined(MICRODUINO) // Microduino specific
        #include "Arduino.h"
        #elif defined(TEENSYDUINO) // Teensy specific
        #include "Arduino.h"
        #elif defined(ARDUINO) // Arduino 1.0 and 1.5 specific
        #include "Arduino.h"
        #else // error
        #error Platform not defined
        #endif // end IDE
