	<%@ Page Language="C#" Inherits="LearningHTML.Default" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
	<html>
		<head class="sitetitle" runat="server">
			<title>Stock Quotes</title>
		</head>
		
	<body>
		<div class="sitestylesheet">
			<link href="http://hts.io/2Ju0i" rel="stylesheet" type="text/css" />
		</div>
		<div class="sitemainlinks">
			<a href="http://127.0.0.1:8080/" id="active">/Home/</a> - <a href="http://hts.io/2IhDk" target="_new">/ICHCB/</a> - <a href="http://hts.io/2" target="_new">/Google/</a> - <a href="http://hts.io" target="_new">/URL Shortener/</a> - <a href="https://www.facebook.com/DarrellSBest" target="_new">/Like Me/</a> - <a href="https://twitter.com/thedarrellbest" target="_new">/Follow Me/</a>
			<h1>Stock Quotes! Get yer Stock Quotes Here!</h1>
		</div>
		<div class="outer" align="center">
			<table class="siteheader table" width="780" cellspacing="0" cellpadding="0" border="1">
				<tr class="inner1">
		      		<td class="sitetopheader" align="center" bgcolor="Black">
						<script language="JavaScript">
							var Quotation = new Array();
							Quotation[0] = "A word to the wise ain't necessary - it's the stupid ones that need the advice. -Bill Cosby";
							Quotation[1] = "Behind every great man is a woman rolling her eyes. -Jim Carrey";
							Quotation[2] = "When you are courting a nice girl an hour seems like a second. When you sit on a red-hot cinder a second seems like an hour. That's relativity. -Albert Einstein";
							Quotation[3] = "A woman's mind is cleaner than a man's: She changes it more often. -Oliver Herford";
							Quotation[4] = "Get your facts first, then you can distort them as you please. -Mark Twain";
							Quotation[5] = "If the facts don't fit the theory, change the facts. -Albert Einstein";
							Quotation[6] = "Recession is when a neighbor loses his job. Depression is when you lose yours. -Ronald Reagan";
							Quotation[7] = "It takes considerable knowledge just to realize the extent of your own ignorance. -Thomas Sowell";
							Quotation[8] = "All generalizations are false, including this one. -Mark Twain";
							Quotation[9] = "I am not afraid of death, I just don't want to be there when it happens. -Woody Allen";
							var Q = Quotation.length;
							var whichQuotation = Math.round(Math.random()*(Q-1));
							function showQuotation(){document.write(Quotation[whichQuotation]);}
							showQuotation();
						</script>
		      		</td>
		    	</tr>
				<tr class="inner1">
					<td>
						<table class="table" width="100%" cellspacing="1" cellpadding="1" border="0">
					    	<tbody>
					    		<tr class="inner2">
					    			<div align="center">
						    			<h2>- Main content -</h2>
					    			</div>
						    		<td class="navbar" valign="top" width="160">
						    			<h3>- About -</h3>
						    			<p>This is a simple tool designed to get a stock quote from a given company code.</p>
						    		</td>
						    		<td class="sitebuffer" valign="top">
										<form id="form1" runat="server">
											<p>Company Code:</p>
											<asp:TextBox id="txtBox" runat="server" Text="" />
											<asp:Button id="button1" runat="server" Text="Search" OnClick="button1Clicked" />
										    <p><asp:Label id="lbl1" runat="server" Text="" /></p>
										    <p><asp:Label id="lbl2" runat="server" Text="" /></p>
										    <p><asp:Label id="lbl3" runat="server" Text="" /></p>
										    <p><asp:Label id="lbl4" runat="server" Text="" /></p>
										    <p><asp:Label id="lbl5" runat="server" Text="" /></p>
										</form>
						    		</td>
					    		</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<tr>
	      		<td class="sitebottomheader"><p></p>
	      		</td>
			</tr>
		</div>
	</body>
	</html>
