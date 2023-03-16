<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%

	
	/* ***** calendar ***** */
	String calWrite = (String)request.getAttribute("calWrite");
	if(calWrite != null && !calWrite.equals("")){
		if(calWrite.equals("Cal_ADD_OK")){
			%>
			<script type="text/javascript">
			alert("성공적으로 작성되었습니다");
			location.href = "calendar.do";
			</script>
			<%
		}
		else{
			%>
			<script type="text/javascript">
			alert("다시 작성해 주십시오");
			location.href = "calwrite.do";
			</script>
			<%
		}
	}
	
	String calUpdate = (String)request.getAttribute("calupdate");
	if(calUpdate != null && !calUpdate.equals("")){
		if(calUpdate.equals("Cal_UPDATE_OK")){
			%>
			<script type="text/javascript">
			alert("성공적으로 수정되었습니다");
			location.href = "calendar.do";
			</script>
			<%
		}
		else{
			int seq = (Integer)request.getAttribute("seq");
			%>
			<script type="text/javascript">
			alert("다시 작성해 주십시오");
			let seq = "<%=seq %>";		
			location.href = "calupdate.do?seq"+seq;
			</script>
			<%
		}	
	}
	String calDelete = (String)request.getAttribute("caldelete");
	if(calDelete != null && !calDelete.equals("")){
		if(calDelete.equals("Cal_DELETE_OK")){
			%>
			<script type="text/javascript">
			alert("성공적으로 삭제되었습니다");
			location.href = "calendar.do";
			</script>
			<%
		}
		else{
			int seq = (Integer)request.getAttribute("seq");
			%>			
			<script type="text/javascript">
			alert("삭제되지 않았습니다");
			location.href = "caldelete.do?seq="+seq;
			</script>
			<%
		}	
	}
	
	
	
	/* ***** login ***** */
	String sessionOut = (String)request.getAttribute("sessionOut");
if(sessionOut != null && !sessionOut.equals("")){
	%>
		<script type="text/javascript">
		alert("로그인 해주십시오");
		location.href = "login.do";
		</script>
		<%
	}
		%>

<%
String message = (String)request.getAttribute("message");
if(message != null && !message.equals("")){
	if(message.equals("MEMBER_ADD_YES")){
		%>
		<script type="text/javascript">
		alert("성공적으로 가입되었습니다");
		location.href = "login.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("가입되지 않았습니다 다시 가입해 주십시오");
		location.href = "regi.do";
		</script>
		<%		
	}
}

String login = (String)request.getAttribute("login");
if(login != null && !login.equals("")){
	if(login.equals("LOGIN_OK")){
		%>
		<script type="text/javascript">
		alert("로그인 되었습니다");
		location.href = "main.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("아이디나 패스워드를 확인해 주십시오");
		location.href = "login.do";
		</script>
		<%		
	}
}


String bbswrite = (String)request.getAttribute("bbswrite");
if(bbswrite != null && !bbswrite.equals("")){
	if(bbswrite.equals("BBS_ADD_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 작성되었습니다");
		location.href = "bbslist.do";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("다시 작성해 주십시오");
		location.href = "bbswrite.do";
		</script>
		<%
	}
}


String answer = (String)request.getAttribute("answer");
if(answer != null && !answer.equals("")){
	if(answer.equals("BBS_ANSWER_OK")){
		%>
		<script type="text/javascript">
		alert("답글이 성공적으로 작성되었습니다");
		location.href = "bbslist.do";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("답글을 다시 작성해 주십시오");
		location.href = "bbslist.do";
		</script>
		<%
	}	
}



String bbsupdate = (String)request.getAttribute("bbsupdate");
if(bbsupdate != null && !bbsupdate.equals("")){
	if(bbsupdate.equals("BBS_UPDATE_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 수정되었습니다");
		location.href = "bbslist.do";
		</script>
		<%
	}
	else{
		int seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("다시 작성해 주십시오");
		let seq = "<%=seq %>";		
		location.href = "bbslist.do"
		</script>
		<%
	}	
}



String bbsdelete = (String)request.getAttribute("bbsdelete");
if(bbsdelete != null && !bbsdelete.equals("")){
	if(bbsdelete.equals("BBS_DELETE_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 삭제되었습니다");
		location.href = "bbslist.do";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("삭제되지 않았습니다");		
		location.href = "bbslist.do";
		</script>
		<%
	}	
}

String pdsupdate = (String)request.getAttribute("pdsupdate");
if(pdsupdate != null && !pdsupdate.equals("")){
	if(pdsupdate.equals("PDS_UPDATE_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 수정되었습니다");
		location.href = "pdslist.do";
		</script>
		<%
	} else{
		int seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("다시 작성해 주십시오");
		let seq = "<%=seq %>";		
		location.href = "pdslist.do"
		</script>
<%
	}
}
%>




