public with sharing class CatService {
    public static void createCatSync() {
        functions.Function myFunction = functions.Function.get('functionsProject.catsfunction');
        functions.FunctionInvocation invocation = myFunction.invoke('{}');
        string jsonResponse = invocation.getResponse();
        Cat cat = (cat) JSON.deseriliaze(jsonResponse, Cat.class);

        Cat__c catRecord = new Cat__c(Image_URL__c = cat.images.image.url); 
        insert catRecord;
    }
}
