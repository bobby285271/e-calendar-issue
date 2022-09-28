class Bar : Object {
    public string s { get; construct set; }
    construct {
        this.s = "foo";
        this.notify["s"].connect (() => {
            warning (this.s);
        });
    }
}

void main () {
    var test = new Bar ();
    test.s = "bar";
}
