<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAd.aspx.cs" Inherits="NewAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListViewNewAd" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceJobNewAd">

<%--AlternatingItemTemplate--%>
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpNameLabel" runat="server" Text='<%# Eval("CpName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpWebsiteLabel" runat="server" Text='<%# Eval("CpWebsite") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpAddressLabel" runat="server" Text='<%# Eval("CpAddress") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpSectorLabel" runat="server" Text='<%# Eval("CpSector") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRNameLabel" runat="server" Text='<%# Eval("CpHRName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRMobileLabel" runat="server" Text='<%# Eval("CpHRMobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHREmailLabel" runat="server" Text='<%# Eval("CpHREmail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRLandlineLabel" runat="server" Text='<%# Eval("CpHRLandline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpTypeLabel" runat="server" Text='<%# Eval("CpType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobAdNoLabel" runat="server" Text='<%# Eval("JobAdNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobAdPathLabel" runat="server" Text='<%# Eval("JobAdPath") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobDsgLabel" runat="server" Text='<%# Eval("JobDsg") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobDscLabel" runat="server" Text='<%# Eval("JobDsc") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobLocationLabel" runat="server" Text='<%# Eval("JobLocation") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobOfferNoLabel" runat="server" Text='<%# Eval("JobOfferNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobOpenForLabel" runat="server" Text='<%# Eval("JobOpenFor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobCTCLabel" runat="server" Text='<%# Eval("JobCTC") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobBonusLabel" runat="server" Text='<%# Eval("JobBonus") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobBondLabel" runat="server" Text='<%# Eval("JobBond") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SelectPrefLabel" runat="server" Text='<%# Eval("SelectPref") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SelectModeLabel" runat="server" Text='<%# Eval("SelectMode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EligibilityLabel" runat="server" Text='<%# Eval("Eligibility") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MemberNoLabel" runat="server" Text='<%# Eval("MemberNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomNoLabel" runat="server" Text='<%# Eval("RoomNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OtherReqLabel" runat="server" Text='<%# Eval("OtherReq") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoundNoLabel" runat="server" Text='<%# Eval("RoundNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VisitPeriodLabel" runat="server" Text='<%# Eval("VisitPeriod") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OtherDetailLabel" runat="server" Text='<%# Eval("OtherDetail") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            
<%--EditItemTemplate--%>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="IdLabel" runat="server" Text='<%# Bind("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpNameTextBox" runat="server" Text='<%# Bind("CpName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpWebsiteTextBox" runat="server" Text='<%# Bind("CpWebsite") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpAddressTextBox" runat="server" Text='<%# Bind("CpAddress") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpSectorTextBox" runat="server" Text='<%# Bind("CpSector") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHRNameTextBox" runat="server" Text='<%# Bind("CpHRName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHRMobileTextBox" runat="server" Text='<%# Bind("CpHRMobile") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHREmailTextBox" runat="server" Text='<%# Bind("CpHREmail") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHRLandlineTextBox" runat="server" Text='<%# Bind("CpHRLandline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpTypeTextBox" runat="server" Text='<%# Bind("CpType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobAdNoTextBox" runat="server" Text='<%# Bind("JobAdNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobAdPathTextBox" runat="server" Text='<%# Bind("JobAdPath") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobDsgTextBox" runat="server" Text='<%# Bind("JobDsg") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobDscTextBox" runat="server" Text='<%# Bind("JobDsc") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobLocationTextBox" runat="server" Text='<%# Bind("JobLocation") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobOfferNoTextBox" runat="server" Text='<%# Bind("JobOfferNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobOpenForTextBox" runat="server" Text='<%# Bind("JobOpenFor") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobCTCTextBox" runat="server" Text='<%# Bind("JobCTC") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobBonusTextBox" runat="server" Text='<%# Bind("JobBonus") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobBondTextBox" runat="server" Text='<%# Bind("JobBond") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SelectPrefTextBox" runat="server" Text='<%# Bind("SelectPref") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SelectModeTextBox" runat="server" Text='<%# Bind("SelectMode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EligibilityTextBox" runat="server" Text='<%# Bind("Eligibility") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MemberNoTextBox" runat="server" Text='<%# Bind("MemberNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomNoTextBox" runat="server" Text='<%# Bind("RoomNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OtherReqTextBox" runat="server" Text='<%# Bind("OtherReq") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoundNoTextBox" runat="server" Text='<%# Bind("RoundNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VisitPeriodTextBox" runat="server" Text='<%# Bind("VisitPeriod") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OtherDetailTextBox" runat="server" Text='<%# Bind("OtherDetail") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            
<%--EmptyDataTemplate--%>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            
<%--InsertItemTemplate--%>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpNameTextBox" runat="server" Text='<%# Bind("CpName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpWebsiteTextBox" runat="server" Text='<%# Bind("CpWebsite") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpAddressTextBox" runat="server" Text='<%# Bind("CpAddress") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpSectorTextBox" runat="server" Text='<%# Bind("CpSector") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHRNameTextBox" runat="server" Text='<%# Bind("CpHRName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHRMobileTextBox" runat="server" Text='<%# Bind("CpHRMobile") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHREmailTextBox" runat="server" Text='<%# Bind("CpHREmail") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpHRLandlineTextBox" runat="server" Text='<%# Bind("CpHRLandline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CpTypeTextBox" runat="server" Text='<%# Bind("CpType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobAdNoTextBox" runat="server" Text='<%# Bind("JobAdNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobAdPathTextBox" runat="server" Text='<%# Bind("JobAdPath") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobDsgTextBox" runat="server" Text='<%# Bind("JobDsg") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobDscTextBox" runat="server" Text='<%# Bind("JobDsc") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobLocationTextBox" runat="server" Text='<%# Bind("JobLocation") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobOfferNoTextBox" runat="server" Text='<%# Bind("JobOfferNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobOpenForTextBox" runat="server" Text='<%# Bind("JobOpenFor") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobCTCTextBox" runat="server" Text='<%# Bind("JobCTC") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobBonusTextBox" runat="server" Text='<%# Bind("JobBonus") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="JobBondTextBox" runat="server" Text='<%# Bind("JobBond") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SelectPrefTextBox" runat="server" Text='<%# Bind("SelectPref") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SelectModeTextBox" runat="server" Text='<%# Bind("SelectMode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EligibilityTextBox" runat="server" Text='<%# Bind("Eligibility") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MemberNoTextBox" runat="server" Text='<%# Bind("MemberNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomNoTextBox" runat="server" Text='<%# Bind("RoomNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OtherReqTextBox" runat="server" Text='<%# Bind("OtherReq") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoundNoTextBox" runat="server" Text='<%# Bind("RoundNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VisitPeriodTextBox" runat="server" Text='<%# Bind("VisitPeriod") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="OtherDetailTextBox" runat="server" Text='<%# Bind("OtherDetail") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            
<%--ItemTemplate--%>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpNameLabel" runat="server" Text='<%# Eval("CpName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpWebsiteLabel" runat="server" Text='<%# Eval("CpWebsite") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpAddressLabel" runat="server" Text='<%# Eval("CpAddress") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpSectorLabel" runat="server" Text='<%# Eval("CpSector") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRNameLabel" runat="server" Text='<%# Eval("CpHRName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRMobileLabel" runat="server" Text='<%# Eval("CpHRMobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHREmailLabel" runat="server" Text='<%# Eval("CpHREmail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRLandlineLabel" runat="server" Text='<%# Eval("CpHRLandline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpTypeLabel" runat="server" Text='<%# Eval("CpType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobAdNoLabel" runat="server" Text='<%# Eval("JobAdNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobAdPathLabel" runat="server" Text='<%# Eval("JobAdPath") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobDsgLabel" runat="server" Text='<%# Eval("JobDsg") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobDscLabel" runat="server" Text='<%# Eval("JobDsc") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobLocationLabel" runat="server" Text='<%# Eval("JobLocation") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobOfferNoLabel" runat="server" Text='<%# Eval("JobOfferNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobOpenForLabel" runat="server" Text='<%# Eval("JobOpenFor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobCTCLabel" runat="server" Text='<%# Eval("JobCTC") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobBonusLabel" runat="server" Text='<%# Eval("JobBonus") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobBondLabel" runat="server" Text='<%# Eval("JobBond") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SelectPrefLabel" runat="server" Text='<%# Eval("SelectPref") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SelectModeLabel" runat="server" Text='<%# Eval("SelectMode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EligibilityLabel" runat="server" Text='<%# Eval("Eligibility") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MemberNoLabel" runat="server" Text='<%# Eval("MemberNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomNoLabel" runat="server" Text='<%# Eval("RoomNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OtherReqLabel" runat="server" Text='<%# Eval("OtherReq") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoundNoLabel" runat="server" Text='<%# Eval("RoundNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VisitPeriodLabel" runat="server" Text='<%# Eval("VisitPeriod") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OtherDetailLabel" runat="server" Text='<%# Eval("OtherDetail") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            
<%--LayoutTemplate--%>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Id</th>
                                    <th runat="server" style="width:200px;">Company Name</th>
                                    <th runat="server" style="width:200px;">Company Website</th>
                                    <th runat="server" style="width:300px;">Company Address</th>
                                    <th runat="server">Company Sector</th>
                                    <th runat="server" style="width:100px;">Company HR Name</th>
                                    <th runat="server">Company HR Mobile</th>
                                    <th runat="server">Company HR Email</th>
                                    <th runat="server">Company HR Landline</th>
                                    <th runat="server">Company Type</th>
                                    <th runat="server">Ad No</th>
                                    <th runat="server">Job Ad File Path</th>
                                    <th runat="server">Job Designation</th>
                                    <th runat="server" style="width:400px;">Job Description</th>
                                    <th runat="server">Job Location</th>
                                    <th runat="server">Job No. of Offer</th>
                                    <th runat="server">Job Open For</th>
                                    <th runat="server">Job CTC</th>
                                    <th runat="server">Job Bonus</th>
                                    <th runat="server">Job Bond</th>
                                    <th runat="server">Selection Prefrence</th>
                                    <th runat="server">Selection Mode</th>
                                    <th runat="server">Eligibility</th>
                                    <th runat="server">No. of Member</th>
                                    <th runat="server">Rooms Required</th>
                                    <th runat="server">Other Req</th>
                                    <th runat="server">No. of Round</th>
                                    <th runat="server">Visit Period</th>
                                    <th runat="server" style="width:300px;">Other Details</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            
