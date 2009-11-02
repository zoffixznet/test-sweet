use MooseX::Declare;

role Test::Sweet::Runnable with MooseX::Runnable {
    use Test::More;

    method run {
        my @tests = $self->meta->tests;
        plan tests => scalar @tests; # so you get a "progress bar"
        $self->$_ for @tests;
        exit 0;
    }
}

1;