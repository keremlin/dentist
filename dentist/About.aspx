<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="dentist.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container-fluid">
        `<div class="row">
            <div class="col-md-4">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text cursor-pointer" id="date1">Icon</span>
                    </div>
                     <div>
                    <input type="text" id="inputDate1" class="form-control" placeholder="Persian Calendar Text" aria-label="date1"
                        aria-describedby="date1">
                    <input type="text" id="inputDate1-1" class="form-control" placeholder="Persian Calendar Date" aria-label="date11"
                        aria-describedby="date11">

                     </div>
                </div>
            </div>
            <div class="col-md-8">
                 <div style="padding: 40px 0 40px;">
                    <div id="schedule"></div>
                  </div>
            </div>
            
         </div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                
            </div>
            <div class="col-md-1"></div>
        </div>
   
       
     </div>
    <script src="Scripts/MdBootstrapPersianDateTimePicker/jquery.md.bootstrap.datetimepicker.js"></script>
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js" type="text/javascript" language="javascript"></script>
    <script src="Scripts/jq.schedule.js"></script>
    <script type="text/javascript">
       
$('#date1').MdPersianDateTimePicker({
            targetTextSelector: '#inputDate1',
            targetDateSelector: '#inputDate1-1',
            dateFormat: 'yyyy-MM-dd',
            textFormat: 'yy-MM-dd',
            isGregorian: false,
            enableTimePicker: true,
            inLine: true,
            holiDays:[new Date(),new Date("2018/11/25")],
            disabledDates: [new Date(),new Date("2018/11/27")]
        });


    </script>
    <script type="text/javascript">
jQuery(document).ready(function(){
    var $sc = jQuery("#schedule").timeSchedule({
        startTime: "10:00", // schedule start time(HH:ii)
        endTime: "21:00",   // schedule end time(HH:ii)
        widthTime:60 * 10,  // cell timestamp example 10 minutes
        timeLineY:60,       // height(px)
        verticalScrollbar:20,   // scrollbar (px)
        timeLineBorder:2,   // border(top and bottom)
        debug:"#debug",     // debug string output elements
        rows : {
            '1' : {
                title : 'دکتر خدارحمی',
                schedule:[
                    {
                        start:'12:00',
                        end:'12:10',
                        text:'رزرو شده',
                        data:{
                        }
                    },
                    {
                        start:'11:00',
                        end:'11:10',
                        text:'رزرو شده',
                        data:{
                        }
                    }
                ]
            },
            '2' : {
                title : 'Title Area',
                schedule:[
                    {
                        start:'11:30',
                        end:'11:40',
                        text:'رزرو شده',
                        data:{
                        }
                    }
                ]
            }
    ,
            '3' : {
                title : 'Title Area3',
                schedule:[
                    {
                        start:'12:30',
                        end:'12:40',
                        text:'رزرو شده',
                        data:{
                        }
                    }
                ]
            }
        },
        change: function(node,data){
            alert("change event");
        },
        init_data: function(node,data){
        },
        click: function(node,data){
            
            //alert(txt);
        },
        append: function(node,data){
        },
        time_click: function(time,data){
            var item=   $(time).parent()
            $(item).css( "background-color", "LightBlue" );
            var index = $( ".timeline.ui-droppable" ).index(item );
            $( "#debug2" ).val( "Unit #" + index +" time @"+data);
            $(time).css("background-color", "LightCoral");
        },
    });
});

</script>
    
     <textarea id="debug"></textarea>
    <textarea id="debug2"></textarea>
    <textarea id="debug3"></textarea>
    </asp:Content>
