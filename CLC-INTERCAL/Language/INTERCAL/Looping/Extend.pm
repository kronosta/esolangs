package Language::INTERCAL::Looping::Extend;

use strict;
use Language::INTERCAL::Registers '1.-94.-2.2', qw(REG_dos REG_spot REG_twospot);
use Language::INTERCAL::Interpreter '1.-94.-2.3', qw(thr_registers thr_bytecode reg_value);
use Language::INTERCAL::ByteCode '1.-94.-2.2', qw(BCget bc_skip);
use Language::INTERCAL::Splats '1.-94.-2.1', qw(faint);

use vars qw($VERSION $PERVERSION);
($VERSION) = ($PERVERSION = "CLC-INTERCAL/Looping INTERCAL/Looping/Extend.pm 1.-94.-2.4")
  =~ /\s(\S+)$/;
my $staticIntRef;

sub add_callback {
  my ($code, $ext, $module) = @_;
  $code->('new', \&_cb_new);
}

sub _cb_new {
  my ($int) = @_;
  $staticIntRef = $int;  
} 

sub add_opcode {
  my ($code, $ext, $module) = @_;
  $code->(50, 'LOP', 'S', 'EC(S)', 'LOoP', \&_s_LOP) 
 #   "Accepts an expression, a count n, and n statements. Runs the statements in a while loop "
 # . "checking that the expression isn't zero."
 # );
}

sub _s_LOP {
  my ($ip, $tp, $cp, $ep) = @_;
  *_run_s = \&Language::INTERCAL::Interpreter::_run_s;
  *_get_number = \&Language::INTERCAL::Interpreter::_get_number;
  my $cpexp = $$cp;
  _get_number($ip, $tp, $cp, $ep);
  {
  my $count = BCget($tp->[thr_bytecode], $cp, $ep);
  for (1..$count) {
    bc_skip($tp->[thr_bytecode], $cp, $ep);
  }
  }
  my $cpend = $$cp;
  $$cp = $cpexp;
  while (1) {
    my $value = _get_number($ip, $tp, $cp, $ep);
    my $count = BCget($tp->[thr_bytecode], $cp, $ep);
    if ($value == 0) {
      $$cp = $cpend;
      last;
    }
    while ($count > 0) {
      _run_s($ip, $tp, $cp, $ep);
      $count--;
    }
    $$cp = $cpexp;
  } 
}

1;
