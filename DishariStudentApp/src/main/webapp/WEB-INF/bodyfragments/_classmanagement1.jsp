<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type= "text/css">
  table#routine td{
        border: 2px solid green;
        width: 100px;
     }
</style>

<style>
    .ontop{
				z-index: 999;
				width: 100%;
				height: 100%;
				top: 0;
				left: 0;
				display: none;
				position: absolute;				
				background-color: #ffffff;
				color: #aaaaaa;
				opacity: .8;
				filter: alpha(opacity = 80);  /* for IE 8*/
			}
			#popup {
				width: 400px;
				height: 300px;
				position: absolute;
				color: #000000;
				background-color: #fefefe;
				/* To align popup window at the center of screen*/
				top: 50%;
				left: 50%;
				margin-top: -100px;
				margin-left: -150px;
			}
			
			#createbutton {
			      position: absolute;
                  left: 50%;
                  transform: translate(-50%,-50%);		
			}
			
			#routine {
			      position: absolute;
                  left: 50%;
                  transform: translate(-50%);		
			}			
</style>




<script type="text/javascript">
window.onload = function(){	     
	  $('.diffschedule').hide();
           document.getElementById('differentSchedule').addEventListener('change',function(){
      var sel = document.getElementById('differentSchedule');   
      var sv = sel.options[sel.selectedIndex].value;   
          if(sv == "yes"){
                //alert(sv);
	            // document.getElementsByClassName('diffschedule').style.display = "block";
	               $('.diffschedule').show();         
            } 
           else{
	            // document.getElementsByClassName('diffschedule').style.display = "none";
	               $('.diffschedule').hide();
         }                                                                 
    });     
}
</script>
<script type="text/javascript">			
			function pop(div) {
				document.getElementById(div).style.display = 'block';
			}
			function hide(div){
				document.getElementById(div).style.display = 'none';
			}
			//To detect escape button
			document.onkeydown = function(evt) {
				evt = evt || window.event;
				if (evt.keyCode == 27) {
					hide('popDiv');
				}
			};
		</script>


<script type="text/javascript">        
        function createrowsinroutine(){  
        	     var rowCount = 0;
        	       rowCount= rowCount+1;
        	   var days = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday'];
        	   
        	   var timeday=[];
        	   var time=[]; 
        	   
        	   var table = document.getElementById("routine");
               var from = document.getElementsByName("from");
               var to = document.getElementsByName("to");
               var fromdate = new Date('01/01/2009 '+ from[0].value);
               var todate = new Date('01/01/2009 '+ to[0].value);
               var numberofdivision = parseInt(document.getElementById("numberofdivision").value);    
               var sel = document.getElementById('differentSchedule');   
               var sv = sel.options[sel.selectedIndex].value; 
      
               if(sv =="yes"){
                     var day = parseInt(document.getElementsByName("day")[0].value);
               }else{
            	   var day = 1;            	   
               }                   
                  var loop = 9;
             //Creating first row  
              
               if(rowCount==1){  
            	   // var rowInitial = Table.insertRow(rowCount-2);
            	    //   Cell = rowInitial.insertCell(0);          	       
            	    //   Cell.colSpan = "8";
            	    //   Cell.innerHTML = "Class Six Morning shift";
            	            	    
                	var row0 = table.insertRow(rowCount-1);  
                	           cell=[];
                	           cell.push(row0.insertCell(0));
                	           cell[0].innerHTML = "Time";
                	           
                  if(day!=1){	
                	  for(var i=1;i<day;i++)
                		   {
                		    cell.push(row0.insertCell(i));
                		    cell[i].innerHTML = days[i-1];
                		}                 	
                	    cell.push(row0.insertCell(day));
                	    cell[day].innerHTML = "Time";
                       
                	for(var i=day+1;i<loop;i++)
            		  {
            		    cell.push(row0.insertCell(i));
            		    cell[i].innerHTML = days[i-2];
            		}  
                }
                	else{
                	    	day =0;
                	    	loop =8;                	
                	    	for(var i=day+1;i<loop;i++)
                  		  {
                  		    cell.push(row0.insertCell(i));
                  		    cell[i].innerHTML = days[i-1];
                  		}	             	    	
                	}          	              		
                }
                          
            
            	 var difftime = todate - fromdate;             
                 // var diff = to-from;
                 var minute=(difftime/1000/60);
                 var classduration = difftime/numberofdivision;
            	            	                                       
               
                 for(var i=0;i<numberofdivision;i++){                	   
            	     var hr = fromdate.getHours();
            	     var min = fromdate.getMinutes();
            	     var ampm = hr < 12 ? "am" : "pm";
            	     var timeString = hr + ":" + min +" "+ampm ;
                     time.push(timeString);
                     //alert(time[i]);
                     fromdate.setTime(fromdate.getTime()+classduration);
                 }
                 
                 
            if(day!=0){           	             	 
            	 fromdate = new Date('01/01/2009 '+ from[1].value);
                 todate = new Date('01/01/2009 '+ to[1].value);
                 var difftimeday  = todate - fromdate;
                 var minuteforday = (difftimeday/1000/60);
                 var classdurationforday = difftimeday/numberofdivision;
            	 
                 for(var i=0;i<numberofdivision;i++){                   	
             	     var hr = fromdate.getHours();
             	     var min = fromdate.getMinutes();
             	     var ampm = hr < 12 ? "am" : "pm";
             	     var timeString = hr + ":" + min +" "+ampm ;
                     timeday.push(timeString);          
                     fromdate.setTime(fromdate.getTime()+classdurationforday);
                    }           
            }  
                                      
         for(rowCount=1;rowCount<=(numberofdivision);rowCount++){         	                                                      
        	       var row  = table.insertRow(rowCount);  
                   var cell = [];                                                       
                   cell.push(row.insertCell(0));           	     
                   cell[0].innerHTML = time[rowCount-1];                           
                if(day!=0){ 
            	   // alert("test");
                   for(var i=1;i<day;i++)
                	   {
                	      cell.push(row.insertCell(i));
            	          cell[i].innerHTML=  "<div id=\"popDiv\" class=\"ontop\">"+
           		                              "<table border=\"1\" id=\"popup\">"+
       				                          "<tr><td>This can be used as a popup window</td></tr>"+
       				                          "<tr><td>Click Close OR escape button to close it"+
       				                          "<a href=\"#\" onClick=\"hide('popDiv')\">Close</a>"+
       					                      "</td></tr></table></div><CENTER><br/>"+
                                              "<a href=\"#\" onClick=\"pop('popDiv')\">Click here to open a popup div</a></CENTER>";                	                     	                 	                                  	   
                	   }         
                    cell.push(row.insertCell(day));
      	            cell[day].innerHTML = timeday[rowCount-1]; 
      	          for(var i=day+1;i<loop;i++){
      	        	//  alert(loop+"this is");
             	       cell.push(row.insertCell(i));
             	       cell[i].innerHTML =   "<div id=\"popDiv\" class=\"ontop\">"+
                 		                     "<table border=\"1\" id=\"popup\">"+
          				                     "<tr><td>This is can be used as a popup window</td></tr>"+
          				                     "<tr><td>Click Close OR escape button to close it"+
          				                     "<a href=\"#\" onClick=\"hide('popDiv')\">Close</a>"+
          					                 "</td></tr></table></div><CENTER><br/>"+
                                             "<a href=\"#\" onClick=\"pop('popDiv')\">Click here to open a popup div</a></CENTER>";                	  
             	     }          
                }                                  
               else{   
                  for(var i=day+1;i<loop;i++){
          	          cell.push(row.insertCell(i));
          	          cell[i].innerHTML =    "<div id=\"popDiv\" class=\"ontop\">"+
              		                         "<table border=\"1\" id=\"popup\">"+
       				                         "<tr><td>This is can be used as a popup window</td></tr>"+
       				                         "<tr><td>Click Close OR escape button to close it"+
       				                         "<a href=\"#\" onClick=\"hide('popDiv')\">Close</a>"+
       					                     "</td></tr></table></div><CENTER><br/>"+
                                             "<a href=\"#\" onClick=\"pop('popDiv')\">Click here to open a popup div</a></CENTER>";                	  
          	     } 
               } 
             }                       
         }            
