{ inputs, cell }: { pkgs, ... }:
{
  users = {
    defaultUserShell = pkgs.zsh;
    users.root = {
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCo3Q3odpbDCcOxKeiqE5YX4sWmSGynXz3Nog0IuQbPfj8/4bCaeQMPMYggu7Txj9Q935teDi0C6mLkeprn5Q0vsZwglX/lAXaMEv3QgnzPzIxple0Ns7buyaIP38JNAHCd6qNMpLXsWU1CrKkX9qOY3CSzb127xMY9IemW2GzIUD8v3SCrmUoEJg3cqZJ3zK21V3SbSyAwf1EJT/jfggksC7gSMOmvkFPJ/8E1L/J7l/+yplS+4cmFoznbVgIyp49Vl6SGE+jay4yc/BAxzmx+x3tPn4zLeZVRswmx6sRZZXY+U+jKeZ5/0HFETtz87rW4cXW95531wpsVufu8M8eqvdOGVIR1a3HYaM82I7Enm95lKXuyoijwYlsVQP+DTWHtzpXNHZekSQjpmlR31pHyF/h7nON2DzCwcdrz+NOvXmQgighXvuwWVF0MmZCHJDJYS4P/RDG2HKztuqxiH5dxYCWyVIcYuS2awHXb+zhOFPi+UvhezgJPMU1gX+djXZGorN87HditBLfFmMckmT1MCU0jzenn4boPE25j5TXRCRCXTI9TMFOgzOS87amE/w8cUFK2WQiIa60SLkNdHy8k4W0aQfjGxEL9ijsB+JKpzgKFOv0EKIBYY8Z4i822RvZ9L7WCDK0BQe0jmkwp0ZUDnST2XY3NMqprVZNHFWKz7w== sam@fw"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB2M80EUw0wQaBNutE06VNgSViVot6RL0O6iv2P1ewWH sam@fw"
      ];
    };
    users.sam = {
      #shell = pkgs.zsh;
      isNormalUser = true;
      initialPassword = "changeme-sam";
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCo3Q3odpbDCcOxKeiqE5YX4sWmSGynXz3Nog0IuQbPfj8/4bCaeQMPMYggu7Txj9Q935teDi0C6mLkeprn5Q0vsZwglX/lAXaMEv3QgnzPzIxple0Ns7buyaIP38JNAHCd6qNMpLXsWU1CrKkX9qOY3CSzb127xMY9IemW2GzIUD8v3SCrmUoEJg3cqZJ3zK21V3SbSyAwf1EJT/jfggksC7gSMOmvkFPJ/8E1L/J7l/+yplS+4cmFoznbVgIyp49Vl6SGE+jay4yc/BAxzmx+x3tPn4zLeZVRswmx6sRZZXY+U+jKeZ5/0HFETtz87rW4cXW95531wpsVufu8M8eqvdOGVIR1a3HYaM82I7Enm95lKXuyoijwYlsVQP+DTWHtzpXNHZekSQjpmlR31pHyF/h7nON2DzCwcdrz+NOvXmQgighXvuwWVF0MmZCHJDJYS4P/RDG2HKztuqxiH5dxYCWyVIcYuS2awHXb+zhOFPi+UvhezgJPMU1gX+djXZGorN87HditBLfFmMckmT1MCU0jzenn4boPE25j5TXRCRCXTI9TMFOgzOS87amE/w8cUFK2WQiIa60SLkNdHy8k4W0aQfjGxEL9ijsB+JKpzgKFOv0EKIBYY8Z4i822RvZ9L7WCDK0BQe0jmkwp0ZUDnST2XY3NMqprVZNHFWKz7w== sam@fw"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB2M80EUw0wQaBNutE06VNgSViVot6RL0O6iv2P1ewWH sam@fw"
      ];
    };
  };
}
