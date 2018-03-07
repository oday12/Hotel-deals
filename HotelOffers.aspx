<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HotelOffers.aspx.cs" Inherits="Hoteldeals.HotelOffers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/JSON.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $(function () {
              $("#txtminTripStartDate").datepicker({ dateFormat: "yy-mm-dd" });
              $("#txtmaxTripStartDate").datepicker({ dateFormat: "yy-mm-dd" });
          });
      });
  </script>
</head>
<body>
    <form id="form1" runat="server">
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hotel Deals</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="~/HotelOffers.aspx">Home</a></li>
    </ul>
  </div>
</nav>
        <div class="container-fluid">
          <div class="col-sm-12">
              <div class="col-sm-7" id="showhotel">
              <%--    <div class="col-sm-12" style="border:1px solid #000000">
                      <div class="col-sm-3">
                            <img src="https://images.trvl-media.com/hotels/11000000/10990000/10980200/10980182/10980182_143_t.jpg" />
                      </div>
                    <div class="col-sm-6">
                         <h3>Ocean Reserve OceanView Sunny Isles Luxury Condos</h3>
                        <p>In Miami , Florida</p>
                    </div>
                     <div class="col-sm-3">
                         <div class="col-sm-12">
                             <p style="text-decoration:line-through;display:inline;">783.6 $</p>
                         <p style="">596 $</p>
                         </div>
                         <div class="col-sm-12">
                             <p style="color:blue">(28 reviews)</p>
                         </div>
                     </div>

                  </div>--%>
                  <script>
                   
                      strhotel = "";
                      for (i in myhotel.offers.Hotel) {
                       
                          strhotel += "<div class='col-sm-12' style='padding-bottom:10px;'>"
                          strhotel += "<div class='col-sm-12' style='border:1px solid #000000;'>";
                          strhotel += "<div class='col-sm-3'>";
                          strhotel += "<img src='" + myhotel.offers.Hotel[i].hotelInfo.hotelImageUrl + "' />";
                          strhotel += "</div>";//end div col-sm-3
                          strhotel += "<div class='col-sm-6'>";
                          strhotel += "<h4>";
                          strhotel += myhotel.offers.Hotel[i].hotelInfo.hotelName;
                          strhotel += "</h4>";
                          strhotel += "<p> In ";
                          strhotel += myhotel.offers.Hotel[i].destination.shortName+" , ";
                          strhotel += myhotel.offers.Hotel[i].destination.province;
                          strhotel += "</p>";
                          strhotel += "</div>";//end div col-sm-6
                          strhotel += "<div class='col-sm-3'>";
                          strhotel += "<div class='col-sm-12'>";
                          strhotel += "<p style='text-decoration:line-through;display:inline'>";
                          strhotel += myhotel.offers.Hotel[i].hotelPricingInfo.originalPricePerNight;
                          strhotel += "$"
                          strhotel += "</p>";
                          strhotel +="&nbsp;&nbsp;"
                          strhotel += "<p style='display:inline'>";
                          var p = myhotel.offers.Hotel[i].hotelPricingInfo.originalPricePerNight - myhotel.offers.Hotel[i].hotelPricingInfo.averagePriceValue;
                          strhotel += Math.round(p);
                          strhotel += "$"
                          strhotel += "</p>";

                          strhotel += "</div>";//end div col-sm-12
                          strhotel += "<div class='col-sm-12'>";
                          strhotel += "<p style='color:blue'>";
                          strhotel += "( " + myhotel.offers.Hotel[i].hotelInfo.hotelReviewTotal + " reviews)";
                          strhotel += "</p>";
                          strhotel += "</div>";//end div col-sm-12
                          strhotel += "</div>";//end div col-sm-3
                          strhotel +="</div>"
                          strhotel += "</div>";//end div col-sm-12
                          }
                      
                         
                     
                      document.getElementById("showhotel").innerHTML = strhotel.toString();
                  </script>
              </div>
              <div class="col-sm-5">
                  <div class=" panel panel-default">
                      <div class=" panel-heading">Enquiry</div>
                      <div class="panel-body">
                          <div class="col-sm-12">
                               <div class="col-sm-12">
                              <asp:TextBox ID="txtLocation" runat="server" placeholder="Enter destinationCity or regionIds" class="form-control"></asp:TextBox>
                                  </div>
                              <div class="col-sm-6"> <br /> <asp:TextBox ID="txtminTripStartDate" runat="server" placeholder="yy-mm-dd" class="form-control"></asp:TextBox> </div>
                               <div class="col-sm-6">  <br /> <asp:TextBox ID="txtmaxTripStartDate" runat="server" placeholder="yy-mm-dd" class="form-control"></asp:TextBox> </div>
                              <div class="col-sm-12">
                                  <br /> 
                                  <div class="col-sm-6" style="padding:0px;">
                                      <asp:TextBox ID="txtlengthOfStay" runat="server" TextMode="Number" placeholder="length Of Stay" class="form-control"></asp:TextBox>
                                  </div>
                                  
                                  </div>
                              <div class="col-sm-6"> <br /> <asp:TextBox TextMode="Number" ID="txtminStarRating" runat="server" placeholder="Min Star Rating" class="form-control"></asp:TextBox> </div>
                               <div class="col-sm-6">  <br /> <asp:TextBox TextMode="Number" ID="txtmaxStarRating" runat="server" placeholder="Max Star Rating" class="form-control"></asp:TextBox> </div>

                                <div class="col-sm-6"> <br /> <asp:TextBox TextMode="Number" ID="txtminTotalRate" runat="server" placeholder="Min Total Rating" class="form-control"></asp:TextBox> </div>
                               <div class="col-sm-6">  <br /> <asp:TextBox TextMode="Number" ID="txtmaxTotalRate" runat="server" placeholder="Max Total Rating" class="form-control"></asp:TextBox> </div>

                              <div class="col-sm-6"> <br /> <asp:TextBox TextMode="Number" ID="txtminGuestRate" runat="server" placeholder="Min Guest Rating" class="form-control"></asp:TextBox> </div>
                               <div class="col-sm-6">  <br /> <asp:TextBox TextMode="Number" ID="txtmaxGuestRate" runat="server" placeholder="Max Guest Rating" class="form-control"></asp:TextBox> </div>
                              <div class="col-sm-12"><br /><p style="font-size:16px;">Note:Please enter all fields</p></div>
                          </div>
                          
                        
                        
                      </div>
                      <div class=" panel-footer">
                  <%--        <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="functionSearch()" ClientIDMode="Static" />--%>
                <%--   <input id="btnSearch" type="button" value="Search" onclick="functionSearch()" />--%>
                          <button id="btnSearch" type="button" onclick="functionSearch()">Search</button>
                            <script>
                                
                                function functionSearch() {
                                    var txtLocation = document.getElementById('<%= txtLocation.ClientID %>').value;
                                    strhotel1 = "";
                                    count=0;
                                    for (i in myhotel.offers.Hotel) {

                                        if (myhotel.offers.Hotel[i].destination.city == txtLocation || myhotel.offers.Hotel[i].destination.regionID == txtLocation) {
                                            if (!Date.prototype.toISODate) {
                                                Date.prototype.toISODate = function () {
                                                    return this.getFullYear() + '-' +
                                                           ('0' + (this.getMonth() + 1)).slice(-2) + '-' +
                                                           ('0' + this.getDate()).slice(-2);
                                                }
                                            }
                                            var mindate = myhotel.offers.Hotel[i].offerDateRange.travelStartDate;
                                            var minTripStartDate = new Date(mindate).toISOString();
                                            var maxdate = myhotel.offers.Hotel[i].offerDateRange.travelEndDate;
                                            var maxTripStartDate = new Date(maxdate).toISOString();

                                            var txtmintrip = document.getElementById('<%= txtminTripStartDate.ClientID %>').value;
                                            var txtmaxtrip = document.getElementById('<%= txtmaxTripStartDate.ClientID %>').value;

                                            if (txtmintrip == new Date(minTripStartDate).toISODate() && txtmaxtrip == new Date(maxTripStartDate).toISODate()) {
                                                var lengthOfStay = myhotel.offers.Hotel[i].offerDateRange.lengthOfStay;
                                                var txtlengthOfStay = document.getElementById('<%= txtlengthOfStay.ClientID %>').value;
                                                if (txtlengthOfStay == lengthOfStay) {
                                                    var LenghtStarRating = myhotel.offers.Hotel[i].hotelInfo.hotelStarRating;
                                                    var txtminStarRating = document.getElementById('<%= txtminStarRating.ClientID %>').value;
                                                    var txtmaxStarRating = document.getElementById('<%= txtmaxStarRating.ClientID %>').value;
                                                    if (lengthOfStay >= txtminStarRating && lengthOfStay <= txtmaxStarRating) {
                                                        var LenghtTotalRating = myhotel.offers.Hotel[i].hotelPricingInfo.totalPriceValue;
                                                        var txtminTotalRate = document.getElementById('<%= txtminTotalRate.ClientID %>').value;
                                                        var txtmaxTotalRate = document.getElementById('<%= txtmaxTotalRate.ClientID %>').value;
                                                        if (LenghtTotalRating >= txtminTotalRate && LenghtTotalRating <= txtmaxTotalRate) {
                                                            var LenghtGuestRating = myhotel.offers.Hotel[i].hotelInfo.hotelGuestReviewRating;
                                                            var txtminGuestRate = document.getElementById('<%= txtminGuestRate.ClientID %>').value;
                                                            var txtmaxGuestRate = document.getElementById('<%= txtmaxGuestRate.ClientID %>').value;
                                                            if (LenghtGuestRating >= txtminGuestRate && LenghtGuestRating <= txtmaxGuestRate) {
                                                                strhotel1 += "<div class='col-sm-12' style='padding-bottom:10px;'>"
                                                                strhotel1 += "<div class='col-sm-12' style='border:1px solid #000000;'>";
                                                                strhotel1 += "<div class='col-sm-3'>";
                                                                strhotel1 += "<img src='" + myhotel.offers.Hotel[i].hotelInfo.hotelImageUrl + "' />";
                                                                strhotel1 += "</div>";//end div col-sm-3
                                                                strhotel1 += "<div class='col-sm-6'>";
                                                                strhotel1 += "<h4>";
                                                                strhotel1 += myhotel.offers.Hotel[i].hotelInfo.hotelName;
                                                                strhotel1 += "</h4>";
                                                                strhotel1 += "<p> In ";
                                                                strhotel1 += myhotel.offers.Hotel[i].destination.shortName + " , ";
                                                                strhotel1 += myhotel.offers.Hotel[i].destination.province;
                                                                strhotel1 += "</p>";
                                                                strhotel1 += "</div>";//end div col-sm-6
                                                                strhotel1 += "<div class='col-sm-3'>";
                                                                strhotel1 += "<div class='col-sm-12'>";
                                                                strhotel1 += "<p style='text-decoration:line-through;display:inline'>";
                                                                strhotel1 += myhotel.offers.Hotel[i].hotelPricingInfo.originalPricePerNight;
                                                                strhotel1 += "$"
                                                                strhotel1 += "</p>";
                                                                strhotel1 += "&nbsp;&nbsp;"
                                                                strhotel1 += "<p style='display:inline'>";
                                                                var p = myhotel.offers.Hotel[i].hotelPricingInfo.originalPricePerNight - myhotel.offers.Hotel[i].hotelPricingInfo.averagePriceValue;
                                                                strhotel1 += Math.round(p);
                                                                strhotel1 += "$"
                                                                strhotel1 += "</p>";

                                                                strhotel1 += "</div>";//end div col-sm-12
                                                                strhotel1 += "<div class='col-sm-12'>";
                                                                strhotel1 += "<p style='color:blue'>";
                                                                strhotel1 += "( " + myhotel.offers.Hotel[i].hotelInfo.hotelReviewTotal + " reviews)";
                                                                strhotel1 += "</p>";
                                                                strhotel1 += "</div>";//end div col-sm-12
                                                                strhotel1 += "</div>";//end div col-sm-3
                                                                strhotel1 += "</div>"
                                                                strhotel1 += "</div>";//end div col-sm-12
                                                                count++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                    }
                                    if (count == 0) 
                                    {
                                        strhotel1 += "<p style='font-Size:18px;'>";
                                        strhotel1 += "<b>";
                                        strhotel1 += "Not Found Data"
                                        strhotel1 += "</b>";
                                        strhotel1 += "</p>";
                                    }
                                    document.getElementById("showhotel").innerHTML = strhotel1.toString();
                                }
                            </script>
                      </div>
                  </div>
              </div>
          </div>
        </div>
    </form>
  
</body>
</html>
