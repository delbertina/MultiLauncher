Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ButtonWidth = 100
$ButtonHeight = 100

$ButtonTopMargin = 10
$ButtonLeftMargin = 10
$ButtonBottomMargin = 10
$ButtonRightMargin = 10
$ButtonGeneralMargin = 10

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Notepad++"
$Button1.width                   = $ButtonWidth
$Button1.height                  = $ButtonHeight
$Button1.location                = New-Object System.Drawing.Point(
                                    $ButtonLeftMargin,$ButtonTopMargin)
$Button1.Font                    = 'Microsoft Sans Serif,10'
$Button1.Add_Click({
    Start-Process -FilePath 'notepad++'
})

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Calculator"
$Button2.width                   = $ButtonWidth
$Button2.height                  = $ButtonHeight
$Button2.location                = New-Object System.Drawing.Point(
                                    ($ButtonLeftMargin+$ButtonWidth+$ButtonGeneralMargin),$ButtonTopMargin)
$Button2.Font                    = 'Microsoft Sans Serif,10'
$Button2.Add_Click({
    Start-Process -FilePath 'calc'
})

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Control Panel"
$Button3.width                   = $ButtonWidth
$Button3.height                  = $ButtonHeight
$Button3.location                = New-Object System.Drawing.Point(
                                    ($ButtonLeftMargin+$ButtonWidth+$ButtonGeneralMargin+$ButtonWidth+$ButtonGeneralMargin),$ButtonTopMargin)
$Button3.Font                    = 'Microsoft Sans Serif,10'
$Button3.Add_Click({
    Start-Process -FilePath 'control'
})

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Task Manager"
$Button4.width                   = $ButtonWidth
$Button4.height                  = $ButtonHeight
$Button4.location                = New-Object System.Drawing.Point(
                                    $ButtonLeftMargin,($ButtonTopMargin+$ButtonHeight+$ButtonGeneralMargin))
$Button4.Font                    = 'Microsoft Sans Serif,10'
$Button4.Add_Click({
    Start-Process -FilePath 'taskmgr'
})

$Button5                         = New-Object system.Windows.Forms.Button
$Button5.text                    = "Command Prompt"
$Button5.width                   = $ButtonWidth
$Button5.height                  = $ButtonHeight
$Button5.location                = New-Object System.Drawing.Point(
                                    ($ButtonLeftMargin+$ButtonWidth+$ButtonGeneralMargin),($ButtonTopMargin+$ButtonHeight+$ButtonGeneralMargin))
$Button5.Font                    = 'Microsoft Sans Serif,10'
$Button5.Add_Click({
    Start-Process -FilePath 'cmd'
})

$Button6                         = New-Object system.Windows.Forms.Button
$Button6.text                    = "Network n Sharing"
$Button6.width                   = $ButtonWidth
$Button6.height                  = $ButtonHeight
$Button6.location                = New-Object System.Drawing.Point(
                                    ($ButtonLeftMargin+$ButtonWidth+$ButtonGeneralMargin+$ButtonWidth+$ButtonGeneralMargin),($ButtonTopMargin+$ButtonHeight+$ButtonGeneralMargin))
$Button6.Font                    = 'Microsoft Sans Serif,10'
$Button6.Add_Click({
    Show-ControlPanelItem -CanonicalName "Microsoft.NetworkAndSharingCenter"
})

$Button7                         = New-Object system.Windows.Forms.Button
$Button7.text                    = "Programs n Features"
$Button7.width                   = $ButtonWidth
$Button7.height                  = $ButtonHeight
$Button7.location                = New-Object System.Drawing.Point(
                                    $ButtonLeftMargin,($ButtonTopMargin+$ButtonHeight+$ButtonGeneralMargin+$ButtonHeight+$ButtonGeneralMargin))
$Button7.Font                    = 'Microsoft Sans Serif,10'
$Button7.Add_Click({
    Start-Process -FilePath 'appwiz.cpl'
})

$Button8                         = New-Object system.Windows.Forms.Button
$Button8.text                    = "Sound"
$Button8.width                   = $ButtonWidth
$Button8.height                  = $ButtonHeight
$Button8.location                = New-Object System.Drawing.Point(
                                    ($ButtonLeftMargin+$ButtonWidth+$ButtonGeneralMargin),($ButtonTopMargin+$ButtonHeight+$ButtonGeneralMargin+$ButtonHeight+$ButtonGeneralMargin))
$Button8.Font                    = 'Microsoft Sans Serif,10'
$Button8.Add_Click({
    Start-Process -FilePath 'mmsys.cpl'
})

$Button9                         = New-Object system.Windows.Forms.Button
$Button9.text                    = "Explorer"
$Button9.width                   = $ButtonWidth
$Button9.height                  = $ButtonHeight
$Button9.location                = New-Object System.Drawing.Point(
                                    ($ButtonLeftMargin+$ButtonWidth+$ButtonGeneralMargin+$ButtonWidth+$ButtonGeneralMargin),($ButtonTopMargin+$ButtonHeight+$ButtonGeneralMargin+$ButtonHeight+$ButtonGeneralMargin))
$Button9.Font                    = 'Microsoft Sans Serif,10'
$Button9.Add_Click({
    Start-Process -FilePath 'explorer'
})

$Button10                        = New-Object system.Windows.Forms.Button
$Button10.text                   = "Edit Settings"
$Button10.width                  = ($ButtonWidth+$ButtonGeneralMargin+$ButtonWidth+$ButtonGeneralMargin+$ButtonWidth)
$Button10.height                 = ($ButtonGeneralMargin * 4)
$Button10.location               = New-Object System.Drawing.Point(
                                    $ButtonLeftMargin,($ButtonTopMargin+$ButtonHeight+$ButtonGeneralMargin+$ButtonHeight+$ButtonGeneralMargin+$ButtonHeight+$ButtonGeneralMargin))
$Button10.Font                   = 'Microsoft Sans Serif,10'

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = ""+($Button10.Right + $ButtonRightMargin)+","+($Button10.Bottom + $ButtonBottomMargin)+""
$Form.text                       = "Form"
$Form.TopMost                    = $false
$Form.FormBorderStyle            = "FixedSingle"

$Form.controls.AddRange(@($Button1,$Button2,$Button3,$Button4,$Button5,$Button6,$Button7,$Button8,$Button9,$Button10))

# Display
$Form.ShowDialog()