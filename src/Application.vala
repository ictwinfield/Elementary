public class MyApp : Gtk.Application {

  public MyApp() {
    Object(
      application_id: "https://github.com/ictwinfield/Elementary.git",
      flags: ApplicationFlags.FLAGS_NONE
      );
  }
  protected override void activate(){
    var main_window = new Gtk.ApplicationWindow(this);
    main_window.default_height = 300;
    main_window.default_width  = 300;
    main_window.title = "Hello World!";
    var btn = new Gtk.Button.with_label("Click me!");
    btn.margin = 12;
    btn.clicked.connect(()=> {
      btn.label = "Hi Everone";
      btn.sensitive = false;
    });
    main_window.add(btn);
    main_window.show_all();
  }

  public static int main(string [] args) {
    var app = new MyApp();
    return app.run(args);
  }
}
