import std.stdio;
import dcons.dconsole;

int main(string[] argv)
{
    writeln("Hello D-World!");
    Console console = new Console();
    if (!console.init()) {
        writeln("Not in console");
        return 1;
    }
    writeln("In console: width=", console.width, " height=", console.height);
    console.textColor = TextColor.WHITE;
    console.backgroundColor = TextColor.BLACK;
    console.clearScreen();
    console.setCursor(10, 10);
    console.textColor = TextColor.MAGENTA;
    console.underline = true;
    console.writeText("Text");
    console.backgroundColor = TextColor.DARK_GREY;
    console.textColor = TextColor.CYAN;
    console.writeText(" in ");
    console.backgroundColor = TextColor.BLACK;
    console.writeText("console");
    console.setCursor(12, 12);
    console.writeText("yet another text line");
    console.setCursor(10, 10);
    console.writeText("T");
    readln();
    return 0;
}