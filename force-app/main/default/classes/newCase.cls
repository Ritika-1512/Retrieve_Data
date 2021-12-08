public class newCase {
    public static list<case> caseList(){
        List<List<Case>> searchList = [FIND 'Generator' IN ALL FIELDS RETURNING Case(id, subject, Origin, CaseNumber)];
        system.debug(searchList);
        return caseList(); 
    }

}