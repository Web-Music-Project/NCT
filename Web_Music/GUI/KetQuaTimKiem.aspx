<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="KetQuaTimKiem.aspx.cs" Inherits="Web_Music.GUI.KetQuaTimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    KQ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="container" id="main">
		<div id="content">
				<div id="today-playlist">
					<h3><a href="#">Ca sĩ</a></h3>
					<div class="album-list">


                        <%	int max = 20, temp = 0;
                            if(dt1.Rows.Count > max)
                            {
                                temp = max;
                            }
                            else
                            {
								temp = dt1.Rows.Count;
                            }
                            for (int i = 0; i < temp; i++)
                            { %>
								<div class="album-item">
							<div>
								<a href="ChiTietCaSy.aspx?Singer_ID=<% =dt1.Rows[i]["ID"].ToString() %>">
									<img src="../../Image/Cover_vuong/<% =dt1.Rows[i]["Avatar"].ToString() %>" alt="image not found!" width="100%" style="height:143px; object-fit:cover;" onerror="this.onerror=null; this.src='../../Image/Cover_vuong/singer_default_image.png'">	
								</a>
							</div>
							<p> 
								<a href="ChiTietCaSy.aspx?Singer_ID=<% =dt1.Rows[i]["ID"].ToString() %>"><% =dt1.Rows[i]["Name"].ToString() %></a>
							</p>
						</div>
						<%} %>


					</div>
				</div>

			<div id="today-playlist">
					<h3><a href="#">Bài hát</a></h3>
					<div class="album-list">


                        <%
							int max1 = 25, temp1 = 0;
                            if(dt2.Rows.Count > max)
                            {
                                temp1 = max1;
                            }
                            else
                            {
								temp1 = dt2.Rows.Count;
                            }
							for (int i = 0; i < temp1; i++)
                                                  { %>
								<div class="album-item">
							<div>
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt2.Rows[i]["ID"].ToString() %>">
									<img src="../../Image/Cover_vuong/<% =dt2.Rows[i]["Thumbnail"].ToString() %>" alt="image not found!" width="100%" style="height:143px; object-fit:cover;" onerror="this.onerror=null; this.src='../../Image/Cover_vuong/singer_default_image.png'">	
								</a>
							</div>
							<p> 
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt2.Rows[i]["ID"].ToString() %>"><% =dt2.Rows[i]["Name"].ToString() %></a>
							</p>
						</div>
						<%} %>


					</div>
				</div>
				
		</div>
		<div id="sidebar">
			<div class="trending" >
					<div class="trending-item" id="td1">
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/12/01/f/2/f/d/1606813178178_600.jpg"  alt="" width="100%" >
						<h3 style="text-align: center;" >Thủy Tiên</h3>
					</div>
					<div class="trending-item"  id="td2">
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/05/27/6/9/5/0/1590568952971_600.jpg" alt="" width="100%"   >
						<h3 style="text-align: center; " >Hoài Lâm</h3>
					</div>
					<div class="trending-item"  id="td3" >
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/07/03/e/9/8/c/1593758437383_600.jpg" alt="" width="100%"   >
						<h3 style="text-align: center;">Trung Quân</h3>
					</div>
					<div class="trending-item"  id="td4">
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/06/14/d/8/d/a/1560481615550_600.jpg" alt="" width="100%"  >
						<h3 style="text-align: center;" >Mỹ Tâm</h3>
					</div>
					<div class="trending-item"  id="td5" >
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/11/23/f/2/4/4/1606126912651_600.jpg" alt="" width="100%" >
							<h3 style="text-align: center;" >Binz</h3>
					</div>
					<div class="bot">
					<p>Top Nghệ Sĩ Trending Trong Tuần</p>				
					<ul>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/12/01/f/2/f/d/1606813178178_600.jpg" alt="" width="30px" open="toggle" target= "td1"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/05/27/6/9/5/0/1590568952971_600.jpg" alt="" width="30px" open="toggle" target= "td2"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/07/03/e/9/8/c/1593758437383_600.jpg" alt="" width="30px" open="toggle" target= "td3"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/06/14/d/8/d/a/1560481615550_600.jpg" alt="" width="30px" open="toggle" target= "td4"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/11/23/f/2/4/4/1606126912651_600.jpg" alt="" width="30px" open="toggle" target= "td5"></a></li>
						

					</ul>
					</div>
				
			</div>
			<div class="theme-hot">
					<h3><a href="#">CHỦ ĐỀ HOT</a></h3>
					<ul>
						<li>
							<a href="ChiTietAlbum.aspx?Album_ID=18"> <%--18 là EDM--%>
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/09/03/4/5/9/8/1599120670684_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="ChiTietAlbum.aspx?Album_ID=19"> <%--19 là MÙA ĐÔNG--%>
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/12/04/5/e/f/9/1607076279751_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="ChiTietAlbum.aspx?Album_ID=20"> <%--20 là CA SĨ HOA NGƯ--%>
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/06/17/7/d/8/9/1592361651958_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="ChiTietAlbum.aspx?Album_ID=21"> <%--21 là YG FAMILY--%>
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/11/04/c/1/3/4/1604476818537_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="ChiTietAlbum.aspx?Album_ID=22"> <%--22 là NONSTOP--%>
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/06/11/9/5/9/3/1591856761476_org.jpg" alt="" width="300px">
							</a>
						</li>
					</ul>
				</div>
			<div class="ranking">
				<h3><a href="#">BXH Bài Hát</a></h3>
				<div class="top-rank">
                        <a href="#"  id="bxh1">Việt Nam</a>
                        <a href="#" id="bxh2">Âu Mỹ</a>
                        <a href="#" id="bxh3">Hàn Quốc</a>                          
                </div>
                <div class="list_chart_music" id="top20-viet">     
                      <ul>
                        <% for (int i = 0; i < dt3.Rows.Count; i++)
                           {%>
								<li>
									<span><% =i+1%></span>
                                    <div>
                                        <a href="ChiTietBaiHat.aspx?Song_ID=<% =dt3.Rows[i]["ID"].ToString() %>" style="color:#000000CC;"><h3><% =dt3.Rows[i]["Name"].ToString() %></h3></a>
                                        <a href="ChiTietCaSy.aspx?Singer_ID=<% =dt3.Rows[i]["ID3"].ToString() %>" style="color:#000000CC;"><h5><% =dt3.Rows[i]["Name2"].ToString() %></h5></a>
                                    </div>
								</li>
						<%} %>
                    </ul>   
                </div>
                <div class="list_chart_music" id="top20-au-my" style="display: none;">     
                    <ul>
                         <% for (int i = 0; i < dt4.Rows.Count; i++)
                           {%>
								<li>
									<span><% =i+1%></span>
                                    <div>
                                        <a href="ChiTietBaiHat.aspx?Song_ID=<% =dt4.Rows[i]["ID"].ToString() %>" style="color:#000000CC;"><h3><% =dt4.Rows[i]["Name"].ToString() %></h3></a>
                                        <a href="ChiTietCaSy.aspx?Singer_ID=<% =dt4.Rows[i]["ID3"].ToString() %>" style="color:#000000CC;"><h5><% =dt4.Rows[i]["Name2"].ToString() %></h5></a>
                                    </div>
								</li>
						<%} %>
                    </ul>   
                </div>
                <div class="list_chart_music" id="top20-han-quoc"  style="display: none;">     
                     <ul>
                         <% for (int i = 0; i < dt6.Rows.Count; i++)
                           {%>
								<li>
									<span><% =i+1%></span>
                                    <div>
                                        <a href="ChiTietBaiHat.aspx?Song_ID=<% =dt6.Rows[i]["ID"].ToString() %>" style="color:#000000CC;"><h3><% =dt6.Rows[i]["Name"].ToString() %></h3></a>
                                        <a href="ChiTietCaSy.aspx?Singer_ID=<% =dt6.Rows[i]["ID3"].ToString() %>" style="color:#000000CC;"><h5><% =dt6.Rows[i]["Name2"].ToString() %></h5></a>
                                    </div>
								</li>
						<%} %>
                    </ul>   
                </div>
			</div>	
		</div>
	</div>
