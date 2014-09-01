package app;

import php.Lib;

class Paldate {

  static function main() {
    new Paldate();
  }
  
  public function new() {
    var date = Date.now();
    var year = (date.getFullYear() - 1800) * 12;
    var month = date.getMonth();

    var palYear = year + month;
    var tmpl = new haxe.Template( sys.io.File.getContent("../web/index.html") );
    var output = tmpl.execute( { palYear: palYear } );

    Lib.print(output);    
  }

}
