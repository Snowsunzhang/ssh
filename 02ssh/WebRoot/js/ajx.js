  var tech1;
  var tech2;
  var tech3;
  jQuery(function($){
      var t1 = $("#ApplyWork1"),
          t2 = $("#ApplyWork2"),
          t3 = $("#ApplyWork3");
      t1.append("<option value='NULL'>请选择</option>");
      t2.append("<option value='NULL'>请选择</option>");
      t3.append("<option value='NULL'>请选择</option>");
      
      $.ajax({   
          type:"POST",  
          url:"Techservlet1", 
          async:false,
          dataType: "text",
          
          //请求成功完成后要执行的方法  
          success: function(msg){  
       	   tech1 = msg.split(" ");
          }, 
          error: function (response) {
        	
          }  
      });
      $(tech1).each(function(i, dom){
   	   t1.append("<option value='"+dom+"'>" + dom + "</option>");
      });
      
      var beforestr;
      t1.change(function(){
          var me = $(this).val();
          beforestr=me;
          $.ajax({   
              type:"POST",  
              url:"Techservlet2", 
              async:false,
              data:{"tech1":me},
              dataType: "text",
              
              //请求成功完成后要执行的方法  
              success: function(msg){  
           	   tech2 = msg.split(" ");
              }, 
              error: function (response) {
              }  
          });  
          
          if(beforestr == me){
       	   t2.html("").append("<option value=''>请选择</option>");
       	   t3.html("").append("<option value=''>请选择</option>");
              $(tech2).each(function(i, dom){
           	   t2.append("<option value='"+dom+"'>" + dom + "</option>");
              });
          }else{
       	   t2.html("").append("<option value=''>请选择</option>");
       	   t3.html("").append("<option value=''>请选择</option>");
          }
      });
      t2.change(function(){
          var me = $(this).val(),str;
          
          $.ajax({   
              type:"POST",  
              url:"Techservlet3", 
              async:false,
              data:{"tech2":me,"tech1":beforestr},
              dataType: "text",
              
              //请求成功完成后要执行的方法  
              success: function(msg){  
           	   tech3 = msg.split(" ");
              }, 
              error: function (response) {
              }  
          });
          
          if(str=me){
       	   t3.html("").append("<option value=''>请选择</option>");
              $(tech3).each(function(i, dom){
           	   t3.append("<option value='"+dom+"'>" + dom + "</option>");
              });
          }else{
       	   t3.html("").append("<option value=''>请选择</option>");
          }
      });
  });