(* Modula-2 Library    -  UNIX System V  -     AFB 5/88 *)
(* (c) Universitaet Ulm, Sektion Informatik, D-7900 Ulm *)
(*%p+*)
DEFINITION MODULE TermInfo;

   FROM SYSTEM IMPORT BYTE;

   CONST 
      strings   = 184;
      bools     = 21;
      ints      = 8;
      stringlen = 160;

   TYPE 
      String    = ARRAY [0..stringlen-1] OF CHAR;
      OutProc   = PROCEDURE (CHAR);
      DelayProc = PROCEDURE (CARDINAL);
      Term      = 
         RECORD 
            BackTab: String;
            Bell: String;
            CarriageReturn: String;
            ChangeScrollRegion: String;
            ClearAllTabs: String;
            ClearScreen: String;
            ClrEol: String;
            ClrEos: String;
            ColumnAddress: String;
            CommandCharacter: String;
            CursorAddress: String;
            CursorDown: String;
            CursorHome: String;
            CursorInvisible: String;
            CursorLeft: String;
            CursorMemAddress: String;
            CursorNormal: String;
            CursorRight: String;
            CursorToLl: String;
            CursorUp: String;
            CursorVisible: String;
            DeleteCharacter: String;
            DeleteLine: String;
            DisStatusLine: String;
            DownHalfLine: String;
            EnterAltCharsetMode: String;
            EnterBlinkMode: String;
            EnterBoldMode: String;
            EnterCaMode: String;
            EnterDeleteMode: String;
            EnterDimMode: String;
            EnterInsertMode: String;
            EnterSecureMode: String;
            EnterProtectedMode: String;
            EnterReverseMode: String;
            EnterStandoutMode: String;
            EnterUnderlineMode: String;
            EraseChars: String;
            ExitAltCharsetMode: String;
            ExitAttributeMode: String;
            ExitCaMode: String;
            ExitDeleteMode: String;
            ExitInsertMode: String;
            ExitStandoutMode: String;
            ExitUnderlineMode: String;
            FlashScreen: String;
            FormFeed: String;
            FromStatusLine: String;
            Init1string: String;
            Init2string: String;
            Init3string: String;
            InitFile: String;
            InsertCharacter: String;
            InsertLine: String;
            InsertPadding: String;
            KeyBackspace: String;
            KeyCatab: String;
            KeyClear: String;
            KeyCtab: String;
            KeyDc: String;
            KeyDl: String;
            KeyDown: String;
            KeyEic: String;
            KeyEol: String;
            KeyEos: String;
            KeyF0: String;
            KeyF1: String;
            KeyF10: String;
            KeyF2: String;
            KeyF3: String;
            KeyF4: String;
            KeyF5: String;
            KeyF6: String;
            KeyF7: String;
            KeyF8: String;
            KeyF9: String;
            KeyF11: String;
            KeyF12: String;
            KeyF13: String;
            KeyF14: String;
            KeyF15: String;
            KeyF16: String;
            KeyF17: String;
            KeyF18: String;
            KeyF19: String;
            KeyF20: String;
            KeyF21: String;
            KeyF22: String;
            KeyF23: String;
            KeyF24: String;
            KeyF25: String;
            KeyF26: String;
            KeyF27: String;
            KeyF28: String;
            KeyF29: String;
            KeyF30: String;
            KeyF31: String;
            KeyF32: String;
            KeyF33: String;
            KeyF34: String;
            KeyF35: String;
            KeyF36: String;
            KeyF37: String;
            KeyF38: String;
            KeyF39: String;
            KeyF40: String;
            KeyF41: String;
            KeyF42: String;
            KeyF43: String;
            KeyF44: String;
            KeyF45: String;
            KeyF46: String;
            KeyF47: String;
            KeyHome: String;
            KeyIc: String;
            KeyIl: String;
            KeyLeft: String;
            KeyLl: String;
            KeyNpage: String;
            KeyPpage: String;
            KeyRight: String;
            KeySf: String;
            KeySr: String;
            KeyStab: String;
            KeyUp: String;
            KeypadLocal: String;
            KeypadXmit: String;
            LabF0: String;
            LabF1: String;
            LabF10: String;
            LabF2: String;
            LabF3: String;
            LabF4: String;
            LabF5: String;
            LabF6: String;
            LabF7: String;
            LabF8: String;
            LabF9: String;
            MetaOff: String;
            MetaOn: String;
            Newline: String;
            PadChar: String;
            ParmDch: String;
            ParmDeleteLine: String;
            ParmDownCursor: String;
            ParmIch: String;
            ParmIndex: String;
            ParmInsertLine: String;
            ParmLeftCursor: String;
            ParmRightCursor: String;
            ParmRindex: String;
            ParmUpCursor: String;
            PkeyKey: String;
            PkeyLocal: String;
            PkeyXmit: String;
            PrintScreen: String;
            PrtrOff: String;
            PrtrOn: String;
            RepeatChar: String;
            Reset1string: String;
            Reset2string: String;
            Reset3string: String;
            ResetFile: String;
            RestoreCursor: String;
            RowAddress: String;
            SaveCursor: String;
            ScrollForward: String;
            ScrollReverse: String;
            SetAttributes: String;
            SetTab: String;
            SetWindow: String;
            Tab: String;
            ToStatusLine: String;
            UnderlineChar: String;
            UpHalfLine: String;
            InitProg: String;
            KeyA1: String;
            KeyA3: String;
            KeyB2: String;
            KeyC1: String;
            KeyC3: String;
            PrtrNon: String;
            StartIntensify: String;
            EndIntensify: String;
            AutoLeftMargin: BOOLEAN;
            AutoRightMargin: BOOLEAN;
            BeehiveGlitch: BOOLEAN;
            CeolStandoutGlitch: BOOLEAN;
            EatNewlineGlitch: BOOLEAN;
            EraseOverstrike: BOOLEAN;
            GenericType: BOOLEAN;
            HardCopy: BOOLEAN;
            HasMetaKey: BOOLEAN;
            HasStatusLine: BOOLEAN;
            InsertNullGlitch: BOOLEAN;
            MemoryAbove: BOOLEAN;
            MemoryBelow: BOOLEAN;
            MoveInsertMode: BOOLEAN;
            MoveStandoutMode: BOOLEAN;
            OverStrike: BOOLEAN;
            StatusLineEscOk: BOOLEAN;
            TelerayGlitch: BOOLEAN;
            TildeGlitch: BOOLEAN;
            TransparentUnderline: BOOLEAN;
            XonXoff: BOOLEAN;
            Columns: INTEGER;
            InitTabs: INTEGER;
            Lines: INTEGER;
            LinesOfMemory: INTEGER;
            MagicCookieGlitch: INTEGER;
            PaddingBaudRate: INTEGER;
            VirtualTerminal: INTEGER;
            WidthStatusLine: INTEGER;
         END;

   PROCEDURE SetupTerm(tname: ARRAY OF CHAR;
                       VAR tinfo: Term) : BOOLEAN;

   PROCEDURE Tparm(VAR out: ARRAY OF CHAR;
                   fmt: ARRAY OF CHAR);

   PROCEDURE Tparm1(VAR out: ARRAY OF CHAR;
                    fmt : ARRAY OF CHAR;
                    arg1: ARRAY OF BYTE);

   PROCEDURE Tparm2(VAR out: ARRAY OF CHAR;
                    fmt : ARRAY OF CHAR;
                    arg1: ARRAY OF BYTE;
                    arg2: ARRAY OF BYTE);

   PROCEDURE Tparm3(VAR out: ARRAY OF CHAR;
                    fmt : ARRAY OF CHAR;
                    arg1: ARRAY OF BYTE;
                    arg2: ARRAY OF BYTE;
                    arg3: ARRAY OF BYTE);

   PROCEDURE Tparm4(VAR out: ARRAY OF CHAR;
                    fmt : ARRAY OF CHAR;
                    arg1: ARRAY OF BYTE;
                    arg2: ARRAY OF BYTE;
                    arg3: ARRAY OF BYTE;
                    arg4: ARRAY OF BYTE);

   PROCEDURE Tparm9(VAR out: ARRAY OF CHAR;
                    fmt : ARRAY OF CHAR;
                    arg1: ARRAY OF BYTE;
                    arg2: ARRAY OF BYTE;
                    arg3: ARRAY OF BYTE;
                    arg4: ARRAY OF BYTE;
                    arg5: ARRAY OF BYTE;
                    arg6: ARRAY OF BYTE;
                    arg7: ARRAY OF BYTE;
                    arg8: ARRAY OF BYTE;
                    arg9: ARRAY OF BYTE);

   PROCEDURE Tputs(str: ARRAY OF CHAR;
                   affcnt: CARDINAL;
                   outc  : OutProc);

   PROCEDURE TputsDelay(str: ARRAY OF CHAR;
                        affcnt: CARDINAL;
                        outc  : OutProc;
                        delay : DelayProc);

END TermInfo. 