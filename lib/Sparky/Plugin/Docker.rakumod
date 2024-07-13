use v6;

unit module Sparky::Plugin::Docker:ver<0.0.1>;

our sub run ( %config, %parameters ) {

  bash "docker stop {%config<project>} || :";
  bash "docker rm /{%config<project>} || :";

}
