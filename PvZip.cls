Attribute VB_Name = "Module12"
Sub Ex�cuterPvZip()
    Dim cheminNode As String
    Dim cheminScript As String
    Dim folderPath As String
    Dim commande As String

    ' Chemin vers Node.js (� ajuster si n�cessaire)
    cheminNode = "C:\Program Files\nodejs\node.exe"

    ' Chemin vers le script PvZip.js
    cheminScript = "C:\Users\maryam\Contacts\Desktop\AutomatREC\PvZip.js"

    ' Dialogue pour s�lectionner le dossier contenant les fichiers
    With Application.FileDialog(msoFileDialogFolderPicker)
        .Title = "S�lectionnez le dossier contenant vos fichiers"
        If .Show = -1 Then
            folderPath = .SelectedItems(1)
        Else
            MsgBox "Aucun dossier s�lectionn�. Op�ration annul�e.", vbExclamation
            Exit Sub
        End If
    End With

    ' Construire la commande pour ex�cuter le script Node.js
    commande = """" & cheminNode & """ """ & cheminScript & """ """ & folderPath & """"

    ' Ex�cuter la commande
    shell commande, vbNormalFocus

    ' Message de confirmation
    MsgBox "Le script PvZip a �t� ex�cut�. Veuillez v�rifier les r�sultats.", vbInformation
End Sub

