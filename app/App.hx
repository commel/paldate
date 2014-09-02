package app;

import php.Lib;

class App {

  static function main() {
    new App();
  }
  
  public function new() {
    var paldate = new Paldate();
    var result = { year: paldate.getYear(), month: paldate.getMonth(), day: paldate.getDay(), timeindex: paldate.getTimeIndex() };

    var tmpl = new haxe.Template( sys.io.File.getContent("../web/index.html") );
    var output = tmpl.execute( { paldate: result } );
    
    Lib.print(output);    
  }

}