<%--SelectedItemTemplate--%>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpNameLabel" runat="server" Text='<%# Eval("CpName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpWebsiteLabel" runat="server" Text='<%# Eval("CpWebsite") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpAddressLabel" runat="server" Text='<%# Eval("CpAddress") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpSectorLabel" runat="server" Text='<%# Eval("CpSector") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRNameLabel" runat="server" Text='<%# Eval("CpHRName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRMobileLabel" runat="server" Text='<%# Eval("CpHRMobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHREmailLabel" runat="server" Text='<%# Eval("CpHREmail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpHRLandlineLabel" runat="server" Text='<%# Eval("CpHRLandline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CpTypeLabel" runat="server" Text='<%# Eval("CpType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobAdNoLabel" runat="server" Text='<%# Eval("JobAdNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobAdPathLabel" runat="server" Text='<%# Eval("JobAdPath") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobDsgLabel" runat="server" Text='<%# Eval("JobDsg") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobDscLabel" runat="server" Text='<%# Eval("JobDsc") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobLocationLabel" runat="server" Text='<%# Eval("JobLocation") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobOfferNoLabel" runat="server" Text='<%# Eval("JobOfferNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobOpenForLabel" runat="server" Text='<%# Eval("JobOpenFor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobCTCLabel" runat="server" Text='<%# Eval("JobCTC") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobBonusLabel" runat="server" Text='<%# Eval("JobBonus") %>' />
                    </td>
                    <td>
                        <asp:Label ID="JobBondLabel" runat="server" Text='<%# Eval("JobBond") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SelectPrefLabel" runat="server" Text='<%# Eval("SelectPref") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SelectModeLabel" runat="server" Text='<%# Eval("SelectMode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EligibilityLabel" runat="server" Text='<%# Eval("Eligibility") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MemberNoLabel" runat="server" Text='<%# Eval("MemberNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomNoLabel" runat="server" Text='<%# Eval("RoomNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OtherReqLabel" runat="server" Text='<%# Eval("OtherReq") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoundNoLabel" runat="server" Text='<%# Eval("RoundNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VisitPeriodLabel" runat="server" Text='<%# Eval("VisitPeriod") %>' />
                    </td>
                    <td>
                        <asp:Label ID="OtherDetailLabel" runat="server" Text='<%# Eval("OtherDetail") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>

        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceJobNewAd" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementPortalDataConnectionString %>" SelectCommand="SELECT * FROM [NewAd]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>