export projectName="Generator-Swiftserver-Projects"
cd ${TRAVIS_BUILD_DIR}
mkdir ${projectName}
cd ${projectName}
export projectFolder=`pwd`
echo "Generating project"
yo swiftserver --init --skip-build
echo "Testing swiftserver generated project"
git clone https://github.com/Kitura-Next/Package-Builder.git
