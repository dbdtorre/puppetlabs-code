class dt_users::master
{

    group 
    { 'masters':
        ensure => present,
        gid => '1003',
    }
    user 
    {   'masters':
        ensure   => present,
        expiry => absent,
        managehome => true,
        shell => '/bin/bash',
        uid => '1002',
        gid => 'masters',
       
    }

    file
    { '/home/masters': 
        ensure => directory,
        recurse => true,
        owner => 'masters',
        group => 'masters',
    }

    ssh_authorized_key { 'masters@jmp.sg1.delatorre.network':
       name => "masters@jmp.sg1.delatorre.network",
       ensure => absent,
       key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCekShkWBGexAeCgAjAcgnoQkFyuFwrrHvIsztHN4MGyQDa1s2PQrsoxnsH1Ude83MOXvaKHwEJA6xxVXpv+v6Jov81j6po2riDC9Vs+n+1+I2i3Cg0MENFNUZ3b5MFWOnZRMbbR2uTt7Av81N9vxyogcKMAeur9WeOs9BUs08sXGekYI5ePkUORqthe9t5/QA39tiFQTqMd5SL7gRvsdhZk745gHcpBirDaebatn6kIIq4OQamlB7yumlVEiCHNYzZmvl2QeU14yKp+307nBwdDbJglr5+ZP5OBeZSNrvXaQuYblAcu5ldFI9Tf3eM3rr1zWMkYkXJFoPLkDdQ94iT",
       type => ssh-rsa,
       user => masters,
    }

}
