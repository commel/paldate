package app;

class Paldate {

  private var ts:Date;

  public function new(?ts:Date) {
    this.ts = ts != null ? ts : Date.now();
  }

  public function getYear() {
    return ((ts.getFullYear() - 1800) * 12) + ts.getMonth();
  }

  public function getMonth() {
    return Math.ceil( ts.getDate() / 7 );
  }

  public function getDay() {
    return ts.getDate() % 7;
  }

  public function getTimeIndex() {
    return Math.ceil( ((ts.getHours() * 60 + ts.getMinutes()) / 1440) * 100 );
  }

}
