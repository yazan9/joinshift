function validateForm(){
     for(var i=1;i<=10;i++)
     {
         var radios = document.getElementsByName("question"+i);
         var groupChecked = false;
         for (var j = 0, len = radios.length; j < len; j++) {
             if (radios[j].checked) {
                 groupChecked = true;
              }
         }
         if(groupChecked == false)
         {
             var errorMessage = document.getElementById('error');
             errorMessage.style.display = "block";
             $("html, body").animate({ scrollTop: 0 }, "slow");
             return false;
         }
     }
     return true;
 }
