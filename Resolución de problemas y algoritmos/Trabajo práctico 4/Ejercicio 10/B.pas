program CincoAs;
uses Windows;

var
    ases : LongInt;
begin
    while true do
        begin
            write('Es: ');
            read(ases);
            read(ases);
            read(ases);
            read(ases);
            writeln('Era: ', ases);
        end;
end.