</script>

<title>This is title </title>

    
</head>
      <body>                         
            <div>
                <p>Please insert new class Schedule</p>
                    <table> 
                          <tr>
                             <td><label>Insert Shift</label></td><td>
                                <select id="shift" class="input-medium">
                                  <option value="morning">Morning</option>
                                  <option value="day">Day</option>
                                  <option value="evening">Evening</option>
                               </select> 
                             </td>
                          </tr>
                          <tr>
                             <td><label>Insert Class</label></td>
                             <td> 
                             <select id = "selectclass" class="input-medium">
                                   <option value="5"> Five</option>
                                   <option value="6"> Six</option>
                                   <option value= "7"> Seven</option>
                                   <option value="8"> Eight</option>
                                   <option value= "9"> Nine</option>
                                   <option value="10" selected="selected"> Ten</option>
                                   <option value= "11"> Eleven</option>
                                   <option value="12" >Twelve</option>
                             </select>
                             </td>
                          </tr>
                                       
                          <tr>
                                <td><label>Insert Time Span</label></td>                               
                                 <td> 
                                     <input type="time" name="from" class="input-medium">    
                                 </td>  
                                 <td>
                                     <p>to</p>
                                 </td>
                                 <td>
                                    <input type="time" name="to" class="input-medium">
                                </td>                                                               
                           </tr> 
                           <tr><td><label>Insert number of division in time span</label></td><td><input type="text" id = "numberofdivision" name="numberofdivision" value="" class="input-medium" ></td></tr>
                           <tr><td>Do you need different schedule for a day</td>
                           <td><select id="differentSchedule" class="input-medium">
                                       <option value ="">Select here</option>
                                       <option value="yes">Yes</option>
                                       <option value="no">No</option>                          
                               </select></td></tr>
                           
                                                                                                                                  
                           <tr class="diffschedule" >
                               <td><label>Insert Day for different time schedule</label></td><td> 
                                    <select name="day" class="input-medium">
                                          <option value="1">Saturday</option>        
                                          <option value="2">Sunday</option>   
                                          <option value="3">Monday</option>
                                          <option value="4">Tuesday</option>
                                          <option value="5">Wednesday</option>
                                          <option value="6">Thursday</option>
                                          <option value="7">Friday</option>                                                                                
                                     </select>
                                </td>                                 
                             </tr>                                 
                             <tr class="diffschedule">
                                   <td><label>Insert Time span for different format</label></td>                              
                                   <td><input type="time" name="from" value="" class="input-medium"></td>
                                   <td><p>to</p></td>
                                   <td><input type="time" name="to" value="" class="input-medium"></td>
                             </tr>                                                                                                                                 
                        </table>                                                                             
                    </div>               
                    <br>
                    <br>
                                                                 
             <div id="classRoutine">               
                  <button id="createbutton" type="button" onclick="createrowsinroutine();" class="btn btn-primary"> <u> &ensp;&ensp;&ensp; Create &ensp;&ensp;&ensp;</u></br> Class Routine </button>            
                  </br>
                  </br>
                                                      
                  <table id="routine" style ="border:2px solid green">
                                               
                  </table>                           
             </div>                      
        </body>
</html>