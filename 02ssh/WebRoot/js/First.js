



//需求时限验证***********************************************************************
function YearYanzheng()
{
	var a = document.getElementById('datepicker').value; 
	var b = document.getElementById('datepicker2').value;
	if(a>b)
	{
	    document.getElementById("mesyear").innerHTML="<font color='red'>终止年份在起始年份之后！</font>";
         document.getElementById("year1").focus();
         return false;
	}
	else
	{
			
		   document.getElementById("mesyear").innerHTML="<font color='green'>✔</font>";
   	       return true;
	}
}

//通讯地址验证***********************************************************************

function AddressYanzheng()
{
	var a = document.getElementById('Address').value; 
	if(a=="")
	{
	    document.getElementById("mesAddress").innerHTML="<font color='red'>通讯地址不能为空!</font>";
         return false;
	}
	else
	{
		
		   document.getElementById("mesAddress").innerHTML="<font color='red'></font>";
   	     return true;
	}
}
//法人代表验证***********************************************************************

function RepresentativeYanzheng()
{
	var a = document.getElementById('Representative').value; 
	if(a=="")
	{
	    document.getElementById("mesRepresentative").innerHTML="<font color='red'>法人代表不能为空!</font>";
         return false;
	}
	else
	{
		
		   document.getElementById("mesRepresentative").innerHTML="<font color='red'></font>";
   	     return true;
	}
}

//电话验证***********************************************************************

function PhoneYanzheng()
{
	var a = document.getElementById('Phone').value; 
	if(a=="")
	{
	    document.getElementById("mesPhone").innerHTML="<font color='red'>电话不能为空!</font>";
         return false;
	}
	else
	{
		
		   document.getElementById("mesPhone").innerHTML="<font color='red'></font>";
   	     return true;
	}
}
//手机验证***********************************************************************

function CellphoneYanzheng()
{
	var a = document.getElementById('Cellphone').value; 
	if(a=="")
	{
	    document.getElementById("mesCellphone").innerHTML="<font color='red'>手机不能为空!</font>";
         return false;
	}
	else
	{
		
		   document.getElementById("mesCellphone").innerHTML="<font color='red'></font>";
   	     return true;
	}
}
function check1() {
	
	if(form1.Address.value=="")
	{
		alert("通讯地址不能为空!");
	    form1.Address.focus();
	   return false;
	}
	if(form1.Representative.value=="")
	{
		alert("法人代表不能为空!");
	    form1.Representative.focus();
	   return false;
	}
	if(form1.People.value=="")
	{
		alert("联系人不能为空!");
	    form1.People.focus();
	   return false;
	}
	if(form1.Phone.value=="")
	{
		alert("电话不能为空!");
	    form1.Phone.focus();
	   return false;
	}
	if(form1.Cellphone.value=="")
	{
		alert("手机不能为空!");
	    form1.Cellphone.focus();
	   return false;
	}
	if(form1.Introduce.value=="")
	{
		alert("机构简介不能为空!");
	    form1.Introduce.focus();
	   return false;
	}
	if(form1.NeedName.value=="")
	{
		alert("技术需求名称不能为空!");
	    form1.NeedName.focus();
	   return false;
	}
	if(form1.Summary.value=="")
	{
		alert("需求概述不能为空!");
	    form1.Summary.focus();
	   return false;
	}
	
	if(form1.SearchKind.value=="")
	{
		alert("研究类型不能为空!");
	    form1.SearchKind.focus();
	   return false;
	}
	if(form1.CooperateMode.value=="")
	{
		alert("合作模式不能为空!");
	    form1.CooperateMode.focus();
	   return false;
	}
	if(form1.OrganizationMoney.value=="")
	{
		alert("企业自筹资金不能为空!");
	    form1.OrganizationMoney.focus();
	   return false;
	}
	if(form1.BankMoney.value=="")
	{
		alert("银行贷款不能为空!");
	    form1.BankMoney.focus();
	   return false;
	}
	if(form1.OtherMoney.value=="")
	{
		alert("其他融资不能为空!");
	    form1.OtherMoney.focus();
	   return false;
	}
	return true;
}
//关键字必须一个一个输入*********************************************************
function Guanjianzi()
{
	var k1 = document.getElementById('KeyWord1').value; 
	var k2 = document.getElementById('KeyWord2').value;
	var k3 = document.getElementById('KeyWord3').value;
	var k4 = document.getElementById('KeyWord4').value;
	var k5 = document.getElementById('KeyWord5').value;
	if(k1!="")
	{
		document.getElementById('KeyWord2').readOnly=false;
	}
	else
	{
		document.getElementById('KeyWord2').readOnly=true;
	}
	if(k1!=""&&k2!="")
	{
		document.getElementById('KeyWord3').readOnly=false;
	}
	else
	{
		document.getElementById('KeyWord3').readOnly=true;
	}
	if(k1!=""&&k2!=""&&k3!="")
	{
		document.getElementById('KeyWord4').readOnly=false;
	}
	else
	{
		document.getElementById('KeyWord4').readOnly=true;
	}
	if(k1!=""&&k2!=""&&k3!=""&&k4!="")
	{
		document.getElementById('KeyWord5').readOnly=false;
	}
	else
	{
		document.getElementById('KeyWord5').readOnly=true;
	}
}

