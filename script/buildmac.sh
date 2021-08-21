export MACOSX_DEPLOYMENT_TARGET=10.1
export NEXT_ROOT=/Developer/SDKs/MacOSX10.1.5.sdk/
./replace __ZNSs6assignEPKcm __ZNSs6assi6nEPKcm src/cmd/ai/firekeyboard.o src/cmd/ai/firekeyboard.o
./replace __ZNSs6assignEPKcm __ZNSs6assi7nEPKcm src/cmd/planet.o src/cmd/planet.o
./replace _inflate _iNflate src/pk3.o src/pk3.o
./replace _uncompress _uNcompress libnetlowlevel.a libnetlowlevel.a
ranlib libnetlowlevel.a
#g++  -Xlinker -Y -Xlinker 16384 -Xlinker -force_flat_namespace  -Xlinker -multiply_defined -Xlinker warning   -O2 -I/Developer/SDKs/MacOSX10.2.8sdk/System/Library/Frameworks/Carbon.framework/Libraries/CIncludes -pipe  -falign-loops=2 -falign-jumps=2 -falign-functions=2  -I/sw/include/SDL -D_THREAD_SAFE -D_REENTRANT -pipe   -o vegastrike-engine
g++  -O2 -I/Developer/SDKs/MacOSX10.2.8sdk/System/Library/Frameworks/Carbon.framework/Libraries/CIncludes -pipe  -falign-loops=2 -falign-jumps=2 -falign-functions=2  -I/sw/include/SDL -D_THREAD_SAFE -D_REENTRANT -pipe   -o vegastrike-engine  boost/1_28/src/*.o boost/1_28/src/converter/*.o boost/1_28/src/object/*.o src/cmd/ai/aggressive.o src/cmd/ai/comm_ai.o src/cmd/ai/communication_xml.o src/cmd/ai/communication.o src/cmd/ai/docking.o src/cmd/ai/event_xml.o src/cmd/ai/fire.o src/cmd/ai/fireall.o src/cmd/ai/flybywire.o src/cmd/ai/hard_coded_scripts.o src/cmd/ai/ikarus.o src/cmd/ai/missionscript.o src/cmd/ai/navigation.o src/cmd/ai/order_comm.o src/cmd/ai/order.o src/cmd/ai/script.o src/cmd/ai/tactics.o src/cmd/ai/turretai.o src/cmd/ai/warpto.o src/cmd/alphacurve.o src/cmd/asteroid_generic.o src/cmd/beam_generic.o src/cmd/bolt_generic.o src/cmd/building_generic.o src/cmd/collection.o src/cmd/collide_map.o src/cmd/collide.o src/cmd/container.o src/cmd/csv.o src/cmd/faction_xml.o src/cmd/missile_generic.o src/cmd/mount.o src/cmd/nebula_generic.o src/cmd/planet_generic.o src/cmd/role_bitmask.o src/cmd/unit_bsp.o src/cmd/unit_collide.o src/cmd/unit_const_cache.o src/cmd/unit_csv.o src/cmd/unit_factory_generic.o src/cmd/unit_functions_generic.o src/cmd/unit_generic.o src/cmd/fg_util.o src/cmd/pilot.o src/cmd/unit_util_generic.o src/cmd/unit_xml.o src/cmd/weapon_xml.o src/cmd/collide/box.o src/cmd/collide/matrix3.o src/cmd/collide/pbuild.o src/cmd/collide/peigen.o src/cmd/collide/prapid.o src/cmd/collide/vector3.o src/networking/inet_file.o src/networking/inet.o src/python/init.o src/python/python_compile.o src/python/unit_exports.o src/python/unit_exports1.o src/python/unit_exports2.o src/python/unit_exports3.o src/python/unit_method_defs.o src/python/unit_wrapper.o src/python/universe_util_export.o src/configxml.o src/easydom.o src/endianness.o src/macosx_math.o src/faction_generic.o src/faction_util_generic.o src/galaxy_gen.o src/galaxy_xml.o src/galaxy.o src/hashtable.o src/lin_time.o src/load_mission.o src/pk3.o src/posh.o src/savegame.o src/star_system_generic.o src/star_system_xml.o src/stardate.o src/universe_generic.o src/universe_util_generic.o src/vs_globals.o src/vsfilesystem.o src/xml_serializer.o src/xml_support.o src/cmd/script/director_generic.o src/cmd/script/mission_script.o src/cmd/script/mission.o src/cmd/script/msgcenter.o src/cmd/script/pythonmission.o src/cmd/script/script_call_olist.o src/cmd/script/script_call_omap.o src/cmd/script/script_call_order.o src/cmd/script/script_call_string.o src/cmd/script/script_call_unit_generic.o src/cmd/script/script_callbacks.o src/cmd/script/script_expression.o src/cmd/script/script_generic.o src/cmd/script/script_statement.o src/cmd/script/script_util.o src/cmd/script/script_variables.o src/gfx/bounding_box.o src/gfx/bsp.o src/gfx/cockpit_generic.o src/gfx/lerp.o src/gfx/matrix.o src/gfx/mesh_bxm.o src/gfx/mesh_bin.o src/gfx/mesh_poly.o src/gfx/mesh_xml.o src/gfx/mesh.o src/gfx/quaternion.o src/gfx/sphere_generic.o src/gfx/vec.o src/gui/button.o src/gui/control.o src/gui/eventmanager.o src/gui/eventresponder.o src/gui/font.o src/gui/general.o src/gui/glut_support.o src/gui/groupcontrol.o src/gui/guidefs.o src/gui/guitexture.o src/gui/modaldialog.o src/gui/newbutton.o src/gui/painttext.o src/gui/picker.o src/gui/scroller.o src/gui/simplepicker.o src/gui/slider.o src/gui/staticdisplay.o src/gui/text_area.o src/gui/textinputdisplay.o src/gui/window.o src/gui/windowcontroller.o src/networking/accountsxml.o src/networking/client.o src/networking/fileutil.o src/networking/savenet_util.o src/networking/cubicsplines.o src/networking/mangle.o src/networking/netclient_clients.o src/networking/netclient_devices.o src/networking/netclient_login.o src/networking/netclient.o src/networking/netserver_acct.o src/networking/netserver_clients.o src/networking/netserver_devices.o src/networking/netserver_login.o src/networking/netserver_net.o src/networking/netserver.o src/networking/prediction.o src/networking/zonemgr.o src/networking/networkcomm.o src/networking/webcam_support.o src/cg_global.o src/command.o src/config_xml.o src/debug_vs.o src/faction_util.o src/force_feedback.o src/gamemenu.o src/gfxlib_struct.o src/in_joystick.o src/in_kb.o src/in_main.o src/in_mouse.o src/in_sdl.o src/main_loop.o src/physics.o src/rendertext.o src/ship_commands.o src/star_system_jump.o src/star_system.o src/universe_util.o src/universe.o src/gfx/ani_texture.o src/gfx/animation.o src/gfx/aux_logo.o src/gfx/aux_palette.o src/gfx/aux_texture.o src/gfx/background.o src/gfx/camera.o src/gfx/cockpit_xml.o src/gfx/cockpit.o src/gfx/coord_select.o src/gfx/env_map_gent.o src/gfx/gauge.o src/gfx/halo_system.o src/gfx/halo.o src/gfx/hud.o src/gfx/jpeg_memory.o src/gfx/loc_select.o src/gfx/masks.o src/gfx/mesh_fx.o src/gfx/mesh_gfx.o src/gfx/nav/criteria_xml.o src/gfx/nav/criteria.o src/gfx/nav/drawgalaxy.o src/gfx/nav/drawlist.o src/gfx/nav/drawsystem.o src/gfx/nav/navcomputer.o src/gfx/nav/navgetxmldata.o src/gfx/nav/navpath.o src/gfx/nav/navscreen.o src/gfx/nav/navscreenoccupied.o src/gfx/particle.o src/gfx/pipelined_texture.o src/gfx/quadsquare_cull.o src/gfx/quadsquare_render.o src/gfx/quadsquare_update.o src/gfx/quadsquare.o src/gfx/quadtree_xml.o src/gfx/quadtree.o src/gfx/ring.o src/gfx/screenshot.o src/gfx/sphere.o src/gfx/sprite.o src/gfx/star.o src/gfx/stream_texture.o src/gfx/tex_transform.o src/gfx/vdu.o src/gfx/vsbox.o src/gfx/vsimage.o src/gfx/warptrail.o src/aldrv/al_globals.o src/aldrv/al_init.o src/aldrv/al_listen.o src/aldrv/al_sound.o src/cmd/ai/firekeyboard.o src/cmd/ai/flyjoystick.o src/cmd/ai/flykeyboard.o src/cmd/ai/input_dfa.o src/cmd/asteroid.o src/cmd/atmosphere.o src/cmd/base_init.o src/cmd/base_interface.o src/cmd/base_util.o src/cmd/base_write_python.o src/cmd/base_write_xml.o src/cmd/base_xml.o src/cmd/basecomputer.o src/cmd/beam.o src/cmd/bolt.o src/cmd/briefing.o src/cmd/building.o src/cmd/click_list.o src/cmd/cont_terrain.o src/cmd/music.o src/cmd/nebula.o src/cmd/planet.o src/cmd/script/c_alike/c_alike.tab.o src/cmd/script/c_alike/lex.yy.o src/cmd/script/director.o src/cmd/script/flightgroup.o src/cmd/script/script_call_briefing.o src/cmd/script/script_call_unit.o src/cmd/terrain.o src/cmd/unit_factory.o src/cmd/unit_functions.o src/cmd/unit_interface.o src/cmd/unit_util.o src/gldrv/gl_program.o src/gldrv/gl_clip.o src/gldrv/gl_fog.o src/gldrv/gl_globals.o src/gldrv/gl_init.o src/gldrv/gl_light_pick.o src/gldrv/gl_light_state.o src/gldrv/gl_light.o src/gldrv/gl_material.o src/gldrv/gl_matrix.o src/gldrv/gl_misc.o src/gldrv/gl_quad_list.o src/gldrv/gl_sphere_list.o src/gldrv/gl_state.o src/gldrv/sdds.o src/gldrv/gl_texture.o src/gldrv/gl_vertex_list.o src/gldrv/winsys.o src/main.o src/python/briefing_wrapper.o libnetlowlevel.a  /sw/lib/libvorbisfile.a /sw/lib/libvorbis.a /sw/lib/libogg.a  /Users/daniel/Install/SDL-1.2.7/src/.libs/libSDL.a /Users/daniel/Install/SDL-1.2.7/src/main/libSDLmain.a  -F/Developer/SDKs/MacOSX10.1.5.sdk/System/Library/Frameworks  -framework OpenGL -framework GLUT -framework CoreAudio -lobjc -L/sw/lib -Xlinker -bind_at_load  -framework Cocoa -framework OpenGL -L/Developer/SDKs/MacOSX10.2.8.sdk/System/Library/Frameworks/OpenGL.framework/Libraries -lGL  -lGLU  -framework GLUT /sw/lib/libexpat.a /sw/lib/libjpeg.a /Users/daniel/Install/libpng/libpng.a    -framework AppKit /sw/lib/libvorbisfile.a /sw/lib/libvorbis.a /sw/lib/libogg.a /users/daniel/Vega/openal/linux/src/libopenal.a   /Users/daniel/Vega/Python-2.4.4/libpython2.4.a  -framework IOKit -framework Foundation -framework CoreFoundation -framework ApplicationServices -framework CoreServices  -framework Carbon -framework SystemConfiguration -framework CoreAudio  -framework AudioUnit  -framework Quicktime /users/daniel/install/zlib/libz.a /Developer/SDKs/MacOSX10.2.8.sdk/usr/lib/gcc/darwin/3.1/libstdc++.a -framework AudioToolbox -lpthread  -lgcc
#src/blah.o
#cd src
#gcc -Xlinker -Y -Xlinker 16384 -Xlinker -force_flat_namespace  -Xlinker -nomultidefs  -o soundserver.child -DHAVE_SDL=1 -D__APPLE -I.. networking/softvolume.cpp networking/soundserver.cpp networking/inet.cpp -I. lin_time.cpp networking/inet_file.cpp  -I/sw/include /Users/daniel/Install/SDL_mixer-1.2.5/.libs/libSDL_mixer.a /sw/lib/libvorbisfile.a /sw/lib/libvorbis.a /sw/lib/libogg.a /Users/daniel/Install/SDL-1.2.7/src/.libs/libSDL.a  /Developer/SDKs/MacOSX10.2.8.sdk/usr/lib/gcc/darwin/3.1/libstdc++.a -framework AppKit   -framework Quicktime -framework AudioUnit -framework AudioToolbox /Developer/SDKs/MacOSX10.2.8.sdk/System/Library/Frameworks/OpenGL.framework/Libraries/libGL.dylib -framework OpenGL -framework ApplicationServices macquartz.cpp
# -lexpat  -lpng  -ljpeg  -lopenal  -lvorbisfile -lvorbis -logg  /sw/lib/python2.2/config/libpython2.2.a --export-dynamic