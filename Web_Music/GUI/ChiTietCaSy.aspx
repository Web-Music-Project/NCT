<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietCaSy.aspx.cs" Inherits="Web_Music.GUI.ChiTietCaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <% =dt1.Rows[0]["Name"].ToString() %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
    <style>
        *{
    margin: 0;
    padding: 0;
    font-family: 'Roboto', sans-serif;
}
:root{
    --primary-color:#2daaed;
}
.containerr{
    width: 100%;
    height: 100px;
    margin: 10px 0;
}
.width-box{
    width: 1170px;
    margin: 0 auto;
}
.story-header{
    width: 100%;
    height: 285px;
    background-color:#2e4a4c;
}
.story-header--detail{
    height: 100%;
    display: flex;
}
.detail__info{
    width: 260px;
    height: 100%;
}
.detail__info--img{
    height: 140px;
    width: 260px;
    text-align: center;
}
.detail__img{
    width: 910px;
    height: 100%;
}
.detail--img{
    width: 110px;
    height: 110px;
    border-radius: 50%;
    transform: translateY(15%);
}
.detail__info--system{
    text-align: center;
    font-size: 16px;
    font-weight:200;
    color: white;
}
.detail__info--singer{
    font-size: 26px;
    padding-bottom: 7px;
}
.detail__info--date{
    padding-bottom: 5px;
}
.detail__info--sex{
    padding-bottom: 5px;
}

/*  */
.story-menu{
    height: 50px;
    width: 100%;
    background-color: #f4f4f4;
}
.main-menu{
    height: 100%;
}
.main-menu ul{
    height: 100%;
    width: 100%;
    line-height: 50px;
}
.main-menu ul li{
    list-style: none;
    float: left;
    margin-right: 10px;
}

