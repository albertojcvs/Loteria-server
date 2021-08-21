export default class User{
   public readonly id:string;
   public name:string;
   public readonly email:string;
   public password:string;
    
    constructor(user:Omit<User,"id">,id?:string){
        Object.assign(this,user);
       if(!this.id){
           this.id = id;
       }
    }
    
}