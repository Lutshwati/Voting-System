<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="PRvote.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.PRvote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container_2 pb-3">
        <center>
            <h1 id="capt">Vote for Metropolitan proportional represantation(PR)</h1>
        </center>
        <hr id="horizontal1" />
        <div>
            <center>
                <asp:GridView
                    ID="GridView1"
                    runat="server"
                    AutoGenerateColumns="False"
                    BackColor="#FFF8EA"
                    BorderColor="black"
                    BorderStyle="Solid"
                    BorderWidth="1px"
                    CellPadding="4"
                    Width="1002px"
                    CellSpacing="2"
                    ForeColor="Black"
                    GridLines="Both">

                    <Columns>
                        <asp:BoundField DataField="Party_Name" HeaderText="Party_Name" SortExpression="Party_Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                        <%--<asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="Party_Name" HeaderText="Party_Name" SortExpression="Party_Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <center>
                                    <h7 style="color: white !important">Logo </h7>
                                </center>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <center>
                                    <asp:Image runat="server" width="100px" height="100px"
                                        ImageUrl='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Image_Data")) %>' />
                                </center>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center"
                            ItemStyle-BorderColor="#AC4425"
                            ItemStyle-BorderWidth="1px"
                            HeaderStyle-BorderColor="black"
                            HeaderStyle-BorderWidth="1px"
                            HeaderStyle-HorizontalAlign="Center">
                            <HeaderTemplate>
                                <center>

                                    <h7 style="color: white !important">Vote</h7>
                                </center>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <center>
                                <asp:LinkButton runat="server" ID="Vote" OnClick="Vote_Click" Width="15px" Height="15px">VOTE</asp:LinkButton>
                                </center>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#AC4425" />
                    <HeaderStyle BackColor="#AC4425"
                        Font-Bold="True"
                        ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC"
                        ForeColor="Black"
                        HorizontalAlign="Left" />
                    <RowStyle BackColor="#FFF8EA"
                        BorderColor="#AC4425"
                        BorderStyle="Solid"
                        BorderWidth="1px" />

                    <SelectedRowStyle BackColor="#000099"
                        Font-Bold="True"
                        ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </center>
        </div>


    </div>
</asp:Content>
