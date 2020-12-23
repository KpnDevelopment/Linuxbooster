echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor &&
 sysctl -w vm.swappiness=10 &&
  sudo apt update &&
   sudo tlp start &&
    CPU_SCALING_GOVERNOR_ON_AC=performance  &&
 CPU_HWP_ON_AC=performance  &&
 CPU_BOOST_ON_AC=1 &&
 ENERGY_PERF_POLICY_ON_AC=performance


