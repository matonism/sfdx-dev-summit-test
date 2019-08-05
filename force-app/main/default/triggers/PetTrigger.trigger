trigger PetTrigger on Pet__c (before insert) {


    if(Trigger.IsBefore && Trigger.isInsert){
        for(Pet__c pet : Trigger.new){
            if(pet.Type__c == null){
                pet.Type__c = 'Dog';
            }
        }
    }

    
}