{vars, ...}: {
  users.users."${vars.username}" = {
    home = "/Users/${vars.username}";
  };
}
