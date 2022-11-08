{ fetchurl, fetchgit, linkFarm, runCommand, gnutar }: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [
    {
      name = "_babel_parser___parser_7.19.4.tgz";
      path = fetchurl {
        name = "_babel_parser___parser_7.19.4.tgz";
        url  = "https://registry.yarnpkg.com/@babel/parser/-/parser-7.19.4.tgz";
        sha512 = "qpVT7gtuOLjWeDTKLkJ6sryqLliBaFpAtGeqw5cs5giLldvh+Ch0plqnUMKoVAUS6ZEueQQiZV+p5pxtPitEsA==";
      };
    }
    {
      name = "_esbuild_android_arm___android_arm_0.15.10.tgz";
      path = fetchurl {
        name = "_esbuild_android_arm___android_arm_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/android-arm/-/android-arm-0.15.10.tgz";
        sha512 = "FNONeQPy/ox+5NBkcSbYJxoXj9GWu8gVGJTVmUyoOCKQFDTrHVKgNSzChdNt0I8Aj/iKcsDf2r9BFwv+FSNUXg==";
      };
    }
    {
      name = "_esbuild_linux_loong64___linux_loong64_0.15.10.tgz";
      path = fetchurl {
        name = "_esbuild_linux_loong64___linux_loong64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/@esbuild/linux-loong64/-/linux-loong64-0.15.10.tgz";
        sha512 = "w0Ou3Z83LOYEkwaui2M8VwIp+nLi/NA60lBLMvaJ+vXVMcsARYdEzLNE7RSm4+lSg4zq4d7fAVuzk7PNQ5JFgg==";
      };
    }
    {
      name = "_tauri_apps_api___api_1.1.0.tgz";
      path = fetchurl {
        name = "_tauri_apps_api___api_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/api/-/api-1.1.0.tgz";
        sha512 = "n13pIqdPd3KtaMmmAcrU7BTfdMtIlGNnfZD0dNX8L4p8dgmuNyikm6JAA+yCpl9gqq6I8x5cV2Y0muqdgD0cWw==";
      };
    }
    {
      name = "_tauri_apps_cli_darwin_arm64___cli_darwin_arm64_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_darwin_arm64___cli_darwin_arm64_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-darwin-arm64/-/cli-darwin-arm64-1.1.1.tgz";
        sha512 = "qBG11ig525/qf0f5OQxn0ON3hT8YdpTfpa4Y4kVqBJhdW50R5fadPv6tv5Dpl2TS2X7nWh/zg5mEXYoCK3HZ9w==";
      };
    }
    {
      name = "_tauri_apps_cli_darwin_x64___cli_darwin_x64_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_darwin_x64___cli_darwin_x64_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-darwin-x64/-/cli-darwin-x64-1.1.1.tgz";
        sha512 = "M3dMsp78OdxisbTwAWGvy3jIb3uqThtQcUYVvqOu9LeEOHyldOBFDSht+6PTBpaJLAHFMQK2rmNxiWgigklJaA==";
      };
    }
    {
      name = "_tauri_apps_cli_linux_arm_gnueabihf___cli_linux_arm_gnueabihf_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_linux_arm_gnueabihf___cli_linux_arm_gnueabihf_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-linux-arm-gnueabihf/-/cli-linux-arm-gnueabihf-1.1.1.tgz";
        sha512 = "LYlvdAd73cq+yTi6rw7j/DWIvDpeApwgQkIn+HYsNNeFhyFmABU7tmw+pekK3W3nHAkYAJ69Rl4ZdoxdNGKmHg==";
      };
    }
    {
      name = "_tauri_apps_cli_linux_arm64_gnu___cli_linux_arm64_gnu_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_linux_arm64_gnu___cli_linux_arm64_gnu_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-linux-arm64-gnu/-/cli-linux-arm64-gnu-1.1.1.tgz";
        sha512 = "o/hbMQIKuFI7cTNpeQBHD/OCNJOBIci78faKms/t6AstLXx0QJuRHDk477Rg6VVy/I3BBKbyATALbmcTq+ti0A==";
      };
    }
    {
      name = "_tauri_apps_cli_linux_arm64_musl___cli_linux_arm64_musl_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_linux_arm64_musl___cli_linux_arm64_musl_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-linux-arm64-musl/-/cli-linux-arm64-musl-1.1.1.tgz";
        sha512 = "8Ci4qlDnXIp93XqUrtzFCBDatUzPHpZq7L3bociUbWpvy/bnlzxp1C/C+vwdc4uS1MiAp9v3BFgrU4i0f0Z3QQ==";
      };
    }
    {
      name = "_tauri_apps_cli_linux_x64_gnu___cli_linux_x64_gnu_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_linux_x64_gnu___cli_linux_x64_gnu_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-linux-x64-gnu/-/cli-linux-x64-gnu-1.1.1.tgz";
        sha512 = "ES4Bkx2JAI8+dDNDJswhLS3yqt+yT/4C6UfGOPIHFxcXUh6fe36eUllrTt+HLRS9xTZbYnteJy7ebq2TqMkaxw==";
      };
    }
    {
      name = "_tauri_apps_cli_linux_x64_musl___cli_linux_x64_musl_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_linux_x64_musl___cli_linux_x64_musl_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-linux-x64-musl/-/cli-linux-x64-musl-1.1.1.tgz";
        sha512 = "qrN1WOMAaDl+LE8P8iO0+DYlrWNTc9jIu/CsnVY/LImTn79ZPxEkcVBo0UGeKRI7f10TfvkVmLCBLxTz8QhEyA==";
      };
    }
    {
      name = "_tauri_apps_cli_win32_ia32_msvc___cli_win32_ia32_msvc_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_win32_ia32_msvc___cli_win32_ia32_msvc_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-win32-ia32-msvc/-/cli-win32-ia32-msvc-1.1.1.tgz";
        sha512 = "vw7VOmrQlywHhFV3pf54udf2FRNj9dg9WP1gL0My55FnB+w+PWS9Ipm871kX5qepmChdnZHKq9fsqE2uTjX//Q==";
      };
    }
    {
      name = "_tauri_apps_cli_win32_x64_msvc___cli_win32_x64_msvc_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli_win32_x64_msvc___cli_win32_x64_msvc_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli-win32-x64-msvc/-/cli-win32-x64-msvc-1.1.1.tgz";
        sha512 = "OukxlLLi3AoCN4ABnqCDTiiC7xJGWukAjrKCIx7wFISrLjNfsrnH7/UOzuopfGpZChSe2c+AamVmcpBfVsEmJA==";
      };
    }
    {
      name = "_tauri_apps_cli___cli_1.1.1.tgz";
      path = fetchurl {
        name = "_tauri_apps_cli___cli_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@tauri-apps/cli/-/cli-1.1.1.tgz";
        sha512 = "80kjMEMPBwLYCp0tTKSquy90PHHGGBvZsneNr3B/mWxNsvjzA1C0vOyGJGFrJuT2OmkvrdvuJZ5mch5hL8O1Xg==";
      };
    }
    {
      name = "_vitejs_plugin_vue___plugin_vue_3.1.2.tgz";
      path = fetchurl {
        name = "_vitejs_plugin_vue___plugin_vue_3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/@vitejs/plugin-vue/-/plugin-vue-3.1.2.tgz";
        sha512 = "3zxKNlvA3oNaKDYX0NBclgxTQ1xaFdL7PzwF6zj9tGFziKwmBa3Q/6XcJQxudlT81WxDjEhHmevvIC4Orc1LhQ==";
      };
    }
    {
      name = "_vue_compiler_core___compiler_core_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_compiler_core___compiler_core_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/compiler-core/-/compiler-core-3.2.40.tgz";
        sha512 = "2Dc3Stk0J/VyQ4OUr2yEC53kU28614lZS+bnrCbFSAIftBJ40g/2yQzf4mPBiFuqguMB7hyHaujdgZAQ67kZYA==";
      };
    }
    {
      name = "_vue_compiler_dom___compiler_dom_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_compiler_dom___compiler_dom_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/compiler-dom/-/compiler-dom-3.2.40.tgz";
        sha512 = "OZCNyYVC2LQJy4H7h0o28rtk+4v+HMQygRTpmibGoG9wZyomQiS5otU7qo3Wlq5UfHDw2RFwxb9BJgKjVpjrQw==";
      };
    }
    {
      name = "_vue_compiler_sfc___compiler_sfc_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_compiler_sfc___compiler_sfc_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/compiler-sfc/-/compiler-sfc-3.2.40.tgz";
        sha512 = "tzqwniIN1fu1PDHC3CpqY/dPCfN/RN1thpBC+g69kJcrl7mbGiHKNwbA6kJ3XKKy8R6JLKqcpVugqN4HkeBFFg==";
      };
    }
    {
      name = "_vue_compiler_ssr___compiler_ssr_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_compiler_ssr___compiler_ssr_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/compiler-ssr/-/compiler-ssr-3.2.40.tgz";
        sha512 = "80cQcgasKjrPPuKcxwuCx7feq+wC6oFl5YaKSee9pV3DNq+6fmCVwEEC3vvkf/E2aI76rIJSOYHsWSEIxK74oQ==";
      };
    }
    {
      name = "_vue_reactivity_transform___reactivity_transform_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_reactivity_transform___reactivity_transform_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/reactivity-transform/-/reactivity-transform-3.2.40.tgz";
        sha512 = "HQUCVwEaacq6fGEsg2NUuGKIhUveMCjOk8jGHqLXPI2w6zFoPrlQhwWEaINTv5kkZDXKEnCijAp+4gNEHG03yw==";
      };
    }
    {
      name = "_vue_reactivity___reactivity_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_reactivity___reactivity_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/reactivity/-/reactivity-3.2.40.tgz";
        sha512 = "N9qgGLlZmtUBMHF9xDT4EkD9RdXde1Xbveb+niWMXuHVWQP5BzgRmE3SFyUBBcyayG4y1lhoz+lphGRRxxK4RA==";
      };
    }
    {
      name = "_vue_runtime_core___runtime_core_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_runtime_core___runtime_core_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/runtime-core/-/runtime-core-3.2.40.tgz";
        sha512 = "U1+rWf0H8xK8aBUZhnrN97yoZfHbjgw/bGUzfgKPJl69/mXDuSg8CbdBYBn6VVQdR947vWneQBFzdhasyzMUKg==";
      };
    }
    {
      name = "_vue_runtime_dom___runtime_dom_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_runtime_dom___runtime_dom_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/runtime-dom/-/runtime-dom-3.2.40.tgz";
        sha512 = "AO2HMQ+0s2+MCec8hXAhxMgWhFhOPJ/CyRXnmTJ6XIOnJFLrH5Iq3TNwvVcODGR295jy77I6dWPj+wvFoSYaww==";
      };
    }
    {
      name = "_vue_server_renderer___server_renderer_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_server_renderer___server_renderer_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/server-renderer/-/server-renderer-3.2.40.tgz";
        sha512 = "gtUcpRwrXOJPJ4qyBpU3EyxQa4EkV8I4f8VrDePcGCPe4O/hd0BPS7v9OgjIQob6Ap8VDz9G+mGTKazE45/95w==";
      };
    }
    {
      name = "_vue_shared___shared_3.2.40.tgz";
      path = fetchurl {
        name = "_vue_shared___shared_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/@vue/shared/-/shared-3.2.40.tgz";
        sha512 = "0PLQ6RUtZM0vO3teRfzGi4ltLUO5aO+kLgwh4Um3THSR03rpQWLTuRCkuO5A41ITzwdWeKdPHtSARuPkoo5pCQ==";
      };
    }
    {
      name = "csstype___csstype_2.6.21.tgz";
      path = fetchurl {
        name = "csstype___csstype_2.6.21.tgz";
        url  = "https://registry.yarnpkg.com/csstype/-/csstype-2.6.21.tgz";
        sha512 = "Z1PhmomIfypOpoMjRQB70jfvy/wxT50qW08YXO5lMIJkrdq4yOTR+AW7FqutScmB9NkLwxo+jU+kZLbofZZq/w==";
      };
    }
    {
      name = "esbuild_android_64___esbuild_android_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_android_64___esbuild_android_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-android-64/-/esbuild-android-64-0.15.10.tgz";
        sha512 = "UI7krF8OYO1N7JYTgLT9ML5j4+45ra3amLZKx7LO3lmLt1Ibn8t3aZbX5Pu4BjWiqDuJ3m/hsvhPhK/5Y/YpnA==";
      };
    }
    {
      name = "esbuild_android_arm64___esbuild_android_arm64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_android_arm64___esbuild_android_arm64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-android-arm64/-/esbuild-android-arm64-0.15.10.tgz";
        sha512 = "EOt55D6xBk5O05AK8brXUbZmoFj4chM8u3riGflLa6ziEoVvNjRdD7Cnp82NHQGfSHgYR06XsPI8/sMuA/cUwg==";
      };
    }
    {
      name = "esbuild_darwin_64___esbuild_darwin_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_darwin_64___esbuild_darwin_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-darwin-64/-/esbuild-darwin-64-0.15.10.tgz";
        sha512 = "hbDJugTicqIm+WKZgp208d7FcXcaK8j2c0l+fqSJ3d2AzQAfjEYDRM3Z2oMeqSJ9uFxyj/muSACLdix7oTstRA==";
      };
    }
    {
      name = "esbuild_darwin_arm64___esbuild_darwin_arm64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_darwin_arm64___esbuild_darwin_arm64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-darwin-arm64/-/esbuild-darwin-arm64-0.15.10.tgz";
        sha512 = "M1t5+Kj4IgSbYmunf2BB6EKLkWUq+XlqaFRiGOk8bmBapu9bCDrxjf4kUnWn59Dka3I27EiuHBKd1rSO4osLFQ==";
      };
    }
    {
      name = "esbuild_freebsd_64___esbuild_freebsd_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_freebsd_64___esbuild_freebsd_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-freebsd-64/-/esbuild-freebsd-64-0.15.10.tgz";
        sha512 = "KMBFMa7C8oc97nqDdoZwtDBX7gfpolkk6Bcmj6YFMrtCMVgoU/x2DI1p74DmYl7CSS6Ppa3xgemrLrr5IjIn0w==";
      };
    }
    {
      name = "esbuild_freebsd_arm64___esbuild_freebsd_arm64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_freebsd_arm64___esbuild_freebsd_arm64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-freebsd-arm64/-/esbuild-freebsd-arm64-0.15.10.tgz";
        sha512 = "m2KNbuCX13yQqLlbSojFMHpewbn8wW5uDS6DxRpmaZKzyq8Dbsku6hHvh2U+BcLwWY4mpgXzFUoENEf7IcioGg==";
      };
    }
    {
      name = "esbuild_linux_32___esbuild_linux_32_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_32___esbuild_linux_32_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-32/-/esbuild-linux-32-0.15.10.tgz";
        sha512 = "guXrwSYFAvNkuQ39FNeV4sNkNms1bLlA5vF1H0cazZBOLdLFIny6BhT+TUbK/hdByMQhtWQ5jI9VAmPKbVPu1w==";
      };
    }
    {
      name = "esbuild_linux_64___esbuild_linux_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_64___esbuild_linux_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-64/-/esbuild-linux-64-0.15.10.tgz";
        sha512 = "jd8XfaSJeucMpD63YNMO1JCrdJhckHWcMv6O233bL4l6ogQKQOxBYSRP/XLWP+6kVTu0obXovuckJDcA0DKtQA==";
      };
    }
    {
      name = "esbuild_linux_arm64___esbuild_linux_arm64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_arm64___esbuild_linux_arm64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-arm64/-/esbuild-linux-arm64-0.15.10.tgz";
        sha512 = "GByBi4fgkvZFTHFDYNftu1DQ1GzR23jws0oWyCfhnI7eMOe+wgwWrc78dbNk709Ivdr/evefm2PJiUBMiusS1A==";
      };
    }
    {
      name = "esbuild_linux_arm___esbuild_linux_arm_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_arm___esbuild_linux_arm_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-arm/-/esbuild-linux-arm-0.15.10.tgz";
        sha512 = "6N8vThLL/Lysy9y4Ex8XoLQAlbZKUyExCWyayGi2KgTBelKpPgj6RZnUaKri0dHNPGgReJriKVU6+KDGQwn10A==";
      };
    }
    {
      name = "esbuild_linux_mips64le___esbuild_linux_mips64le_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_mips64le___esbuild_linux_mips64le_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-mips64le/-/esbuild-linux-mips64le-0.15.10.tgz";
        sha512 = "BxP+LbaGVGIdQNJUNF7qpYjEGWb0YyHVSKqYKrn+pTwH/SiHUxFyJYSP3pqkku61olQiSBnSmWZ+YUpj78Tw7Q==";
      };
    }
    {
      name = "esbuild_linux_ppc64le___esbuild_linux_ppc64le_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_ppc64le___esbuild_linux_ppc64le_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-ppc64le/-/esbuild-linux-ppc64le-0.15.10.tgz";
        sha512 = "LoSQCd6498PmninNgqd/BR7z3Bsk/mabImBWuQ4wQgmQEeanzWd5BQU2aNi9mBURCLgyheuZS6Xhrw5luw3OkQ==";
      };
    }
    {
      name = "esbuild_linux_riscv64___esbuild_linux_riscv64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_riscv64___esbuild_linux_riscv64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-riscv64/-/esbuild-linux-riscv64-0.15.10.tgz";
        sha512 = "Lrl9Cr2YROvPV4wmZ1/g48httE8z/5SCiXIyebiB5N8VT7pX3t6meI7TQVHw/wQpqP/AF4SksDuFImPTM7Z32Q==";
      };
    }
    {
      name = "esbuild_linux_s390x___esbuild_linux_s390x_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_linux_s390x___esbuild_linux_s390x_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-linux-s390x/-/esbuild-linux-s390x-0.15.10.tgz";
        sha512 = "ReP+6q3eLVVP2lpRrvl5EodKX7EZ1bS1/z5j6hsluAlZP5aHhk6ghT6Cq3IANvvDdscMMCB4QEbI+AjtvoOFpA==";
      };
    }
    {
      name = "esbuild_netbsd_64___esbuild_netbsd_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_netbsd_64___esbuild_netbsd_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-netbsd-64/-/esbuild-netbsd-64-0.15.10.tgz";
        sha512 = "iGDYtJCMCqldMskQ4eIV+QSS/CuT7xyy9i2/FjpKvxAuCzrESZXiA1L64YNj6/afuzfBe9i8m/uDkFHy257hTw==";
      };
    }
    {
      name = "esbuild_openbsd_64___esbuild_openbsd_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_openbsd_64___esbuild_openbsd_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-openbsd-64/-/esbuild-openbsd-64-0.15.10.tgz";
        sha512 = "ftMMIwHWrnrYnvuJQRJs/Smlcb28F9ICGde/P3FUTCgDDM0N7WA0o9uOR38f5Xe2/OhNCgkjNeb7QeaE3cyWkQ==";
      };
    }
    {
      name = "esbuild_sunos_64___esbuild_sunos_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_sunos_64___esbuild_sunos_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-sunos-64/-/esbuild-sunos-64-0.15.10.tgz";
        sha512 = "mf7hBL9Uo2gcy2r3rUFMjVpTaGpFJJE5QTDDqUFf1632FxteYANffDZmKbqX0PfeQ2XjUDE604IcE7OJeoHiyg==";
      };
    }
    {
      name = "esbuild_windows_32___esbuild_windows_32_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_windows_32___esbuild_windows_32_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-windows-32/-/esbuild-windows-32-0.15.10.tgz";
        sha512 = "ttFVo+Cg8b5+qHmZHbEc8Vl17kCleHhLzgT8X04y8zudEApo0PxPg9Mz8Z2cKH1bCYlve1XL8LkyXGFjtUYeGg==";
      };
    }
    {
      name = "esbuild_windows_64___esbuild_windows_64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_windows_64___esbuild_windows_64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-windows-64/-/esbuild-windows-64-0.15.10.tgz";
        sha512 = "2H0gdsyHi5x+8lbng3hLbxDWR7mKHWh5BXZGKVG830KUmXOOWFE2YKJ4tHRkejRduOGDrBvHBriYsGtmTv3ntA==";
      };
    }
    {
      name = "esbuild_windows_arm64___esbuild_windows_arm64_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild_windows_arm64___esbuild_windows_arm64_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild-windows-arm64/-/esbuild-windows-arm64-0.15.10.tgz";
        sha512 = "S+th4F+F8VLsHLR0zrUcG+Et4hx0RKgK1eyHc08kztmLOES8BWwMiaGdoW9hiXuzznXQ0I/Fg904MNbr11Nktw==";
      };
    }
    {
      name = "esbuild___esbuild_0.15.10.tgz";
      path = fetchurl {
        name = "esbuild___esbuild_0.15.10.tgz";
        url  = "https://registry.yarnpkg.com/esbuild/-/esbuild-0.15.10.tgz";
        sha512 = "N7wBhfJ/E5fzn/SpNgX+oW2RLRjwaL8Y0ezqNqhjD6w0H2p0rDuEz2FKZqpqLnO8DCaWumKe8dsC/ljvVSSxng==";
      };
    }
    {
      name = "estree_walker___estree_walker_2.0.2.tgz";
      path = fetchurl {
        name = "estree_walker___estree_walker_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/estree-walker/-/estree-walker-2.0.2.tgz";
        sha512 = "Rfkk/Mp/DL7JVje3u18FxFujQlTNR2q6QfMSMB7AvCBx91NGj/ba3kCfza0f6dVDbw7YlRf/nDrn7pQrCCyQ/w==";
      };
    }
    {
      name = "fsevents___fsevents_2.3.2.tgz";
      path = fetchurl {
        name = "fsevents___fsevents_2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/fsevents/-/fsevents-2.3.2.tgz";
        sha512 = "xiqMQR4xAeHTuB9uWm+fFRcIOgKBMiOBP+eXiyT7jsgVCq1bkVygt00oASowB7EdtpOHaaPgKt812P9ab+DDKA==";
      };
    }
    {
      name = "function_bind___function_bind_1.1.1.tgz";
      path = fetchurl {
        name = "function_bind___function_bind_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz";
        sha512 = "yIovAzMX49sF8Yl58fSCWJ5svSLuaibPxXQJFLmBObTuCr0Mf1KiPopGM9NiFjiYBCbfaa2Fh6breQ6ANVTI0A==";
      };
    }
    {
      name = "has___has_1.0.3.tgz";
      path = fetchurl {
        name = "has___has_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/has/-/has-1.0.3.tgz";
        sha512 = "f2dvO0VU6Oej7RkWJGrehjbzMAjFp5/VKPp5tTpWIV4JHHZK1/BxbFRtf/siA2SWTe09caDmVtYYzWEIbBS4zw==";
      };
    }
    {
      name = "is_core_module___is_core_module_2.10.0.tgz";
      path = fetchurl {
        name = "is_core_module___is_core_module_2.10.0.tgz";
        url  = "https://registry.yarnpkg.com/is-core-module/-/is-core-module-2.10.0.tgz";
        sha512 = "Erxj2n/LDAZ7H8WNJXd9tw38GYM3dv8rk8Zcs+jJuxYTW7sozH+SS8NtrSjVL1/vpLvWi1hxy96IzjJ3EHTJJg==";
      };
    }
    {
      name = "magic_string___magic_string_0.25.9.tgz";
      path = fetchurl {
        name = "magic_string___magic_string_0.25.9.tgz";
        url  = "https://registry.yarnpkg.com/magic-string/-/magic-string-0.25.9.tgz";
        sha512 = "RmF0AsMzgt25qzqqLc1+MbHmhdx0ojF2Fvs4XnOqz2ZOBXzzkEwc/dJQZCYHAn7v1jbVOjAZfK8msRn4BxO4VQ==";
      };
    }
    {
      name = "nanoid___nanoid_3.3.4.tgz";
      path = fetchurl {
        name = "nanoid___nanoid_3.3.4.tgz";
        url  = "https://registry.yarnpkg.com/nanoid/-/nanoid-3.3.4.tgz";
        sha512 = "MqBkQh/OHTS2egovRtLk45wEyNXwF+cokD+1YPf9u5VfJiRdAiRwB2froX5Co9Rh20xs4siNPm8naNotSD6RBw==";
      };
    }
    {
      name = "path_parse___path_parse_1.0.7.tgz";
      path = fetchurl {
        name = "path_parse___path_parse_1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.7.tgz";
        sha512 = "LDJzPVEEEPR+y48z93A0Ed0yXb8pAByGWo/k5YYdYgpY2/2EsOsksJrq7lOHxryrVOn1ejG6oAp8ahvOIQD8sw==";
      };
    }
    {
      name = "picocolors___picocolors_1.0.0.tgz";
      path = fetchurl {
        name = "picocolors___picocolors_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/picocolors/-/picocolors-1.0.0.tgz";
        sha512 = "1fygroTLlHu66zi26VoTDv8yRgm0Fccecssto+MhsZ0D/DGW2sm8E8AjW7NU5VVTRt5GxbeZ5qBuJr+HyLYkjQ==";
      };
    }
    {
      name = "postcss___postcss_8.4.17.tgz";
      path = fetchurl {
        name = "postcss___postcss_8.4.17.tgz";
        url  = "https://registry.yarnpkg.com/postcss/-/postcss-8.4.17.tgz";
        sha512 = "UNxNOLQydcOFi41yHNMcKRZ39NeXlr8AxGuZJsdub8vIb12fHzcq37DTU/QtbI6WLxNg2gF9Z+8qtRwTj1UI1Q==";
      };
    }
    {
      name = "resolve___resolve_1.22.1.tgz";
      path = fetchurl {
        name = "resolve___resolve_1.22.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve/-/resolve-1.22.1.tgz";
        sha512 = "nBpuuYuY5jFsli/JIs1oldw6fOQCBioohqWZg/2hiaOybXOft4lonv85uDOKXdf8rhyK159cxU5cDcK/NKk8zw==";
      };
    }
    {
      name = "rollup___rollup_2.78.1.tgz";
      path = fetchurl {
        name = "rollup___rollup_2.78.1.tgz";
        url  = "https://registry.yarnpkg.com/rollup/-/rollup-2.78.1.tgz";
        sha512 = "VeeCgtGi4P+o9hIg+xz4qQpRl6R401LWEXBmxYKOV4zlF82lyhgh2hTZnheFUbANE8l2A41F458iwj2vEYaXJg==";
      };
    }
    {
      name = "source_map_js___source_map_js_1.0.2.tgz";
      path = fetchurl {
        name = "source_map_js___source_map_js_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/source-map-js/-/source-map-js-1.0.2.tgz";
        sha512 = "R0XvVJ9WusLiqTCEiGCmICCMplcCkIwwR11mOSD9CR5u+IXYdiseeEuXCVAjS54zqwkLcPNnmU4OeJ6tUrWhDw==";
      };
    }
    {
      name = "source_map___source_map_0.6.1.tgz";
      path = fetchurl {
        name = "source_map___source_map_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
        sha512 = "UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==";
      };
    }
    {
      name = "sourcemap_codec___sourcemap_codec_1.4.8.tgz";
      path = fetchurl {
        name = "sourcemap_codec___sourcemap_codec_1.4.8.tgz";
        url  = "https://registry.yarnpkg.com/sourcemap-codec/-/sourcemap-codec-1.4.8.tgz";
        sha512 = "9NykojV5Uih4lgo5So5dtw+f0JgJX30KCNI8gwhz2J9A15wD0Ml6tjHKwf6fTSa6fAdVBdZeNOs9eJ71qCk8vA==";
      };
    }
    {
      name = "supports_preserve_symlinks_flag___supports_preserve_symlinks_flag_1.0.0.tgz";
      path = fetchurl {
        name = "supports_preserve_symlinks_flag___supports_preserve_symlinks_flag_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz";
        sha512 = "ot0WnXS9fgdkgIcePe6RHNk1WA8+muPa6cSjeR3V8K27q9BB1rTE3R1p7Hv0z1ZyAc8s6Vvv8DIyWf681MAt0w==";
      };
    }
    {
      name = "vite___vite_3.1.7.tgz";
      path = fetchurl {
        name = "vite___vite_3.1.7.tgz";
        url  = "https://registry.yarnpkg.com/vite/-/vite-3.1.7.tgz";
        sha512 = "5vCAmU4S8lyVdFCInu9M54f/g8qbOMakVw5xJ4pjoaDy5wgy9sLLZkGdSLN52dlsBqh0tBqxjaqqa8LgPqwRAA==";
      };
    }
    {
      name = "vue___vue_3.2.40.tgz";
      path = fetchurl {
        name = "vue___vue_3.2.40.tgz";
        url  = "https://registry.yarnpkg.com/vue/-/vue-3.2.40.tgz";
        sha512 = "1mGHulzUbl2Nk3pfvI5aXYYyJUs1nm4kyvuz38u4xlQkLUn1i2R7nDbI4TufECmY8v1qNBHYy62bCaM+3cHP2A==";
      };
    }
  ];
}
