for pid in $(pgrep -f '^/opt/vivaldi|/vivaldi-bin|/vivaldi'); do
  echo "Killing tree for PID $pid"
  kill -- -"$pid" 2>/dev/null || true
  kill -9 -- -"$pid" 2>/dev/null || true
done

