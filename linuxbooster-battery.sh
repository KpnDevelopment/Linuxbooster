echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor &&
 sysctl -w vm.swappiness=10 &&
  sudo apt update &&
   sudo tlp start &&
   CPU_SCALING_GOVERNOR_ON_BAT=performance &&
   CPU_ENERGY_PERF_POLICY_ON_BAT=performance &&
   CPU_HWP_ON_BAT=performance &&
   CPU_BOOST_ON_BAT=1 &&
    ENERGY_PERF_POLICY_ON_BAT=performance
   