//验证剩余字符数********************************************
function checkLen(obj)  
{ 
    var maxChars = 500;//最多字符数 
    if (obj.value.length > maxChars) 
    obj.value = obj.value.substring(0,maxChars); 
    var curr = maxChars - obj.value.length; 
    document.getElementById("count").innerHTML = curr.toString();  
}   
function checkLen2(obj)  
{ 
    var maxChars = 500;//最多字符数 
    if (obj.value.length > maxChars) 
    obj.value = obj.value.substring(0,maxChars); 
    var curr = maxChars - obj.value.length; 
    document.getElementById("count2").innerHTML = curr.toString();  
}  
function checkLen3(obj)  
{ 
    var maxChars = 500;//最多字符数 
    if (obj.value.length > maxChars) 
    obj.value = obj.value.substring(0,maxChars); 
    var curr = maxChars - obj.value.length; 
    document.getElementById("count3").innerHTML = curr.toString();  
}  
////////////////////////////////////////////////////////////////////////////////////////////
 window.onload= function()
 {
    var inpt= document.getElementById('form2').getElementsByTagName('input');  //获取表单下所有的input元素
    for(var i=0;i<inpt.length;i++)
    {   //遍历获得的input元素
     if(inpt[i].type=='radio')
     {   //如果是单选按钮
      inpt[i].onclick=function()
      { // input的单击事件
    	  if(this.nextSibling.nodeValue=="合作开发")
    	  {
  		 	document.getElementById('CooperateOrganization').disabled=false;	
    	  }
  	 
    	  else if(this.nextSibling.nodeValue=="独立开发"||this.nextSibling.nodeValue=="技术转让"||this.nextSibling.nodeValue=="技术入股"||this.nextSibling.nodeValue=="其他")
  		 {
  		 	document.getElementById('CooperateOrganization').value="";
  		 	document.getElementById('CooperateOrganization').disabled=true;
  		 }
  	
     if(this.nextSibling.nodeValue=="基础研究")
  	   {
    	   studyrow.style.display="";
    	   belongrow.style.display="none";
		   applyrow.style.display="none";
		   other.style.display="none";
		   document.getElementById('otherField').value="";
		   document.getElementById('otherField').disabled=true;
  	  
		   
		   
  	   }
     else if(this.nextSibling.nodeValue=="应用研究"||this.nextSibling.nodeValue=="试验发展"||this.nextSibling.nodeValue=="研究发展与成果应用"||this.nextSibling.nodeValue=="技术推广与科技服务 ")
  	   {
    	 studyrow.style.display="none";
    	 belongrow.style.display="";
  	     applyrow.style.display="";
  	     other.style.display="";
		 document.getElementById('otherField').disabled=false;
  	   }
    
      }
     }
    }
   }