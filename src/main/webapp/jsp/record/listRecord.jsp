<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<body>

	<div class="container">
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th>消费金额</th>
					<th>商家名称</th>
					<th>消费日期</th>
					<th>心得</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="outgo" items="${outgoList}">
					<tr>
						<td class="span2">${outgo.money}</td>
						<td class="span2">${outgo.tradeName}</td>
						<td class="span2"><fmt:formatDate value="${outgo.outgoDate}" /></td>
						<td class="span6">${outgo.remark}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>