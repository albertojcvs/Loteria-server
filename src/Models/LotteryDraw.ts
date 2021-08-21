export default class LotteryDraw {
  public readonly id: string;
  public readonly drawNumber: number;
  public drawDate: Date;
  public sortedNumbers:Array<number>;

  constructor(props: Omit<LotteryDraw, "id" | "sortedNumbers" >, id?: string,sortedNumbers?:Array<number>) {
    Object.assign(this, props);

    if (!this.id) {
      this.id = id;
    }
    if (!this.sortedNumbers) {
        this.sortedNumbers = sortedNumbers;
      }
  }
}