<script>
    // bảng xếp hạng
var a1 = document.getElementById('bxh1');
var a2 = document.getElementById('bxh2');
var a3 = document.getElementById('bxh3');

var t1 = document.getElementById('top20-viet');
var t2 = document.getElementById('top20-au-my');
var t3 = document.getElementById('top20-han-quoc');
a1.addEventListener("click", (event) => {
	event.preventDefault();
	t1.style.display = 'block';
	a1.style.background = '#E74C3C';
	a1.style.color = 'white';
	a2.style.background = 'transparent';
	a3.style.background = 'transparent';
	t2.style.display = 'none';
	t3.style.display = 'none';
});
a2.addEventListener("click", (event) => {
	event.preventDefault();
	t1.style.display = 'none';
	a2.style.background = '#E74C3C';
	a1.style.background = 'transparent';
	a3.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.)';
	t2.style.display = 'block';
	t3.style.display = 'none';
});
a3.addEventListener("click", (event) => {
	event.preventDefault();
	t1.style.display = 'none';
	t2.style.display = 'none';
	t3.style.display = 'block';
	a2.style.background = 'transparent';
	a1.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.8)';
	a3.style.background = '#E74C3C';
});
a1.addEventListener("mouseover", (event) => {
	event.preventDefault();
	a1.style.color = 'white';
	a1.style.background = '#E74C3C';
	a2.style.background = 'transparent';
	a3.style.background = 'transparent';
});
a2.addEventListener("mouseover", (event) => {
	event.preventDefault();

	a2.style.background = '#E74C3C';
	a1.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.8)';
	a3.style.background = 'transparent';

});
a3.addEventListener("mouseover", (event) => {
	event.preventDefault();

	a2.style.background = 'transparent';
	a1.style.background = 'transparent';
	a1.style.color = 'rgba(0,0,0,0.8)';
	a3.style.background = '#E74C3C';
});

////trending

var togglelis = document.querySelectorAll('.trending ul li a img[open="toggle"]');
console.log(togglelis);
togglelis.forEach(img => {
	img.onmouseover = (event) => {
		var divs = document.querySelectorAll('.trending-item');

		divs.forEach(div => div.style.display = 'none');
		var targetid = event.target.getAttribute("target");
		console.log(targetid);
		var targettd = document.getElementById(targetid);
		if (targettd.style.display == 'block') {
			targettd.style.display = 'none';
		}
		else {
			targettd.style.display = 'block';
		}

	}
});
</script>
</asp:Content>
