@isTest
private class JSONToCollectionTest {
    public static testMethod void TestConvert() {
        Test.startTest();
        List<JSONToCollection.Request> listRequest =new List<JSONToCollection.Request>();
    	JSONToCollection.Request req = new JSONToCollection.Request();
        req.jsonStringToConvert = '[{"name":"Ford","models":["Fiesta","Focus","Mustang"]},{"name":"BMW","models":["320","X3","X5"]},{"name":"Fiat","models":["500","Panda"]}]';
    	listRequest.add(req);
        List<JSONToCollection.Response> listResult = JSONToCollection.execute(listRequest);
        Test.stopTest();
    }

}