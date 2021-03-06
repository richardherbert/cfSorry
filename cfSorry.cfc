component {
	cfSorry function init(required string apiToken) {
		variables.apiToken = arguments.apiToken;

		variables.endpointURL = 'https://api.sorryapp.com/v1';
		variables.charset = 'utf-8';

		return this;
	}

	function getVersion() {
		return 'v0.7';
	}

	function getPages() {
		var packet = {
			 resource: '/pages'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function getPage(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function addPage(
		 string name=''
		,string timezone=''
		,string support_email=''
		,string support_telephone=''
		,string support_url=''
		,string visible_to_search=''
		,string meta_title=''
		,string meta_description=''
		,string google_analytics_id=''
	) {
		var packet = {
			 resource: '/pages'
			,method = 'POST'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function updatePage(
		 required string id
		,string name=''
		,string timezone=''
		,string support_email=''
		,string support_telephone=''
		,string support_url=''
		,string visible_to_search=''
		,string meta_title=''
		,string meta_description=''
		,string google_analytics_id=''
	) {
		var packet = {
			 resource: '/pages/#arguments.id#'
			,method = 'PATCH'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function deletePage(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#'
			,method = 'DELETE'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

/////////////////////////////////////////////////////////////////////

	function getNotices(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function getNotice(required string id, required numeric notice) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices/#arguments.notice#'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function addNotice(
		 required string id
		,required string initial_comment
	) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices'
			,method = 'POST'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function updateNotice(
		 required string id
		,required numeric notice
		,required string additional_comment=''
		,required string state_event=''
	) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices/#arguments.notice#'
			,method = 'PATCH'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function deleteNotice(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#'
			,method = 'DELETE'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}


/////////////////////////////////////////////////////////////////////

	function getNoticeUpdates(required string id, required numeric notice) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices/#arguments.notice#/updates'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function getNoticeUpdate(required string id, required numeric notice, required numeric update) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices/#arguments.notice#/updates/#arguments.update#'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function addNoticeUpdate(
		 required string id
		,required string notice
		,required string content
	) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices/#arguments.notice#/updates'
			,method = 'POST'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);

		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function updateNoticeUpdate(
		 required string id
		,required numeric notice
		,required numeric update
		,required string content=''
	) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices/#arguments.notice#/updates/#arguments.update#'
			,method = 'PATCH'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function deleteNoticeUpdate(
		 required string id
		,required numeric notice
		,required numeric update
	) {
		var packet = {
			 resource: '/pages/#arguments.id#/notices/#arguments.notice#/updates/#arguments.update#'
			,method = 'DELETE'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

/////////////////////////////////////////////////////////////////////

	function getBrand(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#/brand'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function deleteBrand(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#/brand'
			,method = 'DELETE'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function updateBrand(
		 required string id
		,string color_state_ok=''
		,string color_state_warning=''
		,string color_navbar_background=''
		,string color_navbar_links=''
		,string color_header_background=''
		,string color_header_links=''
		,string color_header_text=''
		,string color_body_background=''
		,string color_body_links=''
		,string color_body_text=''
	) {
		var packet = {
			 resource: '/pages/#arguments.id#/brand'
			,method = 'PATCH'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

/////////////////////////////////////////////////////////////////////

	function addCustomDomain(
		 required string id
		,required string domain
	) {
		var packet = {
			 resource: '/pages/#arguments.id#/custom_domain'
			,method = 'POST'
		};

		packet.params = [];

		for (var argument in arguments) {
			arrayAppend(packet.params, {name=argument, value=arguments[argument]});
		}

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function getCustomDomain(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#/custom_domain'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

	function deleteCustomDomain(required string id) {
		var packet = {
			 resource: '/pages/#arguments.id#/custom_domain'
			,method = 'DELETE'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

/////////////////////////////////////////////////////////////////////

	function getTimezones() {
		var packet = {
			 resource: '/timezones'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

/////////////////////////////////////////////////////////////////////

	function getHello() {
		var packet = {
			 resource: '/hello'
			,method = 'GET'
		};

		var response = send(packet);
		var parsedResponse = parseResponse(response);

		return parsedResponse;
	}

/////////////////////////////////////////////////////////////////////
// private methods
/////////////////////////////////////////////////////////////////////
	private struct function send(required struct packet)
		hint='I send the data packet to the http service'
	{
		var endpointURL = variables.endpointURL & arguments.packet.resource;

		var httpService = new http();

		httpService['getParameters'] = getParameters;

		httpService.setCharset(variables.charset);
		httpService.setMethod(packet.method);

		switch(packet.method){
			case "PATCH":
				httpService.setMethod("POST");
				httpService.addParam(name='X-HTTP-Method-Override', value='PATCH', type='header');
			case "POST":
				httpService.addParam(name='Content-Type', type='header', value='application/x-www-form-urlencoded; charset=UTF-8');

				for (var param in arguments.packet.params) {
					endpointURL = listAppend(endpointURL, '#param.name#=#urlEncodedFormat(param.value)#', '&');
				}

// replace the first & with ? so the URL is compliant
				endpointURL = replaceNoCase(endpointURL, '&', '?', 'one');
			break;
		}

		httpService.setURL(endpointURL);

		httpService.addParam(name='wrapper', value='cfSorry', type='header');
		httpService.addParam(name='Authorization', value='Bearer #variables.apiToken#', type='header');

		response = httpService.send().getPrefix();

		return response;
	}

	private struct function parseResponse(required struct response)
		hint='I parse the response'
	{
		var result = {
			 success = true
			,failure = false
			,data = {}
			,error = {}
			,code = '200'
			,status = 'OK'
		};

		var fileContentJSON = arguments.response.filecontent.toString();

// writedump(var='#fileContentJSON#', label='fileContentJSON', format='text', expand=1, abort=0);
		if (isSimpleValue(fileContentJSON) && fileContentJSON == 'Connection Failure') {
			result.success = false;
			result.failure = true;
			result.error = 'Connection Failure';
			result.code = '503';
			result.status = 'Connection Failure';

			return result;
		}

		var statusCode = arguments.response.responseHeader.status_code;
		var statusText = arguments.response.responseHeader.explanation;

		result.code = statusCode;
		result.status = statusText;

// replace all the "null" values in the JSON packet with a ColdFusion empty string
		fileContentJSON = reReplaceNoCase(fileContentJSON, ':null', ':""', "all");

		switch(statusCode) {
			case '200':
			case '201':
			case '204':
				if (len(fileContentJSON) == 0) {
					result.data = {};
				} else {
					result.data = deserializeJSON(fileContentJSON).response;
				}
			break;

			default:



				if (len(fileContentJSON) == 0) {
					result.error = {};
				} else {
					result.error = deserializeJSON(fileContentJSON);
				}

				result.success = false;
				result.failure = true;
				result.data = {};
			break;
		}

		parseDateTimeStrings(result, 'created_at');
		parseDateTimeStrings(result, 'updated_at');

		return result;
	}

	private struct function parseDateTimeStrings(required struct data, required string key)
		hint='I parse a date/time string into a ColdFusion datetime object'
	{
		var entries = structFindKey(arguments.data, arguments.key, 'all');

		for (var entry in entries) {
			var newValue = parseISO8601DateTime(entry.value);

			structUpdate(entry.owner, arguments.key, newValue);
		}

		return arguments.data;
	}

	private datetime function parseISO8601DateTime(ISO8601dateString) {
		// strip decimal seconds from the submitted date/time
		ISO8601dateString = reReplaceNoCase(ISO8601dateString, '\.[0-9]+', '', 'one');

		var rawDatetime = left(ISO8601dateString,10) & ' ' & mid(ISO8601dateString,12,8);

		return createODBCDateTime(rawDatetime);
	}

	private array function getParameters()
		hint='I return the HTTP service parameters'
	{
		return variables.params;
	}
}
