[33mcommit 0c10a16e228d64f0da3c4549575205043b98152d[m[33m ([m[1;36mHEAD -> [m[1;32mmi22044[m[33m, [m[1;32mtest[m[33m)[m
Author: VukasinGit <vukasinradivojevic123@gmail.com>
Date:   Thu Oct 2 19:15:31 2025 +0200

    App test

[33mcommit ba591a784c86e5d1637495c7e785441abe31cd91[m[33m ([m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32mmain[m[33m)[m
Author: Marko Spasic <matf.marko.spasic@gmail.com>
Date:   Tue Jul 22 17:02:39 2025 +0200

    [STYLE] Setup, install, and use python-venv and libclang for style checking. (#32)

[33mcommit c41280ba6dd07e0aecf06352bf5213c6fd52e441[m
Author: Marko Spasic <matf.marko.spasic@gmail.com>
Date:   Sat Jul 19 16:03:02 2025 +0200

    [Style] Introduce identifier naming convention prebuild check. (#30)

[33mcommit 081fa1e66745c577492a97dd39b48a1307a83288[m
Author: Marko Spasic <matf.marko.spasic@gmail.com>
Date:   Mon Mar 24 08:36:39 2025 +0100

    [BUGFIX] Support GL_RGBA and GL_RED texture formats for skyboxes. (#22)

[33mcommit 946c442d16bae306b0bb4624cc47fefe674083c3[m
Author: Marko Spasic <matf.marko.spasic@gmail.com>
Date:   Sat Mar 8 16:43:25 2025 +0100

    [BUILD] Introduce a prebuild check phase to detect common coding mistakes. (#19)

[33mcommit 8224ca9a05221b8e3eb7fe49e08b9687ad1e7385[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Mon Mar 3 21:30:52 2025 +0100

    Update setup.sh script with missing packages for lubuntu and configure default cc/c++.

[33mcommit 84162c5a1cbc42b0e28bddbb3c42f627f1532e57[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Mon Feb 24 20:00:00 2025 +0100

    [STYLE] Namespace indentation and formatting exceptions.

[33mcommit ab7b217cb048f8afb82e794df1c013fb4f39bbf2[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Mon Feb 24 09:34:04 2025 +0100

    [STYLE] Reformat engine code.

[33mcommit 2936cd1c910e077ead5a4a3b661bcedb15a5d0d5[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue Feb 18 19:40:06 2025 +0100

    [STYLE] Update code style rules for clion and clang-format.

[33mcommit 80941c98b4c6d4575d44fb4aa97cba4852db1c3b[m
Author: Marko Spasic <matf.marko.spasic@gmail.com>
Date:   Sun Feb 16 13:42:49 2025 +0100

    [DOCS] Fix PROJECT-DESCRIPTION-TEMPLATE.md
    
    Move Bloom to group B.

[33mcommit 560228c5e5a070fc5a126d0531af6dd5a53b932e[m
Merge: 6972968 22ace5c
Author: Marko Spasic <matf.marko.spasic@gmail.com>
Date:   Sun Jan 26 14:42:55 2025 +0100

    Merge pull request #15 from matf-racunarska-grafika/engine/scroll
    
    Decouple scroll event from on_mouse_move to on_scroll

[33mcommit 22ace5cdc8542acfa658f5f0d3f2295d13d4dd24[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Sun Jan 26 14:33:38 2025 +0100

    Decouple scroll event from PlatformEventObserver::on_mouse_move to on_scroll.

[33mcommit 239b322632db356fa8daf75c4c109ed92470bcf9[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Sun Jan 26 14:30:20 2025 +0100

    [Bugfix] Reset MousePosition::Scroll before pollEvents in PlatformController

[33mcommit 6972968d5c6163e5e46f31fbcc2b73de1675d286[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Mon Jan 20 11:00:34 2025 +0100

    [DOCS] Update docs

[33mcommit 982dce0eda683cd8f218f204664e5c2153fcd32a[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Jan 15 20:03:05 2025 +0100

    Refactor Camera method names, enable UP, DOWN movements.

[33mcommit 95eb6ae186cd40ec01d17596ef19b35160486454[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Jan 15 16:15:25 2025 +0100

    Activate shader before draw by default

[33mcommit 79b06732f0523e76187841090f3f59a26124d934[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Jan 15 15:16:21 2025 +0100

    Remove gitkeeps

[33mcommit 0fc9a7d7a362ce8adf35c4974d36cfafe4e28026[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Jan 15 15:01:24 2025 +0100

    App structure

[33mcommit 9cdbb5d6bc495e7a60a70b8cbe0872dfbc84c08d[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Jan 15 14:09:54 2025 +0100

    Uniform resources loading logging.

[33mcommit 82a0e484dc44cb3c6ace444565acae82b92fd2f7[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Jan 15 13:57:17 2025 +0100

    Override name method.

[33mcommit 4b4eab122545423e3ae7f2fa7a3868d0567172bc[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Jan 15 13:48:01 2025 +0100

    Move the default PlatformEventObserver implementation from .cpp to .hpp

[33mcommit 3452d6e7383c4ffce4776024bf4b5f92396d9113[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Fri Jan 10 12:08:49 2025 +0100

    Add graphviz to setup.sh for doxygen graph

[33mcommit 8952a06ff450ae1b69ebdab6124ab0fb75c11530[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Fri Jan 10 12:04:33 2025 +0100

    Exclude engine/libs from doc generation

[33mcommit 65a54c22b73283cf1b17f083ec046d629233746f[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Fri Jan 10 11:35:47 2025 +0100

    Empty config.

[33mcommit 68261c37492ad8b706534580f2d6e8a2c6b39d7f[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Fri Jan 10 10:25:50 2025 +0100

    Add argc and argv to main

[33mcommit 0ed1e2d7ff1c30361c928b8c9dcf5c9e46fe4c6c[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Fri Jan 10 09:17:16 2025 +0100

    Move libraries to engine/libs

[33mcommit 257b0fd62436ea9fa94c03d9e85222765c3e0997[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Dec 18 15:11:22 2024 +0100

    Add missing doxygen comments for classes.

[33mcommit 68b00a0481925935fd76f17b47c12274e8fec192[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Dec 18 14:59:34 2024 +0100

    Add doxygen file descriptions.

[33mcommit a61c717f6f937fdbfeb49e5e70bcf1955f844a3e[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Dec 18 13:53:29 2024 +0100

    Use a self-referencing lambda instead of std::function for recursive calls within algorithms.

[33mcommit 628536dd5038019ef8a2dcda6337942646e5e02b[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Dec 18 13:42:55 2024 +0100

    Delete unused functions.

[33mcommit a29391b9a508ff8d139b2d1b913ec5eafab0913b[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed Dec 18 13:33:51 2024 +0100

    Add documentation for engine classes.

[33mcommit 45bb47fdafb25ebbfa8b36281e92e1fb449c7679[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 23:09:38 2024 +0100

    Docs cleanup.

[33mcommit b118ed54278e774c995e4a65cb4faf1a6d375cec[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 22:58:49 2024 +0100

    test/app tutorial.

[33mcommit f37601385145fb144f522187b99400f0ad5bee07[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 22:55:51 2024 +0100

    Doc writeup.

[33mcommit 837e9b88181737e440e73023ad5ab70025796c01[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 16:08:33 2024 +0100

    Wrap raw gl calls in the Shader class into CHECKED_GL_CALL macro.

[33mcommit 537c178a115eeb5762cf9583ce03e5cb0937781d[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 14:48:53 2024 +0100

    Rename Platform.cpp -> PlatformController.cpp and Graphics.cpp -> GraphicsController.cpp

[33mcommit 44e545203d5dc0b968afb6e1191d8ee85d395cbd[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 14:37:42 2024 +0100

    Remove ControllerManager and integrate Controller registration into the App class.

[33mcommit 36899ded85d6a06e8322f682285d728b418c9bd4[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 12:56:34 2024 +0100

    Remove unnecessary is_initialized/mark_initialize from Controller.hpp.

[33mcommit 92356b8643c801b27c6c78889136bc37308d5537[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 11:59:58 2024 +0100

    Secure terminate if PlatformController wasn't initialized.

[33mcommit 1366f4fb70d17982972143eb7e68616cf2c1c3b8[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 11:53:42 2024 +0100

    Move imgui init from PlatformController to GraphicsController.

[33mcommit 9df596acb2f657eb88cac2ff8e02d2d4980e42d1[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 17 05:13:34 2024 +0100

    Refactor topological_sort into a generic template util::alg function.

[33mcommit e73f0aa0996d1ca78127e9e50cc212956d12fa63[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 15 19:38:00 2024 +0100

    Refactor to make a clear distinction between engine_setup and app_setup.

[33mcommit a19d32263d7b69a8e52004ca92286c8cf73e90f8[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 15 19:32:04 2024 +0100

    Cleanup header files and delete Declarations.hpp

[33mcommit 41c753aba52c12c65a1d633a6f4b4682743abb32[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 14 18:41:53 2024 +0100

    Docs cleanup.

[33mcommit eb549e3b7399ffccd94766d13c347c8a44aae355[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 14 18:41:35 2024 +0100

    Introduce EngineControllersBegin and EngineControllersEnd.

[33mcommit bd52ee4848bd5a3ba3b3a0818a042cf66c9ca675[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 14 15:52:39 2024 +0100

    Rename MainApp -> TestApp

[33mcommit 2f4ca88416de452c6cc191bc0b9cf4960c419fac[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 14 15:21:45 2024 +0100

    Move engine/Engine.hpp -> engine/core/Engine.hpp.

[33mcommit 0eb410da1d96bc427e90431ece70b18cf4fd6317[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 14 14:25:36 2024 +0100

    Enable AssimpSceneProcessor future extension.

[33mcommit ab5c5cc383ff7042a82dc7086a5b9484d96490e9[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Fri Dec 13 23:21:01 2024 +0100

    Move cmake engine build to engine/ dir.

[33mcommit 7b33a283c893280c6258bb4eeb38e8ab08de871f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Fri Dec 13 23:15:28 2024 +0100

    Unify derived EngineErrors into a single EngineError with the type parameter.

[33mcommit 0815bdba4884f3d2157cc83f12dfce79ed5e4233[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 18:06:47 2024 +0100

    ShaderCompiler doc.

[33mcommit d02b9b06008ae4ef1a55f691af72b0e71c0c1e31[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 17:47:38 2024 +0100

    Remove redundant now_parsing function from the interface.

[33mcommit e7e5df2e403a01868ad90a228c08eb9797f28c8f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 17:44:42 2024 +0100

    ResourcesController doc.

[33mcommit 59512b9590ba93c132998ffb8b91bb6d1e48090b[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 17:21:59 2024 +0100

    Window class documentation and cleanup.

[33mcommit b71a8cf581ad51ddac6f8bac0fbf998a26ed650f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 17:11:26 2024 +0100

    Enable both perspective and orthographic projection matrix use.

[33mcommit 7055b7070d3dd214b759c04d4d155c0eebfa9ba7[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 16:15:12 2024 +0100

    Call event observer on mouse click.

[33mcommit 2dd5b6671bbaf7d6aad20ee55954885451928d9f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 16:03:12 2024 +0100

    Allow registering multiple PlatformEventObservers.

[33mcommit 4c54891ac1fba001d427466b876d56178dfd4958[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 15:59:19 2024 +0100

    PlatformController docs and reorganize.

[33mcommit 0f9f63651dac04f897e7c327a4e2f8e192da35f4[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 15:33:29 2024 +0100

    PlatformController docs and reorganize.

[33mcommit c6250132c1087f3d2177514bc3efafd3285da960[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 14:43:25 2024 +0100

    Add .gitignore rules for executables.

[33mcommit 6d236fd05eccbb090b5436d544b67963fd077503[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 14:34:17 2024 +0100

    Add README-TEMPLATE.md

[33mcommit 9abdc2eb2e763ae7980d19b61cbf3c62aae3f3f8[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 14:34:00 2024 +0100

    Create a basic app folder structure.

[33mcommit 42630748eb74e7997cb151606fd125ddd4d9183b[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 14:33:37 2024 +0100

    Remove created by header from all files.

[33mcommit 4c1024d43cc9d3b90983354b6e0cc85f0018d014[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 04:00:25 2024 +0100

    Add on window closing callback for PlatformController

[33mcommit 76af0eb3e3bb7afee92f7960893b8fbc81d88301[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 03:46:37 2024 +0100

    More descriptive info message if the resources/dir is not present.

[33mcommit 5d04cde92f7c1721747ec2b79547db6dbbb48194[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 03:28:51 2024 +0100

    Make a json standalone header only lib.

[33mcommit da34fc84bc23ad8afdce99cf13b0b73ead2b5dd4[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 03:20:53 2024 +0100

    Match the project name with the repo name.

[33mcommit 84ec156beaa3bd7afd58580f7663f2342fdc6967[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 03:20:37 2024 +0100

    Remove redundant files.

[33mcommit f0c7887e707544b6e6509e848da3f0a9a9b6ae57[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 02:47:24 2024 +0100

    Git ignore for test-app

[33mcommit ab0a21b8d50c841b22f9e888ccfb3e4c85c8295b[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 02:41:06 2024 +0100

    Rename namespace app -> engine::test::app

[33mcommit 635ab61415ef1816aaced2d2a7de05e465160a78[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 02:36:11 2024 +0100

    Moved resources/ and config.json to engine/test/app

[33mcommit ca1061c86f21ac8f3fdf2a6dcfa488ef7dd6a6a2[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 02:31:47 2024 +0100

    Make json a cmake header only library.

[33mcommit 5a8345ce7569850285f1e3d44dd77f7997c0e946[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 10 02:26:27 2024 +0100

    Move the testing application into `engine/test/app` as a standalone project that links the engine.

[33mcommit aa637deda652a2934285c733617aea8d1b79399e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 23:11:50 2024 +0100

    Docs and style update.

[33mcommit afa2c953d3a67099b4955d34d4112dc3d5829724[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 22:46:10 2024 +0100

    Docs for OpenGL::call

[33mcommit ead3d8723fbd8f9b5a6c808d50e91d0752a6b4e1[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 22:42:06 2024 +0100

    Add a CHECKED_GL_CALL for an error checked opengl call.

[33mcommit 5d1b17a92f2525c84b289aeb48a8e6490b31b939[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 22:01:23 2024 +0100

    Add OpenGL docs.

[33mcommit 492e62e11e502c7ee0f6bfc3d00a827ef4b5ea13[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 21:53:25 2024 +0100

    Rename OpenGL call to init_skybox_cube

[33mcommit ff7fb575f137c5dc59fa422706998545e28fa304[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 21:53:06 2024 +0100

    Add doc for graphics controller.

[33mcommit 7f141a8907cecee9742ccad8422c60e1f19b349f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 21:52:53 2024 +0100

    Add doc for Controller.

[33mcommit c91b13eb9d1e30fb47fa5f35df912510dec92c8f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 21:52:20 2024 +0100

    Refactor OpenGL shader compiling.

[33mcommit 4041bbbbde3c5e1b3d9181f4f7ac5cd694357607[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 21:02:27 2024 +0100

    Implement keyid mapping to string.

[33mcommit aac9cfe1f706af607d19b8414999c3a1b322dce6[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 20:41:28 2024 +0100

    Rename rg->engine directory and namespace.

[33mcommit 5f349729e9dd4b3c3245103b5f1bb33ce71a38d6[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 20:37:52 2024 +0100

    Refactor user code into include/src and move it into app namespace.

[33mcommit b8488a2542792c6756324fc87cc9333237de7da2[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 20:01:45 2024 +0100

    Move to begin/end frame.

[33mcommit 46d99145aaa8548f975b33b411076aeeec8ee58a[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 19:55:18 2024 +0100

    Add support for begin/end draw for finer draw managing in controllers.

[33mcommit 78b70b6d95c569ec0aa82a5d437d97a94cf4ea4a[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 18:53:36 2024 +0100

    Remove imgui show demo.

[33mcommit 62fbbc3e94514e6848e64971d567e0ba5f2cc368[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 9 18:45:45 2024 +0100

    Make engine into a library and separate internal/public libraries.

[33mcommit 543f9b7d06a6836f70288c67c1a54e026bb72ae0[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 19:31:42 2024 +0100

    Key functions rename.

[33mcommit 10eed0a1b2a99d26cb29f13f6da1bc844b69f93d[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 19:31:19 2024 +0100

    Add default argument option to ArgParser.

[33mcommit 7121aee5b94fa31340097df48150530121436561[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 16:27:25 2024 +0100

    Move app to core.

[33mcommit b1786c059037bd92827cf5ae1f025c5a653ca3da[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 16:27:10 2024 +0100

    Better model loading log message.

[33mcommit b671f31a9e0807b874e8577daf2e25ae66dfdf7c[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 16:26:45 2024 +0100

    Add the event observer.

[33mcommit 8db62c827220528c24b3e8ca4512f857a18bbac5[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 16:26:15 2024 +0100

    Add DOC.md

[33mcommit 8be3e30c6abefa16f145dcf0ed388f43ac3e74aa[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 00:29:36 2024 +0100

    Add README-TEMPLATE.md.

[33mcommit 0407621fc11261b569303031f7c5c39f93aeaaf7[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 8 00:04:55 2024 +0100

    Rename init_texture to generate_texture.

[33mcommit edb3c57dab359332140ea1fcb7dd2c082021e9e7[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 23:56:27 2024 +0100

    Rename get_view_matrix to view_matrix.

[33mcommit 06043ea02aceb1bef933f31a14807a4514efaba2[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 23:55:54 2024 +0100

    Add comments to the Camera class.

[33mcommit d7b4fe01445dbbf33d909847ecca6b3340b45334[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 23:46:46 2024 +0100

    ControllerManager::register_controller returns the original instance of the controller if it is registered more the once.

[33mcommit 88c9660b6071369c7d5690465f8bdc6c1a718b58[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 23:37:06 2024 +0100

    Move camera properties into Camera class.

[33mcommit f9e7ec650d686ffed62bec8f9eca209c94df2ac7[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 23:08:16 2024 +0100

    Remove topological_sort utils from the ControllerManager private interface.

[33mcommit 5b8ed1ca78c7c92bfb862dc0829649c469bf04ce[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 22:58:35 2024 +0100

    Add controller docs.

[33mcommit 4b01ca044dccb5b3d3af08eb37d8aff457f4da15[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 22:37:53 2024 +0100

    Move skybox drawing to GraphicsController.

[33mcommit 4e0960d1881c4c0c143429e26aee48cf8d4600bc[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 22:37:14 2024 +0100

    Ensure that ControllerManager::get works only for registered controllers.

[33mcommit efceb08e4d61ae58bfe65b963a9f6cf737c6f53b[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 16:08:53 2024 +0100

    Move OpenGL init and gui drawing into the GraphicsController

[33mcommit 1423ccdd84c15aa7b37a5c0fed7e3114156b18cc[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 15:50:48 2024 +0100

    refactor resources directory into a namespace

[33mcommit 27a1f642a35aefd3b63b7ed09847c958e165441c[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 15:39:54 2024 +0100

    Refactor utils directory to namespace

[33mcommit a7b4d6b26598b8ec3e6e25f17ce58219826520ac[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 13:11:23 2024 +0100

    organize platform header files and namespace

[33mcommit 5a4effff0c7e63735639e5cbd482f5e276c0dfa5[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 13:06:07 2024 +0100

    platform and graphics rename.

[33mcommit 33a8ca7e029bb62713106e68f45804081fcadd55[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 12:44:09 2024 +0100

    Rename base header files folder engine -> rg to match the namespace name.

[33mcommit 2e697cfe1e2869b576d54e177900d47891ca51b7[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 12:33:15 2024 +0100

    Move all classes in the controller include directory to controller namespace.

[33mcommit 0d0b286479bc2193ed3b78d7e1569f26911ac51d[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 11:57:02 2024 +0100

    Add support to enable/disable controllers.

[33mcommit f30dd767dcd1967e02a3a4c36cdee0156975d7ce[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 11:56:23 2024 +0100

    App.hpp docs.

[33mcommit cf15983f9b13ff8a4716fc0397ede4295de44922[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 10:38:25 2024 +0100

    Move main to App.cpp.

[33mcommit 567b2ba9a4e915f5bdb4e2f024f22ed9a5c0eb25[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 10:33:36 2024 +0100

    Add name, path, and source attributes to Shader class.

[33mcommit 10abb2557bd6be7e76795634158bdc8b43561c76[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Dec 7 10:29:29 2024 +0100

    clang-tidy cleanup.

[33mcommit 5f7113f1b5ceed112e66d3832a20aac5866ed8e5[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 03:44:42 2024 +0100

    clang-tidy cleanup.

[33mcommit 740dfa642630f4bc9a75abf3cca39bf43fe4b424[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 03:33:17 2024 +0100

    Use Mesh ctor instead of create.

[33mcommit bf48fed95140d41cc085a900242ef69aebb3e646[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 03:01:56 2024 +0100

    Simplify Error handling.

[33mcommit 28bdcbe8198060b229308a917448b70bc66158ee[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:46:49 2024 +0100

    Remove redundant rg:: qualifiers.

[33mcommit e81b598dc435ee2008a520fa2969a5e52b349191[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:45:13 2024 +0100

    PlatformEventObserver::on_window_resize

[33mcommit 356d7457032ca6ed374b113f4522491940b14cdf[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:41:53 2024 +0100

    Texture.cpp and Skybox.cpp cleanup.

[33mcommit f68382d52cd80b7c1f3aebb366babd6cb03af780[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:41:39 2024 +0100

    Descriptive naming for topological_sort

[33mcommit ee34df50ed20dd21a4f15d78058c07906eef9159[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:33:36 2024 +0100

    Always use <> for includes.

[33mcommit fb8b5fcbaffe8b814d651d4f66592656959b04a0[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:33:09 2024 +0100

    Move code for compiling shaders to ShaderCompiler.hpp/cpp

[33mcommit 9814112cf27c0efe3d3734b7bed4c87f46b2dd93[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:05:43 2024 +0100

    Throw AssetLoadingError if the skybox texture fails to load.

[33mcommit b52ce8b7c22af2f24283c53a2258f3d59b2478ad[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:05:11 2024 +0100

    Make overriding Controller::name optional by providing typeid(*this).name().

[33mcommit ccf2598901beaa31f03f56c0f27dcebac8f6e19e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Thu Dec 5 02:04:18 2024 +0100

    Better error message for RG_GUARANTEE

[33mcommit 36f73c547e0daeb5b24d6636bc5194fbd3574b3e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 19:06:07 2024 +0100

    Eliminate App virtual methods, switch to using MainController as a way to execute the application.

[33mcommit 4a17d7d61637c0f39526fad705edcf0e511b72e6[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 18:28:54 2024 +0100

    Eliminate begin_frame and end_frame.

[33mcommit 4d282013df345e9afb9ce21978d06e75ed182b88[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 00:53:40 2024 +0100

    Log when ArgParser and Configuration are initialized.

[33mcommit 8a73694b7a93e799ae9883f62ba87ef119f34f6b[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 00:53:32 2024 +0100

    Log when ArgParser and Configuration are initialized.

[33mcommit 87c41c17b74d9c19a10b356d724b58340510f4b2[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 00:49:46 2024 +0100

    Descriptive controller order message upon initialization.

[33mcommit 22c0adec58857230437d8648b8a2b7f6add98283[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 00:38:40 2024 +0100

    Better controller::get error message.

[33mcommit 03787c92f026623818871a5d715db871335f4985[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 00:25:46 2024 +0100

    Simplify controller access via rg::controller<TController>()

[33mcommit d2ee0afb4141c634437f5b96b03b10e1fb96fd9e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Wed Dec 4 00:01:05 2024 +0100

    Add on_exit and setup to the Engine, and make App::run a template-method design pattern.

[33mcommit a876983bbbbecebc73c5606ff72414a9ca59e703[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 22:43:07 2024 +0100

    Add doxygen config.

[33mcommit 1b4c4c5215a572a4a69c63fe0767868b55c2ffd4[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 22:42:19 2024 +0100

    Eliminate static create method for controllers

[33mcommit ca6e695f2a88d87c94ac5ad4987b63376e8e44b1[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 22:41:57 2024 +0100

    Move shader compilation methods to OpenGL

[33mcommit 680f3fea0d6a005a4fda3d3a8770eedfb9a8f08b[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 20:15:33 2024 +0100

    Move Camera, App, and Engine to core.

[33mcommit 65577b8dc2ed7aa1e54bf025f753bacaf6213688[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 20:06:43 2024 +0100

    Move json to a lib.

[33mcommit 6d3db883605b9feb4a5d93ff9e6b7b1094094b8a[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 19:39:40 2024 +0100

    Simplify camera update and gui.

[33mcommit e8b0e655ba395c056a0d00a9af94aa760b588fd2[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 19:39:30 2024 +0100

    Simplify mouse access and update.

[33mcommit fcd938589cd5fc3a5b6511fe3f8c64890088393e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 19:39:17 2024 +0100

    Add ImGUI lib.

[33mcommit e96c9b3ae0082d84d62f1775a86bcf613670b2b6[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 18:07:26 2024 +0100

    Platform and resources overhaul.

[33mcommit a2f0bbef1b1f8f3a3f3b8b9506006cd0e67b943c[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 13:17:13 2024 +0100

    Unify Resources access

[33mcommit 5dcf2bba395686b5fe0de8c1207c261ec804c605[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 13:16:58 2024 +0100

    Remove redundant tracing

[33mcommit ba158ab4b4214a7dba75ddaada0f5b9847e633c8[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 13:15:58 2024 +0100

    Add is_initialized check and remove before_loop

[33mcommit e21aa66221ad57eeb9252846fc5169ee9347f950[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 13:14:05 2024 +0100

    CMake outputs executable to root to simplify resources access.

[33mcommit c6a499720e2e58a0cd4714ae304fb4b36301ef08[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 10:19:34 2024 +0100

    Move glad init to OpenGL

[33mcommit 1acac9dadcfe9efc6820b07322664389adcc0d69[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Tue Dec 3 01:06:46 2024 +0100

    Add Skybox resource.

[33mcommit 26d8f992386e30709146de9ddcd8e71bd7a5fbcb[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 22:56:42 2024 +0100

    ResourcesController.cpp eliminate ModelData, TextureData, make resource loading uniform

[33mcommit f3f45d96582877b82a36952a421bb067d741cd6f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 22:17:22 2024 +0100

    reformat

[33mcommit ff364d1240d210bfeb19286e2cf1a6818eaed2bc[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 22:17:11 2024 +0100

    Config create_default should return json

[33mcommit d98676ab330251afd4c7455ddd44e7c3118fe2ce[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 22:16:44 2024 +0100

    reformat

[33mcommit 01077f6fd1bed08f3041386c42041db8ff90321d[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 22:16:35 2024 +0100

    load_models during ResourcesController::initialization

[33mcommit 39c8618b8882aa70bd36438b06d50c5885045093[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 22:15:55 2024 +0100

    assets -> resources

[33mcommit 662486f1c6c9d8c2164e2ef8bd8ac8bb8693ef80[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 22:00:47 2024 +0100

    rename render -> resources

[33mcommit a5e9df2b48688bb03a8bd4d2f81cabdda0c5efdc[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 21:59:01 2024 +0100

    Add backpack model.

[33mcommit 77483b1b9a72f72a0d441af1ab79b2136924da3e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 20:13:50 2024 +0100

    AssetsController to ResourcesController renaming.

[33mcommit 89eb571c359f6787f948412a647696ae1c665d76[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 20:10:35 2024 +0100

    Make sure controllers can't be registered after ControllerManager::initialize.

[33mcommit 25bea9b1ee16554b49be4f5d4d1f94f6a96fc8aa[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 19:38:22 2024 +0100

    Make top_sort and utils a part of ControllerManager.

[33mcommit efd17b049c9e360538d3ace88344d2f644bc2277[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 19:38:07 2024 +0100

    Print method first then file when tracing.

[33mcommit b22f213eaa0ed408df86120294c0e83477b01613[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 19:30:19 2024 +0100

    Formating and style.

[33mcommit 7d65a621dce058fa627d4a2426adeee4bac18dbc[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 19:12:01 2024 +0100

    Shader compilation startswith convention to //#shader name to enable plugin coloring.

[33mcommit c5708e4217c4ec5175e0001b0a1e4291a3cf5760[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 18:54:19 2024 +0100

    Hard error on Shader compilation.

[33mcommit efbd2499c5759bb4bfe9d05997f9ccea521b398c[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 18:44:26 2024 +0100

    Move shaders to resources/shaders by default.

[33mcommit 6f045b078b971a1f026fbbea442d5d699b14f875[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 18:37:00 2024 +0100

    Code reformat.

[33mcommit df6a8d27c19a90123aaa593d3ab43038ca71afdb[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 18:30:11 2024 +0100

    AssetsController -> ResourcesController

[33mcommit 35d9856e589daac012f8a8101863bef73c874fbd[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 18:28:41 2024 +0100

    Organize implementations.

[33mcommit 110a1a418852691b2c1da6d2e72a33fcd73c4f4f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:42:50 2024 +0100

    Refactor Window Impl.

[33mcommit 294673843077e043535fa2da3d390f89c3b306d2[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:24:33 2024 +0100

    Reformat code.

[33mcommit ddb4963ce4cbcbaa85076a6bf5684f40bc2643f3[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:22:56 2024 +0100

    [Example]: Add skybox support

[33mcommit e1de5732363828c68394a3ce06cb73ba8861189b[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:22:07 2024 +0100

    Add AppStateController to main

[33mcommit 4cb53f7afef9d494d4f9a9e17ca94a67d0e945ba[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:21:02 2024 +0100

    Change shaders directory to resources

[33mcommit f67387455dd7bc95921c9dae5334f55d745b3828[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:20:44 2024 +0100

    OpenGLRenderer instance

[33mcommit b9a636892efdbd0fe0648f29a478b1fc167be5d9[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:20:04 2024 +0100

    Add tracing.

[33mcommit 18fc1896b34544cf82872e123f42aa72865e0231[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:19:55 2024 +0100

    Fix controller schedule.

[33mcommit 9adfd3d5c61ba575e65e2326d6c9fb183704eb51[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:19:41 2024 +0100

    Add support needed for skybox.

[33mcommit 5181af44269efd833fd1ba6cea922f4604263de3[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 17:13:57 2024 +0100

    Create AppStateController that holds all the state

[33mcommit d381ef8da19f969ced9e88d18d9b9591e6863ebe[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Mon Dec 2 12:15:09 2024 +0100

    Style and format convention.

[33mcommit 8b96c574e94fa780d84fbaafd732d4b95849330e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 18:24:23 2024 +0100

    Renderer impl.

[33mcommit dd7982a1180f881a07fbc3002d235d7700da18da[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 15:16:41 2024 +0100

    Inline App core methods and simplify headers.

[33mcommit 12fb9c62adcd18bd0adb2e5649cd1459ffddcd09[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 14:35:22 2024 +0100

    make rg-engine part of the whole project and not linkable library

[33mcommit ae00d30a1058f9c6fdc5ab40cfd55411a2b37391[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 14:03:34 2024 +0100

    Rename renderer draw -> end_frame

[33mcommit 3d3849cad5e3a6bcf66d73f4f7e0bd00d8ee1f6f[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 14:00:21 2024 +0100

    Add debian-based distro setup script.

[33mcommit 4bc3f2ba294733c51886873306510a42bde66648[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:53:38 2024 +0100

    init platform hints and terminate

[33mcommit 9250d651662ee63a6fa3e8cc72b037df3a5d1209[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:52:30 2024 +0100

    simplify ControllerManager access

[33mcommit 7e4fbe9c5ba25935f8365436cc2b21f2b75df912[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:07:44 2024 +0100

    poll_events and draw overload calls

[33mcommit db7406e44eac83d29ce6dcf610ff077f40e2dee8[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:07:13 2024 +0100

    AssetsController.cpp cleanup

[33mcommit a5f21fb97c3deaab8cd56896f36b00fc3bc29e45[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:06:57 2024 +0100

    main cleanup

[33mcommit 4a352036e0f2ce43effd730c75c3facc7a58a78e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:06:44 2024 +0100

    Add Renderer to PlatformController

[33mcommit e05406cc19686d33905fefbd3358b6623fc3731c[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:05:31 2024 +0100

    Impl_GLFW3_OpenGL.cpp cleanup

[33mcommit 40f951a5a618f396ec5da23ff394f8cb17a1f6ea[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:04:25 2024 +0100

    Support PlatformEventObserver callback on platform events.

[33mcommit ae6e7aacc86ad7789225f64f2711f11babd37b79[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:02:19 2024 +0100

    Implement mesh draw.

[33mcommit 62f6b57e27c0478aa8f40040790c05ae1caf8d9d[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 13:00:04 2024 +0100

    Add set_ overload methods in for uniform variables.

[33mcommit 779934ecee9e046b5818213c825d5c5038325ff8[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 12:58:52 2024 +0100

    Add Texture type as a field for uniform sampler naming convention.

[33mcommit daf685fd1015585da688dfa49b7ba46c887622a6[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 12:56:01 2024 +0100

    Entity controller draw override.

[33mcommit bf42bbc50c0723b0c3ef6e3f583644e74b061c5e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 12:55:03 2024 +0100

    Add basic.glsl shader.

[33mcommit a377c853e4a919f2e1ef73b25036da46143f0fe2[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 12:54:46 2024 +0100

    header cleanup.

[33mcommit 5e364c13d6017e2505144cc4c10082f27e108606[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 12:53:41 2024 +0100

    poll_events definition before update.

[33mcommit c248994298881777ad385ad7b79beabc92c6c6bf[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 12:52:51 2024 +0100

    Header cleanup.

[33mcommit f58c0870ee3e41346d1ba2c67d44d76b36cbd855[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sun Dec 1 12:52:33 2024 +0100

    Camera naming convention correction.

[33mcommit 8b1d16dbacc07bd1810f69aa57927b200e2209e4[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Nov 30 23:21:39 2024 +0100

    Uniform mouse and keyboard glfw handling.

[33mcommit a145e2cd8671c44a5b9cd6985c0226df235d3bd8[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Nov 30 22:23:59 2024 +0100

    Support Controller::draw.

[33mcommit 49a87fb3ad02d0295631e2d43db1da40e8d123f9[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Nov 30 21:55:21 2024 +0100

    Support reacting to platform input events.

[33mcommit ebcb0812e1a13efcf26d2b4ee411d82ab895884a[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Nov 30 21:55:01 2024 +0100

    Add basic camera implementation.

[33mcommit 515c3a8a52d73648fec376c4df1341af02fbe361[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Nov 30 20:19:13 2024 +0100

    Introduce default config creation and paths.

[33mcommit e2ecabda0d210a3b6118b7a8665f1e2f43e636dd[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Thu Nov 28 21:13:32 2024 +0100

    Make assimp a shallow submodule

[33mcommit 3ea2b5cebce38b2510502113ef3765756d98fc06[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue Nov 5 23:53:54 2024 +0100

    [WIP] drawing impl for OpenGL platform.

[33mcommit 1248315166458702a821d3ff1c93be0a379daeb0[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue Nov 5 23:53:26 2024 +0100

    Add asset loading.

[33mcommit 25e970f087ad82dd84cc78b8a3363d98b0654f4a[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue Nov 5 23:52:49 2024 +0100

    [ECS] add entity drawing.

[33mcommit 2113e3abbba8cd168ed796b70ae17a8d50a4335d[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue Nov 5 23:51:14 2024 +0100

    Allow extracting individual components from an entity.

[33mcommit 3e3856ff3090ecc0a4e387d0d0e937d77c3908c2[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue Nov 5 23:50:24 2024 +0100

    Add drawable element to decouple shader use from an object.

[33mcommit 36506befd9e79563a57a9ac2e4d363f1d51bdb0e[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue Nov 5 23:46:35 2024 +0100

    Add stb lib.

[33mcommit 50d14c737e04ded973a970c3bd2897e8d974f061[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 14:10:12 2024 +0100

    Add simple entity example.

[33mcommit 6f09ecc188258b1445b455d52223a85e613a1a41[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 14:09:46 2024 +0100

    Fix has_component template for multiple components use-case.

[33mcommit 15bcc7d44e7013c12a0b932b009fba93c0feae9b[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:38:07 2024 +0100

    Introduce EngineControllerSentinel that enables user to register controllers that execute after all the engine controllers.

[33mcommit 02838a5cb93b9df19f08615a1663212e43ad2f99[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:36:53 2024 +0100

    Add AssetsController for loading, caching and providing assets.

[33mcommit 0a114db2724757a0110218f1a9b521a9d2802555[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:36:05 2024 +0100

    Empty .cpp files cleanup.

[33mcommit 49c37eaf84fe165df0126829b03142384b89f3a2[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:33:41 2024 +0100

    Never sort imports because some of the platform headers are order sensitive.

[33mcommit e79daa861265093722449af9489cb6a2d8097142[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:33:11 2024 +0100

    Add assimp submodule.

[33mcommit 8a1c56fe50d01fa35f84b49f64f81fca6a67ba46[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:31:04 2024 +0100

    Add base classes for the renderer system.

[33mcommit 0947af8a11967ef7a63b76d2a1999d6cc53c5ac0[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:29:40 2024 +0100

    Add base EntityComponentSystem classes.

[33mcommit 8148370ef1ff296510b6499a75c2d058e6c9128c[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:26:30 2024 +0100

    Add ShaderController for loading, parsing and compiling shaders.

[33mcommit dbb6ae6307d7431df5d322245442b746aa4a421e[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:15:26 2024 +0100

    Add after_initialize phase so the app and engine can do work after all the controllers are initialized but before the rendering loop begins.

[33mcommit 2ce710591600149afa642d383c2abf8deb74fb3a[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:10:12 2024 +0100

    Add assimp library for asset loading.

[33mcommit 4ea0f03142297eec6b762b5a0a31a557af73cb97[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 13:09:18 2024 +0100

    Add glm as a header only library.

[33mcommit 27fdf34178a28f5ecea0ea350787aca18fca441c[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 12:18:07 2024 +0100

    Range macro for shorter <algorithm> calling syntax.

[33mcommit 9abe300d72fd8f2f23e37cd5fa2867b03debd5c2[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Mon Nov 4 12:17:20 2024 +0100

    Introduce util template once that calls the given function only the first time when it was called.

[33mcommit b99380c5bcae5a9f70d5831f113e66be71fe89c5[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Sun Nov 3 22:35:49 2024 +0100

    Add assimp submodule.

[33mcommit b70cc66e97d09e4f1c2430396a385c81335230d9[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Sat Nov 2 22:57:37 2024 +0100

    Add support for compiling shaders from file and source in OpenGL.

[33mcommit fce9e60f3f0827bb6e300eb63772a6665e3e9da3[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Sat Nov 2 22:28:14 2024 +0100

    Add read_file util function.

[33mcommit 154977ae241d1ce6b340051565d25cc10cca4776[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Sat Nov 2 22:27:53 2024 +0100

    Add defer and overloaded helper functions.

[33mcommit 33145be815517e1509ba53e02aa88d4d4cb17902[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Sat Nov 2 15:06:15 2024 +0100

    Introduce platform, controller, util, ecs, and rendering modules.

[33mcommit 275c916f3fa51653c0ce859cde633c152053d327[m
Author: mspasic <marko.spasic@oracle.com>
Date:   Sat Nov 2 14:16:42 2024 +0100

    Add support for creating dependencies between controllers.

[33mcommit c759027440552021d8843f2be0b54c9cf846d3de[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Sun Oct 27 23:03:43 2024 +0100

    Add asserts to guarantee that the controller is registered only once, and that it can be retrieved from the ControllerManager only if it is registered.

[33mcommit 49cda4840d17606ad91aabfd62ef11dc9dae3986[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Sun Oct 27 23:02:34 2024 +0100

    Move to macro use for rg::guarantee, rg::should_not_reach_here, and rg::unimplemented to avoid string allocations in every assert.

[33mcommit 17af657ae3c74bd7e87d8d586d581323107d4c8e[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Sat Oct 26 11:21:18 2024 +0200

    Change dependency to nlohmann/json to single header only lib.

[33mcommit 4237fdbebf36d6c408e37ba447bfb6fb2ba6751e[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Sat Oct 26 11:19:16 2024 +0200

    Change dependency to nlohmann/json to single header only lib.

[33mcommit b6a76c0952d2a643ba4ef1cbc8140b41e11fe0f2[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Mon May 27 08:53:35 2024 +0200

    Enable engine Configuration via config.json file (#9)
    
    Enable engine Configuration via external config.json file.

[33mcommit 53fac808ce1a9ad694a34afef50b14828cccf605[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Fri May 24 14:35:37 2024 +0200

    Ignore libs in repo languauge stats.

[33mcommit 1114a60f74032cef09c8bad8a941d63473135c3c[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Thu May 23 11:19:52 2024 +0200

    Remove g_glfw_to_engine_key mapping as it is not needed.

[33mcommit 933f3783a16b8c730421c653de27977e15db1dab[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Mon May 20 14:06:39 2024 +0200

    Move core engine classes to core[.hpp|.cpp]. (#8)

[33mcommit 8a762c68c56d5374864c43f5127817982b4008c9[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Sun May 19 13:58:15 2024 +0200

    Platform layer and services. (#4)
    
    Controllers and Platform layer.

[33mcommit 77f6406815a1a0229f4a2b4454954568ce5aa496[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Sun May 19 12:03:34 2024 +0200

    Introduce EngineError for code path guarantees. (#3)
    
    Introduce EngineError and exceptions for critical error handling.

[33mcommit 5683ff8154f8a445ee29dafc7a385f09eda27a38[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Wed May 15 16:40:31 2024 +0200

    Add Clang instalation instructions.

[33mcommit 747f9c8bf5e50b3648822eed66c68b9552c63c0a[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Tue May 14 19:25:39 2024 +0200

    Code style configuration files for clang-format and clion.

[33mcommit f1471f2b4969e25724af204c85229911f0f28073[m
Author: spaske00 <spaskeasm@gmail.com>
Date:   Wed May 8 17:54:51 2024 +0200

    Create a lib out of engine that is linked with the main program.

[33mcommit ddfcd5b90dcdd42c6255d7e049bc70d49c647dee[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Fri Apr 26 13:42:29 2024 +0200

    Introduce engine base class App. (#1)
    
    * Create engine entry point base class: App.

[33mcommit eca2ac53e92787592eed32a35c92eb93263ece34[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Apr 20 21:21:52 2024 +0200

    Simple glfw and opengl test.

[33mcommit ca508fcdce7fc014d9ee44177d8ba719121ea933[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Apr 20 21:21:37 2024 +0200

    Add support for OpenGL.

[33mcommit 1aeece473c67e12f150ce75c1062a8a5786f694d[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Apr 20 20:56:26 2024 +0200

    Add support for GLFW library.

[33mcommit bfb33944478606b6831f79a46c1ac7d89fc898a7[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Apr 20 20:42:33 2024 +0200

    Add spdlog as an external library.

[33mcommit ddffff128150d953ba5208eaa047ac19408142bc[m
Author: Ivan Ristović <contact@ristovic.net>
Date:   Wed May 8 17:11:52 2024 +0200

    Submoduli za biblioteke (#2)
    
    Switch to git modules for libs.

[33mcommit ded3acd1f1d8c99694b746d2fedd00e96b00792e[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Apr 20 20:32:05 2024 +0200

    Initial CMakeLists.txt and main.cpp.

[33mcommit 44eb3f51898ba8e556ba2bdbc20bc4d8e75b10f6[m
Author: spaske00 <matf.marko.spasic@gmail.com>
Date:   Sat Apr 20 20:31:26 2024 +0200

    Update .gitignore with additional rules for cmake and clion.

[33mcommit 565812ae3dbc18d83562fdaf663bf72d24049c9e[m
Author: Marko Spasic <spaskeasm@gmail.com>
Date:   Sat Apr 20 20:27:20 2024 +0200

    Initial commit
