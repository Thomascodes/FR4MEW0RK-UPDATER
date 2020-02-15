#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Fileversion=1.0.0.1
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_ProductName=Fr4mew0rk Updater
#AutoIt3Wrapper_Res_ProductVersion=1.0.0
#AutoIt3Wrapper_Res_CompanyName=Fr4mew0rk Studio
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>


e()

Func e()
    ; Create a GUI with various controls.
    Local $hGUI = GUICreate("FR4MEW0RK UPDATER 1.0", 350, 200)

MsgBox(64,"Welcome!","Welcome to FR4MEW0RK Updater. Here, you can one-click to the latest version of Fr4mew0rk software!")


    ; here we create the updater buttons and a close button
    Local $idButton_frame = GUICtrlCreateButton("FRAMEUPDATER", 100, 140, 200, 20)
    Local $idButton_Close = GUICtrlCreateButton("Close", 140, 170, 85, 25)
	Local $idButton_credits = GUICtrlCreateButton("Credits", 260, 170, 85, 25)


    ; show GUI
    GUISetState(@SW_SHOW, $hGUI)

    Local $iPID = 0

    ; so there's no weird loading errors while using
    While 1
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE, $idButton_Close
                ExitLoop

            Case $idButton_frame
                ; here, we'll go to the website in where the packages are located. in this case, a part of my website containing the newest build and older downloads.
                $iPID = ShellExecute("http://tjloudon.me/rel/updater.html")

			Case $idButton_credits
				; roll credits!
				; must be updated EVERY build
			MsgBox(64,"Credits","Written by TJ"&@crlf&"First GUI creation code from AutoIT Docs"&@crlf&"Written in AutoIT lang"&@crlf&"FR4MEUPDATER 'Delta' v1.0.0 First Major Release"&@crlf&"Property of Fr4mew0rk Dev Studio")

        EndSwitch
    WEnd

    ; close GUI
    GUIDelete($hGUI)


EndFunc
; and there we go.
; build 1.0.0 first major release


