class dt_users::dan
{

    group
    { 'dan':
        ensure => present,
        gid => '2000',
    }

    user
    {  'dan':
        ensure   => present,
        expiry => absent,
        managehome => true,
        shell => '/bin/bash',
        uid => '1999',
        gid => 'dan',

    }

    file
    { '/home/dan':
        ensure => directory,
        recurse => true,
        owner => 'dan',
        group => 'dan',
    }

}

