console.log("hello")
$(document).ready(function(){
    $("content1").slice(0, 4).show();
    $("#loadMore1").on("click", function(e){
        e.preventDefault();
        $(".content1:hidden").slice(0, 4).slideDown();
        if($(".content1:hidden").length == 0) {
          $("#loadMore1").text("No content").addClass("nocontent1");
        }
      });
      $("content2").slice(0, 4).show();
    $("#loadMore2").on("click", function(e){
      e.preventDefault();
      $(".content2:hidden").slice(0, 4).slideDown();
      if($(".content2:hidden").length == 0) {
        $("#loadMore2").text("No content").addClass("nocontent2");
    
      }
    });
});


