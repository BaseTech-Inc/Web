﻿<%@ Page Title="Locais" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Locais.aspx.cs" Inherits="Tupa_Web.View.Locais.Locais" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Content/Css/locais.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container_wrapper">
        <div class="search">
            <label for="search">
                <span class="material-icons">
                search
                </span>
            </label>
                
            <input type="text" name="search" id="search" placeholder="Pesquisar..." class="card">
        </div>

        <div class="content">
            <!-- Mais pesquisados -->
            <div class="more-search">
                <p>Mais pesquisados</p>

                <div class="list scroll">
                    <div class="card">
                        <div class="title">
                            <div class="icon">
                                <span class="material-icons-outlined">
                                    schedule
                                </span>
                            </div>                                
    
                            <div class="description">
                                <h4>Ermelino Matarazzo, São Paulo</h4>
                                <p>19º</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="title">
                            <div class="icon">
                                <span class="material-icons-outlined">
                                    schedule
                                </span>
                            </div>                                
    
                            <div class="description">
                                <h4>Belém, São Paulo</h4>
                                <p>24º</p>
                            </div>
                        </div>
                    </div>
                </div>                   
            </div>

            <div class="week">
                <asp:Repeater ID="rep" runat="server">
                    <HeaderTemplate>
                        <p>Esta semana</p>

                        <div class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="card">
                            <div class="title">
                                <div class="icon">
                                    <span class="material-icons-outlined">
                                        directions_car
                                    </span>
                                </div>                                
    
                                <div class="description">
                                    <h4><%# DataBinder.Eval(Container.DataItem, "Local") %></h4>
                                    <p><%# DataBinder.Eval(Container.DataItem, "IntervaloDeTempo") %> (
                                        <%# DataBinder.Eval(Container.DataItem, "DistanciaPercurso") %>)</p>
    
                                </div>
                            </div>
                            <div class="body">
                                <div class="map card">
                                    <iframe src='<%# DataBinder.Eval(Container.DataItem,"UrlMapas") %>' width="100%" height="100" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>
                            </div>
                            <div class="footer">
                                <div>
                                    <p><%# DataBinder.Eval(Container.DataItem, "Eventos") %></p>
                                    <p>Eventos</p>
                                </div>
                                <div>
                                    <p><%# DataBinder.Eval(Container.DataItem, "Enchentes") %></p>
                                    <p>Enchentes</p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                        <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <div class="month">
                <asp:Repeater ID="repMonth" runat="server">
                    <HeaderTemplate>
                        <p>Este mês</p>

                        <div class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="card">
                            <div class="title">
                                <div class="icon">
                                    <span class="material-icons-outlined">
                                        directions_car
                                    </span>
                                </div>                                
    
                                <div class="description">
                                    <h4><%# DataBinder.Eval(Container.DataItem, "Local") %></h4>
                                    <p><%# DataBinder.Eval(Container.DataItem, "IntervaloDeTempo") %> (
                                        <%# DataBinder.Eval(Container.DataItem, "DistanciaPercurso") %>)</p>
    
                                </div>
                            </div>
                            <div class="body">
                                <div class="map card">
                                    <iframe src='<%# DataBinder.Eval(Container.DataItem,"UrlMapas") %>' width="100%" height="100" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>
                            </div>
                            <div class="footer">
                                <div>
                                    <p><%# DataBinder.Eval(Container.DataItem, "Eventos") %></p>
                                    <p>Eventos</p>
                                </div>
                                <div>
                                    <p><%# DataBinder.Eval(Container.DataItem, "Enchentes") %></p>
                                    <p>Enchentes</p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>                
            </div>
            <div class="year">
                <asp:Repeater ID="repYear" runat="server">
                    <HeaderTemplate>
                        <p>Este ano</p>

                        <div class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="card">
                            <div class="title">
                                <div class="icon">
                                    <span class="material-icons-outlined">
                                        directions_car
                                    </span>
                                </div>                                
    
                                <div class="description">
                                    <h4><%# DataBinder.Eval(Container.DataItem, "Local") %></h4>
                                    <p><%# DataBinder.Eval(Container.DataItem, "IntervaloDeTempo") %> (
                                        <%# DataBinder.Eval(Container.DataItem, "DistanciaPercurso") %>)</p>
    
                                </div>
                            </div>
                            <div class="body">
                                <div class="map card">
                                    <iframe src='<%# DataBinder.Eval(Container.DataItem,"UrlMapas") %>' width="100%" height="100" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>
                            </div>
                            <div class="footer">
                                <div>
                                    <p><%# DataBinder.Eval(Container.DataItem, "Eventos") %></p>
                                    <p>Eventos</p>
                                </div>
                                <div>
                                    <p><%# DataBinder.Eval(Container.DataItem, "Enchentes") %></p>
                                    <p>Enchentes</p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>

        <nav class="pagination">
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLinkBack" runat="server" CssClass="cta left" onclick="BackClick(this)">
                        <svg width="13px" height="10px" viewBox="0 0 13 10">
                            <path d="M1,5 L11,5"></path>
                            <polyline points="8 1 12 5 8 9"></polyline>
                        </svg>
                        <span>anterior</span>
                    </asp:HyperLink>
                </li>
                <asp:Repeater ID="repeaterPagination" runat="server">
                    <ItemTemplate>
                        <li class="current">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Page.GetRouteUrl("Locate", new { pageNumber = DataBinder.Eval(Container.DataItem, "PageNumber") })%>'><%# DataBinder.Eval(Container.DataItem, "PageNumber") %></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                <li>
                    <asp:HyperLink ID="HyperLinkNext" runat="server" CssClass="cta" onclick="NextClick(this)">
                        <span>próximo</span>
                        <svg width="13px" height="10px" viewBox="0 0 13 10">
                            <path d="M1,5 L11,5"></path>
                            <polyline points="8 1 12 5 8 9"></polyline>
                        </svg>
                    </asp:HyperLink>
                </li>
            </ul>
        </nav>
    </div>

    <script>
        function NextClick(element) {
            __doPostBack('<%= HyperLinkNext.ClientID %>')
        }

        function BackClick(element) {
            __doPostBack('<%= HyperLinkBack.ClientID %>')
        }
    </script>
</asp:Content>
