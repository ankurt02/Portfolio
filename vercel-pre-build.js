const { execSync } = require('child_process');

try {
  execSync('if [ -d flutter ]; then cd flutter && git pull && cd .. ; else git clone https://github.com/ankurt02/Portfolio.git; fi');
  execSync('cd flutter && ls && bin/flutter doctor && bin/flutter clean && bin/flutter config --enable-web && cd ..');
} catch (error) {
  console.error(error);
  process.exit(1);
}
