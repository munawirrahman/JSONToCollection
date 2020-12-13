public class JSONToCollection {
    public class Request {
        @InvocableVariable(label='JSON String to Convert01' required=True 
                           description='JSON String to Convert (can be Text Template formatted to JSON)')
        public String jsonStringToConvert;
        @InvocableVariable(label='JSON String to Convert02' 
                           description='JSON String to Convert (can be Text Template formatted to JSON)')
        public String jsonStringToConvert02;
        @InvocableVariable(label='JSON String to Convert03' 
                           description='JSON String to Convert (can be Text Template formatted to JSON)')
        public String jsonStringToConvert03;
        @InvocableVariable(label='JSON String to Convert04' 
                           description='JSON String to Convert (can be Text Template formatted to JSON)')
        public String jsonStringToConvert04;
        @InvocableVariable(label='JSON String to Convert05' 
                           description='JSON String to Convert (can be Text Template formatted to JSON)')
        public String jsonStringToConvert05;
    }
    public class Response {
        @InvocableVariable(label='JSON Collection01')
        public List<String> JSONCollection;
        @InvocableVariable(label='JSON Collection02')
        public List<String> JSONCollection02;
        @InvocableVariable(label='JSON Collection03')
        public List<String> JSONCollection03;
        @InvocableVariable(label='JSON Collection04')
        public List<String> JSONCollection04;
        @InvocableVariable(label='JSON Collection05')
        public List<String> JSONCollection05;
    }
    @invocableMethod(label='Convert JSON String to Collection of JSON' )
    public static List<Response> execute (List<Request> requests) {
        List<Response> responseList = new List<Response>();
        for (Request curRequest : requests) {
            Response response = new Response();
            List<String> JSONCollection = new List<String>();
            if(curRequest.jsonStringToConvert!=null){response.JSONCollection=JSONConvertCollection(JSON.deserializeUntyped(curRequest.jsonStringToConvert));}
            if(curRequest.jsonStringToConvert02!=null){response.JSONCollection02=JSONConvertCollection(JSON.deserializeUntyped(curRequest.jsonStringToConvert02));}
            if(curRequest.jsonStringToConvert03!=null){response.JSONCollection03=JSONConvertCollection(JSON.deserializeUntyped(curRequest.jsonStringToConvert03));}
            if(curRequest.jsonStringToConvert04!=null){response.JSONCollection04=JSONConvertCollection(JSON.deserializeUntyped(curRequest.jsonStringToConvert04));}
            if(curRequest.jsonStringToConvert05!=null){response.JSONCollection05=JSONConvertCollection(JSON.deserializeUntyped(curRequest.jsonStringToConvert05));}
            responseList.add(response);
        }
        return responseList;
    }
    private static List<String> JSONConvertCollection(Object JSONObject) {
        List<Object> theList = (List<Object>)JSONObject;
        List<String> CollectionResult = new List<String>();
        for(Object obj: theList){
            String SingleJSON = JSON.Serialize(obj);
            System.debug('Single JSON is: '+ SingleJSON);
            CollectionResult.add(SingleJSON);
            
        }
            return CollectionResult;
    }
}