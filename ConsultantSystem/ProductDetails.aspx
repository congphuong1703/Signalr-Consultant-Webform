<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ConsultantSystem.ProductDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/ProductDetail.css" rel="stylesheet" />

    <section class="mb-5" id="hide-scroll">
        <div class="row">
            <div class="text-center p-3">
                <h2><strong>Product Detail</strong></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4 mb-4 mb-md-0">
                <div>
                    <div class="row product-gallery mx-1">
                        <div class="col-12 mb-0">
                            <div class="row">
                                <figure class="view overlay rounded z-depth-1 main-img">
                                    <img src="https://media.ex-cdn.com/EXP/media.taichinhdoanhnghiep.net.vn/files/news/2021/03/26/ha-noi-diem-danh-nhieu-ong-trum-bat-dong-san-tri-hoan-nop-tien-dat-134146.jpg"
                                        class="img-fluid z-depth-1 rounded">
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-justify">
                <h5>Home</h5>
                <p class="mb-2 text-uppercase"><strong>Thông tin</strong></p>
                <p class="pt-1">
                    - Vị trí trung tâm, sầm uất, đi bộ chục bước ra ô tô 7 chỗ đỗ cửa. Xung quanh là chợ, trường học, tiện ích đầy đủ, sẵn có.
                    <br />
                    - Ngõ thông sang đường lớn đi Mỹ Đình, Cầu giấy, Trịnh Văn Bô, Đại lộ Thăng Long...
                    <br />
                    - Nhà thiết kế sang trọng, hiện đại, đầy đủ công năng , được tỉ mỉ xây dựng, hoàn thiện.
                    <br />
                    - Thiết kế:
                    <br />
                    - Nhà thiết kế cầu thang giữa, chia làm 2 phòng trong ngoài với khu WC ở giữa. Tổng 6 PN + 4 WC.
                    <br />
                    + Tầng 1: Phòng khách + bếp + 1 nvs
                    <br />
                    + Tầng 2 : 2 ngủ + 1 vệ sinh
                    <br />
                    + Tầng 3 : 2 ngủ + 1 vệ sinh
                    <br />
                    + Tầng 4 : 2 ngủ + 1 vệ sinh
                    <br />
                    + Tầng 5: Phòng thờ + Sân phơi.
                    <br />
                    + Sổ đỏ sang tên ngay ,thật sự thiện chí bán, sale cò đừng liên hệ mất công
                    <br />
                    - GIÁ BÁN MÙA COVID 2 TỶ 850 ( có thương lượng cho khách thiện chí muốn chốt nhanh )
                </p>
                <div class="table-responsive">
                    <table class="table table-sm table-borderless mb-0">
                        <tbody>
                            <tr>
                                <th class="pl-0 w-25" scope="row">Mức giá</th>
                                <td>10 tỷ</td>
                            </tr>
                            <tr>
                                <th class="pl-0 w-25" scope="row">Diện tích</th>
                                <td>120 m²</td>
                            </tr>
                            <tr>
                                <th class="pl-0 w-25" scope="row">Phòng ngủ</th>
                                <td>6 PN</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <hr>
                <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
                <button type="button" class="btn btn-light btn-md mr-1 mb-2">
                    <i class="fas fa-shopping-cart pr-2"></i>Add to cart</button>
            </div>
            <div class="col-md-2"></div>
        </div>

    </section>
    <!--Section: Block Content-->
</asp:Content>
