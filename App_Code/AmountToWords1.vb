Imports System.Math
Public Class AmountToWords1

    Dim oneWords As String = ",One,Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten,Eleven,Twelve,Thirteen,Fourteen,Fifteen,Sixteen,Seventeen,Eighteen,Nineteen"
    Dim ones() As String = oneWords.Split(",")
    Dim tenWords As String = ",Ten,Twenty,Thirty,Forty,Fifty,Sixty,Seventy,Eighty,Ninety"
    Dim tens() As String = tenWords.Split(",")

    Public Function Convert(ByVal input As String) As String
        Try
            input = input.Replace("$", "").Replace(",", "")
            If input.Length > 12 Then Return "Error in input value"
            Dim dollars, cents As String
            If input.IndexOf(".") > 0 Then
                dollars = input.Substring(0, input.IndexOf(".")).PadLeft(9, "0")
                cents = input.Substring(input.IndexOf(".") + 1).PadRight(2, "0")
                If cents = "00" Then cents = "0"
            Else
                dollars = input.PadLeft(9, "0") : cents = "0"
            End If
            Dim output As String
            Dim mill, thou, hund, cent As Integer
            Dim mills, thous, hunds As String
            mill = CType(dollars.Substring(0, 3), Integer)
            thou = CType(dollars.Substring(3, 3), Integer)
            hund = CType(dollars.Substring(6, 3), Integer)
            cent = CType(cents, Integer)
            mills = convertHundreds(mill)
            thous = convertHundreds(thou)
            hunds = convertHundreds(hund)
            cents = convertHundreds(cent)
            output = IIf(mills.Trim = "", "", mills + " Million ")
            output += IIf(thous.Trim = "", "", thous + " Thousand ")
            output += IIf(hunds.Trim = "", "", hunds)
            output = IIf(output.Length = 0, "Zero Dollars and ", output + " Dollars and ")
            output = IIf(output = "One Dollars and ", "One Dollar and ", output)
            output += IIf(cents = "", "Zero", cents) + " Cents"
            Return output
        Catch ex As Exception
            Return ""
        End Try
    End Function

    Private Function convertHundreds(ByVal input As Integer) As String
        Dim output As String
        If input <= 99 Then
            output = (convertTens(input))
        Else
            output = ones(Floor(input / 100))
            output += " Hundred "
            If input - Floor(input / 100) * 100 = 0 Then
                output += ""
            Else
                output += "" + convertTens(input - Floor(input / 100) * 100)
            End If
        End If
        Return output
    End Function

    Function convertTens(ByVal input As Integer) As String
        Dim output As String
        If input < 20 Then
            output = ones(input)
            input = 0
        Else
            output = tens(CType(Floor(input / 10), Integer))
            input -= Floor(input / 10) * 10
        End If
        output = output + IIf(ones(input).Trim = "", "", "-" + ones(input))
        Return output
    End Function

End Class