.main-menu ul li a{
    text-decoration: none;
    font-size: 16px;
    font-weight: 500;
    color: rgba(0, 0, 0, 0.822);
    display: block;
}
.main-menu ul li a:hover{
    color: var(--primary-color);
}
.story-singer{
    height: 500px; 
    /*  */
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}
.story-singer--left{
    width: 840px;
    height: 100%;
}
.story-singer--right{
    width: 300px;
    height: 100%;
}
.story-singer__text{
    color: var(--primary-color);
    font-size: 28px;
    font-weight: 300;
    margin-bottom: 5px;
}
.icon-story{
    font-size: 20px;
}
.story-singer__box{
    width: 100%;
    height: auto;
    padding: 10px;
    padding-bottom: 60px;
    margin-bottom: 10px;
}
.story-singer--album{
    width: 840px;
    height: 470px;
}
.story-singer--album ul{
    width: 100%;
    height: 100%;
}
.story-singer--album ul li{
    width: 152px;
    height: 230px;
    margin: 0 20px 10px 0;
    list-style: none;
    float: left;
}
.story-singer--album ul li a{
    text-decoration: none;
}
.box-singer--album{
    width: 152px;
    height: 152px;
    position: relative;
}
.box__img--img{
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.box-album--info{
    width: 152px;
    height: 67px;
 margin-top: 8px;
 
}
.box-album--info>h3{
    display: block;
}
.box-album--info>p{
    display: block;
}
.box-album--info>p>a:hover{
    color: var(--primary-color);
}
.box-album--info>h3>a:hover{
    color: var(--primary-color);
}
.box-singer--views{
    position: absolute;
    top: 0;
    left: 82px;
    width: 60px;
    height: 24px;
    padding: 0 5px 0 5px;
    background-color: rgba(0, 0, 0, 0.384);
    line-height: 24px;
}
.icon-headphone{
    float: left;
    color: #c7c7c7;
    font-size: 12px;
    height: 24px;
    line-height: 24px;
}
.album-views{
    font-size: 12px;
    color: #c7c7c7;
}
.box-album--info>h3>a{
    font-size: 16px;
    color:black;
    font-weight: 400;
    width: 100%;
    height: 100%;
    display: inline-block;
}
.box-album--info>p>a{
    font-size: 12px;
    color: #c7c7c7;
    width: 100%;
    height: 100%;
    display: inline-block;

}
/* song-singer */
.songs-singer--detail{
    width: 870px;
    height: 60px;
    padding: 5px 0;
    border-top: 1px solid rgba(128, 128, 128, 0.247);
    display: flex;
    justify-content: space-between;
    line-height: 60px;
}
.songs--detail__info{
    display: flex;
    justify-content: space-between;
}
.songs--detail__action a{
    text-decoration: none;
    color: rgba(128, 128, 128, 0.863);
    margin-right: 8px;
    font-size: 20px;
}
.songs--detail__action a:hover{
    color: var(--primary-color);
}
.action-play{
    font-size: 25px;
}
.songs--detail__views{
    font-size: 12px;
    color: rgba(128, 128, 128, 0.863);

}
.info__img{
    width: 60px;
    height: 60px;
    object-fit: cover;
    margin-right: 10px;
}
.info__img--text h3{
    height: 40px;
}
.info__img--text h3>a{
    height: 20px;
    font-weight: 200;
    font-size: 16px;
    text-decoration: none;
    color: black;
}
.info__img--text h3>a:hover{
    color: var(--primary-color);
}
.info__img--text p{
    height: 12px;
    line-height: 12px;
}
.info__img--text p>a{
font-size: 12px;
color:rgba(128, 128, 128, 0.582);
text-decoration: none;
line-height: 12px;
}
.info__img--text p>a:hover{
    color: var(--primary-color);
}
/*  */
.artist-diff{
    height: 50px;
    width: 100%;
    line-height: 50px;
}
.artist-diff>a{
    text-decoration: none;
    color: var(--primary-color);
    font-weight: 100;
    font-size: 18px;
}
.singer--first{
    height: 300px;
    width: 300px;
    margin:  0 15px 15px 0;
    background-color: var(--primary-color);
    position: relative;
}
.singer--first>a{
    text-decoration: none;
}
.singer--first>a>img{
    height: 300px;
    width: 300px;
    object-fit: cover;
}
.story-singer--right>ul>li{
    list-style: none;
    margin-bottom: 15px;
}
.singer-list{
    width: 142px;
    height: 142px;
    float: left;
}
.singer-list--img{
    width: 142px;
    height: 142px;
    object-fit: cover;
}

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div style="height:40px;"></div>
    <div class="containerr">
        <div class="story-header ">
            <div class="story-header--detail width-box">
                <div class="detail__info">
                    <div class="detail__info--img">
                        <img src="../../Image/Cover_vuong/<% =dt1.Rows[0]["Avatar"].ToString() %>" alt="" class="detail--img" style="object-fit:cover;" onerror="this.onerror=null; this.src='../../Image/Cover_vuong/singer_default_image.png'">
                    </div>
                    <div class="detail__info--system">
                        <p class="detail__info--singer"><% =dt1.Rows[0]["Name"].ToString() %></p>
                        <p class="detail__info--date">Sinh nhật: <% =dt1.Rows[0]["DateOfBirth"].ToString() %></p>
                        <p class="detail__info--sex">Giới tính: <span><% =dt1.Rows[0]["Sex"].ToString() %></span></p>
                        <p class="detail__info--nation">Quốc gia: <span><% =dt1.Rows[0]["Nation"].ToString() %></span></p>
                    </div>
                </div>

                <div class="detail__img">
                    <img class="detail__img" src="../../Image/Cover_vuong/<% =dt1.Rows[0]["Avatar"].ToString() %>" alt="" style="object-fit:contain;" onerror="this.onerror=null; this.src='../../Image/Cover_vuong/singer_default_image.png'">
                </div>
            </div>
        </div>

        <!--  -->
        
        <!--  -->
        <div class="story-singer width-box">
            <div class="story-singer--left">
                <h3 class="story-singer__text">
                    Tiểu sử
                    <i class=" icon-story fas fa-chevron-right"></i>
                </h3>
                <div class="story-singer__box">     
                    <% =dt1.Rows[0]["Story"].ToString() %>
                </div>
                <h3 class="story-singer__text">
                    Bài hát của <span><% =dt1.Rows[0]["Name"].ToString() %></span>
                    <i class=" icon-story fas fa-chevron-right"></i>
                </h3>

                <div id="today-playlist">
					<div class="album-list">



						<%for (int i = 0; i < dt2.Rows.Count; i++)
                                                  { %>
								<div class="album-item">
							<div>
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt2.Rows[i]["ID"].ToString() %>">
									<img src="../../Image/Cover_vuong/<% =dt2.Rows[i]["Thumbnail"].ToString() %>" style="width:100%;height:143px; object-fit:cover;" onerror="this.onerror=null; this.src='../../Image/Cover_vuong/song_default_image.png'"/> 	
								</a>
							</div>
							<p> 
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt2.Rows[i]["ID"].ToString() %>"><% =dt2.Rows[i]["Name"].ToString() %></a>
							</p>
							<span id="view">
								<span></span>
								<span><% =dt2.Rows[i]["Views"].ToString() %></span>
							</span>
						</div>
						<%} %>



					</div>
				</div>

                <!--  -->
                
                
            </div>

            
        </div>
    </div>
    <div style="height:1200px;"></div>
</asp:Content>
