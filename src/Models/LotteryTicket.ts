import LotteryDraw from "./LotteryDraw";
import User from "./User";

export default class LotteryTicket {
  public readonly id: string;
  public readonly ticketNumber: number;
  public user: User;
  public lotteryDraw: LotteryDraw;
  public numbers:Array<number>;

  constructor(props: Omit<LotteryTicket, "id">, id?: string) {
    Object.assign(this, props);
    if(!this.id){
        this.id = id;
    }
  }
}
