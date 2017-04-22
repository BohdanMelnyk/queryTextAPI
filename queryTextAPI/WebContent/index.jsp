<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
<title>Data Handler</title>
</head>
<body bgcolor="#f8f8ff">
	<div>
		<form action="textfileAPI" method="get">
			<table>
				<tr>
					<td align="center">Servlet WEB API</td>
				</tr>
				<tr>
					<td>
						<table>
							<tr>
								<td>Limit of respond text:</td>
								<td><input type="number" name="limit" min="11"
									title="Respond file consists at least of 11 chars: {''text'':[]}"></td>
							</tr>
							<tr>
								<td>Text:</td>
								<td><input type="text" name="q" value=""
									title="Text to search"></td>
							</tr>

							<tr>
								<td>Max string length:</td>
								<td><input type="number" name="length" min="0"
									title="The value cannot be less than 1"></td>
							</tr>
							<tr>
								<td>Include Meta Data?</td>
								<td align="center"><select name="includeMetaData" title="">
										<option value="true">Yes</option>
										<option value="false">No</option>
								</select></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input id="button"
									type="submit" value="Get results"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<div>
				This Servlet WEB API that will allow you to query/filter information
				from text files over the web. Basically, this API reads a text file
				from a file system and apply filtering/querying logic to produce a
				response, which will be returned in JSON forman. <br> HOW TO
				USE: User inputs query information into the appropriate forms: <br>
				limit: integer which represents max number of chars in a text that
				API should return. If parameter is blank or missing return max 10000
				chars. Remark: this parameter should be less than 11 because the
				minimal respond with metadata will have 11 chars: the length of
				{"text":[]}. <br> q​: string which represents text to search in
				file, i.e. if it q=java - API should return all strings which equals
				to ‘java’ or containing it. If q is blank or missing - API should
				return all text from file. <br> length​: integer which
				represents max string length. API should return string which doesn’t
				exceed that number or if there is no such strings empty response. If
				parameter is blank or missing ignore it. <br> <br>
				REMARKS: Firstly, I don't use any css and other "good" looking
				details, 'cause I don't see any purpose of this (if the customer
				will ask for this, I might do this task :) ) . Secondly, Names of
				variables, methods and classes were selected randomly. I haven't
				received any code conventions from you, so I made it more or less
				good. Thirdly, some parts of the code don't "look" good, I know how
				to "fix" it via Java8 (streams and lambda), but, in this case, it's
				forbidden. Fourthly, honestly my code has 2 magic numbers, I don't
				like that kind of thing, but, nevertheless, let them be an occasion
				for conversation during the interview. <br> <br> p.s. All
				code is well documented, so one could generate documentation file. I
				think this might help for better understanding of the business logic
				of the code. <br> p.p.s. Hope this information is enough. If
				you need more, simply write me via email.

			</div>
		</form>
	</div>
</body>
</html>