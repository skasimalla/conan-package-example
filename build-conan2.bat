          conan profile detect
          conan create . 

          echo "Create complete"

          conan version
          conan remote add conan-dev-local https://soleng.jfrog.io/artifactory/api/conan/conan-dev-local -f
          echo "Remote added "
          conan remote login conan-dev-local sam -p $ACCESS_TOKEN
          
          REM conan list --graph=create.json --graph-binaries=build --format=json > pkglist.json
          REM conan upload --list=pkglist.json -r=conan-dev-local -c
          
          conan upload hello -r=conan-dev-local -c
