<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietAlbum.aspx.cs" Inherits="Web_Music.GUI.ChiTietAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <% ="Album " + dt2.Rows[0]["Name"].ToString() %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="container" id="main">
		<div id="content">
				<div id="today-playlist">
					<h3><a href="#"><% =dt2.Rows[0]["Name"].ToString() %></a></h3>
					<div class="album-list">


                        <%for (int i = 0; i < dt1.Rows.Count; i++)
                                                  { %>
								<div class="album-item">
							<div>
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt1.Rows[i]["ID"].ToString() %>">
									<img src="../../Image/Cover_vuong/<% =dt1.Rows[i]["Thumbnail"].ToString() %>" alt="image not found!" width="100%" style="height:143px; object-fit:cover;">	
								</a>
							</div>
							<p> 
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt1.Rows[i]["ID"].ToString() %>"><% =dt1.Rows[i]["Name"].ToString() %></a>
							</p>
							<span id="view">
								<span></span>
								<span><% =dt1.Rows[i]["Views"].ToString() %></span>
							</span>
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
							<a href="ChiTietAlbum.aspx?Album_ID=18">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/09/03/4/5/9/8/1599120670684_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/12/04/5/e/f/9/1607076279751_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/06/17/7/d/8/9/1592361651958_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/11/04/c/1/3/4/1604476818537_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
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
                             <li>
                             	<span>1</span>
                             	<div>
                             		<h3>Trên tình bạn dưới tình yêu</h3>
                             		<h5>Min</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>2</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>3</span>
                             	<div>
                             		<h3>Anh Không Tha Thứ</h3>
                             		<h5>Đình Dũng</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>4</span>
                             	<div>
                             		<h3>Tình Yêu Khủng Long</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>5</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Tùng Viu</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>6</span>
                             	<div>
                             		<h3>Nàng Thơ</h3>
                             		<h5>Đình Dũng</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>7</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>8</span>
                             	<div>
                             		<h3>Anh Không Tha Thứ</h3>
                             		<h5>Đình Dũng</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>9</span>
                             	<div>
                             		<h3>Tình Yêu Khủng Long</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>10</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Tùng Viu</h5>
                             	</div>
                             </li>
                            
                        </ul>
                </div>
                <div class="list_chart_music" id="top20-au-my" style="display: none;">     
                        <ul>
                             <li>
                             	<span>1</span>
                             	<div>
                             		<h3>Mad At Disney</h3>
                             		<h5>salem ilese</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>2</span>
                             	<div>
                             		<h3>That's Girl</h3>
                             		<h5>Taylor Swift</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>3</span>
                             	<div>
                             		<h3>Sugar</h3>
                             		<h5>Marron 5</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>4</span>
                             	<div>
                             		<h3>Reality</h3>
                             		<h5>4P's</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>5</span>
                             	<div>
                             		<h3>Night King</h3>
                             		<h5>Flexible</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>6</span>
                             	<div>
                             		<h3>I love you</h3>
                             		<h5>Redicet</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>7</span>
                             	<div>
                             		<h3>Night King</h3>
                             		<h5>Flexible</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>8</span>
                             	<div>
                             		<h3>I love you</h3>
                             		<h5>Redicet</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>9</span>
                             	<div>
                             		<h3>Sugar</h3>
                             		<h5>Marron 5</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>10</span>
                             	<div>
                             		<h3>Reality</h3>
                             		<h5>4P's</h5>
                             	</div>
                             </li>
                            
                        </ul>
                </div>
                <div class="list_chart_music" id="top20-han-quoc"  style="display: none;">     
                        <ul>
                             <li>
                             	<span>1</span>
                             	<div>
                             		<h3>Daniel Jamse</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>2</span>
                             	<div>
                             		<h3>Love Girl</h3>
                             		<h5>Blackpink</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>3</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>4</span>
                             	<div>
                             		<h3>I can't Stop Me</h3>
                             		<h5>Twice</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>5</span>
                             	<div>
                             		<h3>MaGo</h3>
                             		<h5>GFriend</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>6</span>
                             	<div>
                             		<h3>Maria</h3>
                             		<h5>MAMABO</h5>
                             	</div>
                             </li>
                               <li>
                             	<span>7</span>
                             	<div>
                             		<h3>MaGo</h3>
                             		<h5>GFriend</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>8</span>
                             	<div>
                             		<h3>Maria</h3>
                             		<h5>MAMABO</h5>
                             	</div>
                             </li>
                               <li>
                             	<span>9</span>
                             	<div>
                             		<h3>MaGo</h3>
                             		<h5>GFriend</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>10</span>
                             	<div>
                             		<h3>Maria</h3>
                             		<h5>MAMABO</h5>
                             	</div>
                             </li>
                        </ul>
                </div>
			</div>	
		</div>
	</div>
<script src="./Script/Home_Script.js"></script>
</asp:Content>
