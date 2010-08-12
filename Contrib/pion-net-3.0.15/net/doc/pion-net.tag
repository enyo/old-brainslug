<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>HelloServer</name>
    <filename>class_hello_server.html</filename>
    <base>pion::net::TCPServer</base>
    <member kind="function">
      <type></type>
      <name>HelloServer</name>
      <anchorfile>class_hello_server.html</anchorfile>
      <anchor>48e28076e36dfefefdc14709fa8bbfb4</anchor>
      <arglist>(const unsigned int tcp_port)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HelloServer</name>
      <anchorfile>class_hello_server.html</anchorfile>
      <anchor>58391a7f5e7d8c7575a089407bb8e503</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>handleConnection</name>
      <anchorfile>class_hello_server.html</anchorfile>
      <anchor>fbe4430a869541a10d653ca34d29ea72</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>PionUnitTest</name>
    <filename>struct_pion_unit_test.html</filename>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>doNothing</name>
      <anchorfile>struct_pion_unit_test.html</anchorfile>
      <anchor>3d719b78361504cafcd821283b7e5ad0</anchor>
      <arglist>(void *ctx, const char *msg,...)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static char *</type>
      <name>trim</name>
      <anchorfile>struct_pion_unit_test.html</anchorfile>
      <anchor>53ad958db4ae265b0f31222efbddc235</anchor>
      <arglist>(char *str)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>read_lines_from_file</name>
      <anchorfile>struct_pion_unit_test.html</anchorfile>
      <anchor>ca3244ca5e02501a881c88c8b97e165d</anchor>
      <arglist>(const std::string &amp;filename, std::list&lt; std::string &gt; &amp;lines)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>check_files_match</name>
      <anchorfile>struct_pion_unit_test.html</anchorfile>
      <anchor>bc59de6c7502bbd3c14bf965dbba75d3</anchor>
      <arglist>(const std::string &amp;fileA, const std::string &amp;fileB)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>check_files_exact_match</name>
      <anchorfile>struct_pion_unit_test.html</anchorfile>
      <anchor>3aea8e10e91ac8e924afdefdb8dc316c</anchor>
      <arglist>(const std::string &amp;fileA, const std::string &amp;fileB, bool ignore_line_endings=false)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>PionUnitTestsConfig</name>
    <filename>struct_pion_unit_tests_config.html</filename>
    <member kind="function">
      <type></type>
      <name>PionUnitTestsConfig</name>
      <anchorfile>struct_pion_unit_tests_config.html</anchorfile>
      <anchor>def955ad30083e229f87bd1da44bb8ae</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~PionUnitTestsConfig</name>
      <anchorfile>struct_pion_unit_tests_config.html</anchorfile>
      <anchor>fbde964386c4909ca9ced36f42fccd28</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ShutdownManager</name>
    <filename>class_shutdown_manager.html</filename>
    <member kind="function">
      <type></type>
      <name>ShutdownManager</name>
      <anchorfile>class_shutdown_manager.html</anchorfile>
      <anchor>d7e77cab331a9ce36277a78c55f12104</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ShutdownManager</name>
      <anchorfile>class_shutdown_manager.html</anchorfile>
      <anchor>21b5ac46b75c05a03707826d4f9239ed</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>shutdown</name>
      <anchorfile>class_shutdown_manager.html</anchorfile>
      <anchor>45900ac388617bd495606c7e1c70e707</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wait</name>
      <anchorfile>class_shutdown_manager.html</anchorfile>
      <anchor>e6a243d2502e5e51010669fa35cea076</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>boost</name>
    <filename>namespaceboost.html</filename>
    <namespace>boost::lockfree</namespace>
  </compound>
  <compound kind="namespace">
    <name>boost::lockfree</name>
    <filename>namespaceboost_1_1lockfree.html</filename>
    <class kind="class">boost::lockfree::atomic_int</class>
    <class kind="struct">boost::lockfree::atomic_cas_emulator</class>
    <class kind="struct">boost::lockfree::atomic_cas32</class>
    <class kind="struct">boost::lockfree::atomic_cas64</class>
    <class kind="struct">boost::lockfree::atomic_cas128</class>
    <class kind="class">boost::lockfree::freelist</class>
    <class kind="class">boost::lockfree::caching_freelist</class>
    <class kind="class">boost::lockfree::static_freelist</class>
    <class kind="struct">boost::lockfree::caching_freelist_t</class>
    <class kind="struct">boost::lockfree::static_freelist_t</class>
    <class kind="class">boost::lockfree::tagged_ptr</class>
    <class kind="class">boost::lockfree::fifo</class>
    <class kind="class">boost::lockfree::fifo&lt; T *, freelist_t, Alloc &gt;</class>
    <class kind="class">boost::lockfree::stack</class>
    <namespace>boost::lockfree::detail</namespace>
    <member kind="function">
      <type>bool</type>
      <name>likely</name>
      <anchorfile>namespaceboost_1_1lockfree.html</anchorfile>
      <anchor>7edfb617a8010d8d5f322a46f6eda1be</anchor>
      <arglist>(bool expr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>unlikely</name>
      <anchorfile>namespaceboost_1_1lockfree.html</anchorfile>
      <anchor>1f7aa0a2374b4a7fd2d3494b4aa3cbc2</anchor>
      <arglist>(bool expr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>memory_barrier</name>
      <anchorfile>namespaceboost_1_1lockfree.html</anchorfile>
      <anchor>bf70357fb7ad263c2a798d1746c895d9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>read_memory_barrier</name>
      <anchorfile>namespaceboost_1_1lockfree.html</anchorfile>
      <anchor>f41d0a217b42ed77a1a6469c64049645</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>atomic_cas_emulation</name>
      <anchorfile>namespaceboost_1_1lockfree.html</anchorfile>
      <anchor>4839f7b18caf7935175017a39f632f9a</anchor>
      <arglist>(C *addr, C old, C nw)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>cas</name>
      <anchorfile>namespaceboost_1_1lockfree.html</anchorfile>
      <anchor>cb78708660d5b67e2a0b3d101b7523ad</anchor>
      <arglist>(volatile C *addr, C const &amp;old, C const &amp;nw)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::atomic_int</name>
    <filename>classboost_1_1lockfree_1_1atomic__int.html</filename>
    <templarg>T</templarg>
    <member kind="function">
      <type></type>
      <name>atomic_int</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>6e79437ff64904335e134faf913fac3f</anchor>
      <arglist>(T v=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator T</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>ffeba06b970f52e2d75ae7c17abbf97f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator=</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>90a5b4f37039fa447d5f4bf4152259ec</anchor>
      <arglist>(T v)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator++</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>cdfe2e801f8168f9413fa1aa832154e3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator--</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>b298dba478cf305d5e617f49261cbbb9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator+=</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>dd9bef1e37dde77f4c4f0a3335401bc7</anchor>
      <arglist>(T v)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator-=</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>047ff97d1d2683a5f0a71c65d32a9bfc</anchor>
      <arglist>(T v)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator++</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>0c0f604d63d0c3c527164cc3893b7dab</anchor>
      <arglist>(int)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator--</name>
      <anchorfile>classboost_1_1lockfree_1_1atomic__int.html</anchorfile>
      <anchor>6c490bef4d992a0b4bbf9be52ef03772</anchor>
      <arglist>(int)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::atomic_cas_emulator</name>
    <filename>structboost_1_1lockfree_1_1atomic__cas__emulator.html</filename>
    <templarg>C</templarg>
    <member kind="typedef">
      <type>C</type>
      <name>cas_type</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas__emulator.html</anchorfile>
      <anchor>eea6b9f44cff007ac7341d59ab380462</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>cas</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas__emulator.html</anchorfile>
      <anchor>fc0f053cae66c70d1b6cd2e8ad535ec8</anchor>
      <arglist>(C *addr, C old, C nw)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::atomic_cas32</name>
    <filename>structboost_1_1lockfree_1_1atomic__cas32.html</filename>
    <member kind="typedef">
      <type>uint32_t</type>
      <name>cas_type</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas32.html</anchorfile>
      <anchor>ba308320cf5628f77b649f422cc765c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>cas</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas32.html</anchorfile>
      <anchor>8b9bc454458d2be628db3712f7baafda</anchor>
      <arglist>(volatile uint32_t *addr, uint64_t const &amp;old, uint64_t const &amp;nw)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>is_lockfree</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas32.html</anchorfile>
      <anchor>ca67dc7c6866ba1b6abd7a18b4c476d8</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::atomic_cas64</name>
    <filename>structboost_1_1lockfree_1_1atomic__cas64.html</filename>
    <member kind="typedef">
      <type>uint64_t</type>
      <name>cas_type</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas64.html</anchorfile>
      <anchor>dd3fc3ce844fad9cf6269f6e3eebc072</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>cas</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas64.html</anchorfile>
      <anchor>19377b3a5078df371060a24225fe36bb</anchor>
      <arglist>(volatile uint64_t *addr, uint64_t const &amp;old, uint64_t const &amp;nw)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>is_lockfree</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas64.html</anchorfile>
      <anchor>a31a06a77b7294cdc09ec0a9bae8083a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::atomic_cas128</name>
    <filename>structboost_1_1lockfree_1_1atomic__cas128.html</filename>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>cas</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas128.html</anchorfile>
      <anchor>9b2d0f54bf086b44b06e89ff81b21b3b</anchor>
      <arglist>(volatile cas_type *addr, cas_type const &amp;old, cas_type const &amp;nw)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>is_lockfree</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas128.html</anchorfile>
      <anchor>1151c4c5dfbd6895aaabb26e8aa445f9</anchor>
      <arglist></arglist>
    </member>
    <class kind="struct">boost::lockfree::atomic_cas128::cas_type</class>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::atomic_cas128::cas_type</name>
    <filename>structboost_1_1lockfree_1_1atomic__cas128_1_1cas__type.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas128_1_1cas__type.html</anchorfile>
      <anchor>41ca79fa703a2ff01d2d8a30cac37208</anchor>
      <arglist>(cas_type const &amp;rhs)</arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>data</name>
      <anchorfile>structboost_1_1lockfree_1_1atomic__cas128_1_1cas__type.html</anchorfile>
      <anchor>562634098aef73032c968af7f4f87d92</anchor>
      <arglist>[2]</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::freelist</name>
    <filename>classboost_1_1lockfree_1_1freelist.html</filename>
    <templarg>T</templarg>
    <templarg>maximum_size</templarg>
    <templarg>Alloc</templarg>
    <base protection="private">boost::lockfree::detail::dummy_freelist</base>
    <member kind="function">
      <type></type>
      <name>freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1freelist.html</anchorfile>
      <anchor>8abbaf8e30e0aa370683daf2f7b300f3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1freelist.html</anchorfile>
      <anchor>51dba395f2d0c24a0d3bc87f1497ea7c</anchor>
      <arglist>(std::size_t initial_nodes)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1freelist.html</anchorfile>
      <anchor>2b5a61a38e20fd592e847b448378674a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>T *</type>
      <name>allocate</name>
      <anchorfile>classboost_1_1lockfree_1_1freelist.html</anchorfile>
      <anchor>3f67eeb864068a2f386b065e42379041</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deallocate</name>
      <anchorfile>classboost_1_1lockfree_1_1freelist.html</anchorfile>
      <anchor>f6c89c1ce1f826d047ee7abe62e23e78</anchor>
      <arglist>(T *n)</arglist>
    </member>
    <class kind="struct">boost::lockfree::freelist::freelist_node</class>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::caching_freelist</name>
    <filename>classboost_1_1lockfree_1_1caching__freelist.html</filename>
    <templarg>T</templarg>
    <templarg>Alloc</templarg>
    <base protection="private">boost::lockfree::detail::dummy_freelist</base>
    <member kind="function">
      <type></type>
      <name>caching_freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1caching__freelist.html</anchorfile>
      <anchor>189f39db5008743865d114a4f6069268</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>caching_freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1caching__freelist.html</anchorfile>
      <anchor>e51c2f204b51b803101b56f15d6dcf6e</anchor>
      <arglist>(std::size_t initial_nodes)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~caching_freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1caching__freelist.html</anchorfile>
      <anchor>df8f9755edf0e5af88cb3ee6bab30f7e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>T *</type>
      <name>allocate</name>
      <anchorfile>classboost_1_1lockfree_1_1caching__freelist.html</anchorfile>
      <anchor>df82f1f7c0d5b65459846dd2a6b0c654</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deallocate</name>
      <anchorfile>classboost_1_1lockfree_1_1caching__freelist.html</anchorfile>
      <anchor>3902b634fa36f2693b3545ec4ece98ba</anchor>
      <arglist>(T *n)</arglist>
    </member>
    <class kind="struct">boost::lockfree::caching_freelist::freelist_node</class>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::static_freelist</name>
    <filename>classboost_1_1lockfree_1_1static__freelist.html</filename>
    <templarg>T</templarg>
    <templarg>Alloc</templarg>
    <member kind="function">
      <type></type>
      <name>static_freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1static__freelist.html</anchorfile>
      <anchor>53080ed737961ea15fbfe87b4095f887</anchor>
      <arglist>(std::size_t max_nodes)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~static_freelist</name>
      <anchorfile>classboost_1_1lockfree_1_1static__freelist.html</anchorfile>
      <anchor>ae4ae1006e632aa25a354e9c4279ca90</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>T *</type>
      <name>allocate</name>
      <anchorfile>classboost_1_1lockfree_1_1static__freelist.html</anchorfile>
      <anchor>4d0d8416fefaaa340c80c188c2a25524</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deallocate</name>
      <anchorfile>classboost_1_1lockfree_1_1static__freelist.html</anchorfile>
      <anchor>73b7925cf0b7db364434f6b9b66113e5</anchor>
      <arglist>(T *n)</arglist>
    </member>
    <class kind="struct">boost::lockfree::static_freelist::freelist_node</class>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::caching_freelist_t</name>
    <filename>structboost_1_1lockfree_1_1caching__freelist__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::static_freelist_t</name>
    <filename>structboost_1_1lockfree_1_1static__freelist__t.html</filename>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::tagged_ptr</name>
    <filename>classboost_1_1lockfree_1_1tagged__ptr.html</filename>
    <templarg>T</templarg>
    <member kind="typedef">
      <type>std::size_t</type>
      <name>tag_t</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>fc806c3a90e7be6246168a50b36b914d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>tagged_ptr</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>fe1b5df04276f22580018c4769341dc0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>tagged_ptr</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>9d43bb8b15140a8c2b8b1537344a1333</anchor>
      <arglist>(tagged_ptr const &amp;p)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>tagged_ptr</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>7271f600cd371c4a21c0ff0d1034a276</anchor>
      <arglist>(T *p, tag_t t=0)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator=</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>6eeef5a2a0ad5202b865ad8cbafcbd4b</anchor>
      <arglist>(tagged_ptr const &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>atomic_set</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>e064b10ab45079dc73169deeb5304953</anchor>
      <arglist>(tagged_ptr const &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>atomic_set</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>57ee0cdb570162048b54f05d098891b8</anchor>
      <arglist>(T *p, tag_t t)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>a38f6d67feb401eeec7bbd5d0fbdf906</anchor>
      <arglist>(tagged_ptr const &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>9dea867fbf0796351cedec6600bd8736</anchor>
      <arglist>(T *p, tag_t t)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>d98ddf6c8b35a6bf2146a07cd9524814</anchor>
      <arglist>(tagged_ptr const &amp;p) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>fd0682c1d3cf328d96dd63771c96fe36</anchor>
      <arglist>(tagged_ptr const &amp;p) const </arglist>
    </member>
    <member kind="function">
      <type>T *</type>
      <name>get_ptr</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>465f241e8e107c36cd75237aca02aeb1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_ptr</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>92f6e29528609695332ea88cfb8e4210</anchor>
      <arglist>(T *p)</arglist>
    </member>
    <member kind="function">
      <type>tag_t</type>
      <name>get_tag</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>6a5ead5eef50459d124e9a5840cb62d2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_tag</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>a236b168ff314c67b1956444532f04ad</anchor>
      <arglist>(tag_t t)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>cas</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>e11125fd877dc6ccde2cd38ba76061a4</anchor>
      <arglist>(tagged_ptr const &amp;oldval, T *newptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>cas</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>d50441c9b17621638429f4539a5679eb</anchor>
      <arglist>(tagged_ptr const &amp;oldval, T *newptr, tag_t t)</arglist>
    </member>
    <member kind="function">
      <type>T &amp;</type>
      <name>operator *</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>21f796aee1b2d806d1fa22fa29fd3a07</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>T *</type>
      <name>operator-&gt;</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>fcfdb206115719e8c343778208c7212b</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator bool</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>b0a13470add6433e596e8c884cbd2a11</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>is_lockfree</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>8415cbe9d903f984d7a82c78cca20590</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>T *</type>
      <name>ptr</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>441de83d7a5d1a199532d862574a51da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>tag_t</type>
      <name>tag</name>
      <anchorfile>classboost_1_1lockfree_1_1tagged__ptr.html</anchorfile>
      <anchor>219474322bd875e4284a7999e8333171</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::fifo</name>
    <filename>classboost_1_1lockfree_1_1fifo.html</filename>
    <templarg>T</templarg>
    <templarg>freelist_t</templarg>
    <templarg>Alloc</templarg>
    <base>boost::lockfree::detail::fifo</base>
    <member kind="function">
      <type></type>
      <name>fifo</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo.html</anchorfile>
      <anchor>2394c38cbec2b5e0121010103e8118e0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>fifo</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo.html</anchorfile>
      <anchor>b72a1ea076243c457e28d95beb413578</anchor>
      <arglist>(std::size_t initial_nodes)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::fifo&lt; T *, freelist_t, Alloc &gt;</name>
    <filename>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</filename>
    <templarg>T</templarg>
    <templarg>freelist_t</templarg>
    <templarg>Alloc</templarg>
    <base>boost::lockfree::detail::fifo</base>
    <member kind="function">
      <type></type>
      <name>fifo</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</anchorfile>
      <anchor>e1c13a579f8413b76d2441a5ae707bb9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>fifo</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</anchorfile>
      <anchor>66123f49550a1e023d0057c4fd066aa2</anchor>
      <arglist>(std::size_t initial_nodes)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>enqueue</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</anchorfile>
      <anchor>06ded6b7cd740e1e14fde50dc0fa72e2</anchor>
      <arglist>(T *t)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dequeue</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</anchorfile>
      <anchor>2d4b25e777bf7a2542882adb304a0b5b</anchor>
      <arglist>(T **ret)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dequeue</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</anchorfile>
      <anchor>60742f54d2c1714c9c34f0020e38f37c</anchor>
      <arglist>(std::auto_ptr&lt; T &gt; &amp;ret)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dequeue</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</anchorfile>
      <anchor>b083f7d30c88eb45017729abdc772e3c</anchor>
      <arglist>(boost::scoped_ptr&lt; T &gt; &amp;ret)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dequeue</name>
      <anchorfile>classboost_1_1lockfree_1_1fifo_3_01_t_01_5_00_01freelist__t_00_01_alloc_01_4.html</anchorfile>
      <anchor>674e7766acf9b2cb735c9f999c44e3cc</anchor>
      <arglist>(boost::shared_ptr&lt; T &gt; &amp;ret)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::stack</name>
    <filename>classboost_1_1lockfree_1_1stack.html</filename>
    <templarg>T</templarg>
    <templarg>freelist_t</templarg>
    <templarg>Alloc</templarg>
    <member kind="function">
      <type></type>
      <name>stack</name>
      <anchorfile>classboost_1_1lockfree_1_1stack.html</anchorfile>
      <anchor>a3d58f61f017b10c18eaae7707997df7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>stack</name>
      <anchorfile>classboost_1_1lockfree_1_1stack.html</anchorfile>
      <anchor>03fd0f423768fad529c23b1840caf4c6</anchor>
      <arglist>(std::size_t n)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>push</name>
      <anchorfile>classboost_1_1lockfree_1_1stack.html</anchorfile>
      <anchor>a737da291a4387f09135df501b128631</anchor>
      <arglist>(T const &amp;v)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>pop</name>
      <anchorfile>classboost_1_1lockfree_1_1stack.html</anchorfile>
      <anchor>378c979af3e26b7c21787cdb3b548427</anchor>
      <arglist>(T *ret)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>classboost_1_1lockfree_1_1stack.html</anchorfile>
      <anchor>edeab35681a6f3497e051734d29d30f0</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>is_lockfree</name>
      <anchorfile>classboost_1_1lockfree_1_1stack.html</anchorfile>
      <anchor>bc171de429f2e58cb48a0c1de30f999c</anchor>
      <arglist></arglist>
    </member>
    <class kind="struct">boost::lockfree::stack::node</class>
  </compound>
  <compound kind="namespace">
    <name>boost::lockfree::detail</name>
    <filename>namespaceboost_1_1lockfree_1_1detail.html</filename>
    <class kind="struct">boost::lockfree::detail::atomic_cas</class>
    <class kind="class">boost::lockfree::detail::dummy_freelist</class>
    <class kind="class">boost::lockfree::detail::fifo</class>
  </compound>
  <compound kind="struct">
    <name>boost::lockfree::detail::atomic_cas</name>
    <filename>structboost_1_1lockfree_1_1detail_1_1atomic__cas.html</filename>
    <templarg>C</templarg>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>cas</name>
      <anchorfile>structboost_1_1lockfree_1_1detail_1_1atomic__cas.html</anchorfile>
      <anchor>02273127582c1655f63445e6e353bf4b</anchor>
      <arglist>(volatile C *addr, C const &amp;old, C const &amp;nw)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>is_lockfree</name>
      <anchorfile>structboost_1_1lockfree_1_1detail_1_1atomic__cas.html</anchorfile>
      <anchor>679621c25ddb2e6433d0ea296ba1a243</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::detail::dummy_freelist</name>
    <filename>classboost_1_1lockfree_1_1detail_1_1dummy__freelist.html</filename>
    <templarg>T</templarg>
    <templarg>Alloc</templarg>
    <member kind="function">
      <type>T *</type>
      <name>allocate</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1dummy__freelist.html</anchorfile>
      <anchor>a51229207ee6315d3d2a740f4d36329a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deallocate</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1dummy__freelist.html</anchorfile>
      <anchor>06b2f7c7bc3eaa9e23b35d5a5edadb27</anchor>
      <arglist>(T *n)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>boost::lockfree::detail::fifo</name>
    <filename>classboost_1_1lockfree_1_1detail_1_1fifo.html</filename>
    <templarg>T</templarg>
    <templarg>freelist_t</templarg>
    <templarg>Alloc</templarg>
    <member kind="function">
      <type></type>
      <name>fifo</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1fifo.html</anchorfile>
      <anchor>d1dc3f0389c839c0827a7b65230b1186</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>fifo</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1fifo.html</anchorfile>
      <anchor>3c56256079e299d7387b9425b50065e4</anchor>
      <arglist>(std::size_t initial_nodes)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~fifo</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1fifo.html</anchorfile>
      <anchor>29c07b74a9401c9d08d184d6c1d3631a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1fifo.html</anchorfile>
      <anchor>13fed95d870b40a27f5503cc3556c145</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>enqueue</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1fifo.html</anchorfile>
      <anchor>ac4b595f38ad6015f58df3d78bcd7b5c</anchor>
      <arglist>(T const &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dequeue</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1fifo.html</anchorfile>
      <anchor>acaa7b2a94f9d77f60131c4e16d6a0ce</anchor>
      <arglist>(T *ret)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const bool</type>
      <name>is_lockfree</name>
      <anchorfile>classboost_1_1lockfree_1_1detail_1_1fifo.html</anchorfile>
      <anchor>c71bf12ec8ae713cd7e4b0d16fc78d4b</anchor>
      <arglist></arglist>
    </member>
    <class kind="struct">boost::lockfree::detail::fifo::node</class>
  </compound>
  <compound kind="namespace">
    <name>pion</name>
    <filename>namespacepion.html</filename>
    <class kind="class">pion::PionAdminRights</class>
    <class kind="class">pion::PionBlob</class>
    <class kind="struct">pion::HashPionIdBlob</class>
    <class kind="class">pion::PionCounter</class>
    <class kind="class">pion::PionTimeFacet</class>
    <class kind="class">pion::PionException</class>
    <class kind="class">pion::BadAssertException</class>
    <class kind="struct">pion::CaseInsensitiveEqual</class>
    <class kind="struct">pion::CaseInsensitiveHash</class>
    <class kind="struct">pion::CaseInsensitiveLess</class>
    <class kind="class">pion::PionId</class>
    <class kind="class">pion::PionIdGeneratorBase</class>
    <class kind="class">pion::PionLockedQueue</class>
    <class kind="class">pion::PionLockFreeQueue</class>
    <class kind="struct">pion::PionLogger</class>
    <class kind="class">pion::PionPlugin</class>
    <class kind="class">pion::PionPluginPtr</class>
    <class kind="class">pion::PionPoolAllocator</class>
    <class kind="class">pion::PionScheduler</class>
    <class kind="class">pion::PionMultiThreadScheduler</class>
    <class kind="class">pion::PionSingleServiceScheduler</class>
    <class kind="class">pion::PionOneToOneScheduler</class>
    <class kind="class">pion::PluginManager</class>
    <namespace>pion::net</namespace>
    <namespace>pion::plugins</namespace>
    <member kind="typedef">
      <type>boost::posix_time::ptime</type>
      <name>PionDateTime</name>
      <anchorfile>namespacepion.html</anchorfile>
      <anchor>968531d4adcf6f642fc16dc5bf11fa19</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>PION_HASH_MULTIMAP&lt; std::string, std::string, CaseInsensitiveHash, CaseInsensitiveEqual &gt;</type>
      <name>StringDictionary</name>
      <anchorfile>namespacepion.html</anchorfile>
      <anchor>cb66694a8ad0b3eb72b7bf04036b3747</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>PionIdGeneratorBase&lt; boost::mt19937 &gt;</type>
      <name>PionIdGenerator</name>
      <anchorfile>namespacepion.html</anchorfile>
      <anchor>8ea43c0c49e436e081d8d616fad08c9a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionAdminRights</name>
    <filename>classpion_1_1_pion_admin_rights.html</filename>
    <member kind="function">
      <type></type>
      <name>PionAdminRights</name>
      <anchorfile>classpion_1_1_pion_admin_rights.html</anchorfile>
      <anchor>98920bb8f3fb02d68f35039ffd4e4b36</anchor>
      <arglist>(bool use_log=true)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionAdminRights</name>
      <anchorfile>classpion_1_1_pion_admin_rights.html</anchorfile>
      <anchor>0c0bf1080a5ac48d7d61089e91919435</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>release</name>
      <anchorfile>classpion_1_1_pion_admin_rights.html</anchorfile>
      <anchor>999144923e43370e5fd2432db1fbd0a8</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionBlob</name>
    <filename>classpion_1_1_pion_blob.html</filename>
    <templarg>CharType</templarg>
    <templarg>AllocType</templarg>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionBlob</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>84546f407dd24715c51539ba48c29a34</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionBlob</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>32def052096097cfac9ea7959304bed5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionBlob</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>e58c3b298b8809e00fd616ef9595247a</anchor>
      <arglist>(const PionBlob &amp;blob)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionBlob</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>a116550ebabc819e02cd83c8b1a7ff24</anchor>
      <arglist>(const BlobParams &amp;p)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionBlob</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>a49dbdd7c1b4df6929202424a950751e</anchor>
      <arglist>(AllocType &amp;blob_alloc, const CharType *ptr, const std::size_t len)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionBlob</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>f0a1c11b48fd023259ad022a041ca4c3</anchor>
      <arglist>(AllocType &amp;blob_alloc, const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>PionBlob &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>4d79ffb3b7f0bbfeebe0a8b9ec04ab59</anchor>
      <arglist>(const PionBlob &amp;blob)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>469960022738f8b10591765b306201dd</anchor>
      <arglist>(const BlobParams &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>1264d004242775455c630c3bd162aaf4</anchor>
      <arglist>(AllocType &amp;blob_alloc, const CharType *ptr, const std::size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>4ee3251aa801006433cf4f762291c83e</anchor>
      <arglist>(AllocType &amp;blob_alloc, const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>const CharType *</type>
      <name>get</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>9d7b5e2911ca5ebb2f66477ca8494547</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>size</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>e768636f43a987130fc624db047693e0</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>length</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>1d53895351a26ce9c2bc591c5ae46295</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>3e36f87cf1cbea28b4f4e0e4dff02925</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>long</type>
      <name>use_count</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>878d54f9c3a9ef0e5006eeda7346a17a</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>unique</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>33850475f824e32d099585e99c7abd9a</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>05ced4bf3a023b87527e373567dd11d5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>7c343504e16a7609a0cb8ee7bf223ea5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>5c591248b050ff9dc1db5b2cbcb0188c</anchor>
      <arglist>(const PionBlob &amp;blob) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>ad2fe6e4519792769230dfb0225ec71b</anchor>
      <arglist>(const std::string &amp;str) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>29ce47e014fd84705bea8c3eacde54e8</anchor>
      <arglist>(const PionBlob &amp;blob) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>e9f4a911e1933a93c4f2ab4f5efc9421</anchor>
      <arglist>(const std::string &amp;str) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>95d6309f28e8c2746023792f3fbef9d3</anchor>
      <arglist>(const PionBlob &amp;blob) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>6df5432af88a2b2ec43cbcd813c94822</anchor>
      <arglist>(const PionBlob &amp;blob) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>11fb7310eb3ae47e333d1cbd53df9457</anchor>
      <arglist>(const std::string &amp;str) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>a374ec5e17d8988a94792339bd854f39</anchor>
      <arglist>(const std::string &amp;str) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>release</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>353a10c5395bf863830af9f3b55fbde6</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>BlobData *</type>
      <name>grab</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>355be2017ae5c5abc9ef28c42faa2300</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static BlobData *</type>
      <name>create</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>7782161e55316bfeb9e7a5d2bf10ebf6</anchor>
      <arglist>(AllocType &amp;blob_alloc, const std::size_t len)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>BlobData *</type>
      <name>m_blob_ptr</name>
      <anchorfile>classpion_1_1_pion_blob.html</anchorfile>
      <anchor>ca7a4fbdbdfca6343a884ab7507113cb</anchor>
      <arglist></arglist>
    </member>
    <class kind="struct">pion::PionBlob::BlobData</class>
    <class kind="struct">pion::PionBlob::BlobParams</class>
  </compound>
  <compound kind="struct">
    <name>pion::PionBlob::BlobData</name>
    <filename>structpion_1_1_pion_blob_1_1_blob_data.html</filename>
    <member kind="function">
      <type></type>
      <name>BlobData</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_data.html</anchorfile>
      <anchor>1657db880f08b6cbad83cc855947a429</anchor>
      <arglist>(AllocType &amp;blob_alloc, const std::size_t len)</arglist>
    </member>
    <member kind="function">
      <type>const CharType *</type>
      <name>get</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_data.html</anchorfile>
      <anchor>c14787597ff3a2b1f42335c6789c1508</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>CharType *</type>
      <name>get</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_data.html</anchorfile>
      <anchor>562cd74dc680a84944a9a67cfbaa4348</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>AllocType *const</type>
      <name>m_alloc_ptr</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_data.html</anchorfile>
      <anchor>962e23d045bb13c6747a2378695cbcc9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const std::size_t</type>
      <name>m_len</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_data.html</anchorfile>
      <anchor>7c7b3cd219d256d1a39273020f960f7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>boost::detail::atomic_count</type>
      <name>m_copies</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_data.html</anchorfile>
      <anchor>045226cd046d8e586909aa4f95103d11</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::PionBlob::BlobParams</name>
    <filename>structpion_1_1_pion_blob_1_1_blob_params.html</filename>
    <member kind="function">
      <type></type>
      <name>BlobParams</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_params.html</anchorfile>
      <anchor>65addd7402fb815e9dbe137e864737f4</anchor>
      <arglist>(AllocType &amp;blob_alloc, const CharType *ptr, const std::size_t len)</arglist>
    </member>
    <member kind="variable">
      <type>AllocType &amp;</type>
      <name>m_alloc</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_params.html</anchorfile>
      <anchor>6e7d405b4c8fe6bb458bfa86fed2a65b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const CharType *</type>
      <name>m_ptr</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_params.html</anchorfile>
      <anchor>edac8bcece372a9ffeee4211e9cd3892</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::size_t</type>
      <name>m_len</name>
      <anchorfile>structpion_1_1_pion_blob_1_1_blob_params.html</anchorfile>
      <anchor>225f8d4cd360e8e345cd7d816747ac2a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::HashPionIdBlob</name>
    <filename>structpion_1_1_hash_pion_id_blob.html</filename>
    <member kind="function">
      <type>unsigned long</type>
      <name>getValue</name>
      <anchorfile>structpion_1_1_hash_pion_id_blob.html</anchorfile>
      <anchor>d900c41cfc18ad8848ca0c74742d1e0a</anchor>
      <arglist>(unsigned char c) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>operator()</name>
      <anchorfile>structpion_1_1_hash_pion_id_blob.html</anchorfile>
      <anchor>d7157d12ec98e1f356652f8482e3b429</anchor>
      <arglist>(const PionBlob&lt; CharType, AllocType &gt; &amp;blob) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionCounter</name>
    <filename>classpion_1_1_pion_counter.html</filename>
    <member kind="function">
      <type></type>
      <name>PionCounter</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>20dd8128e36752063a8b0e2428e18e2a</anchor>
      <arglist>(unsigned long n=0)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionCounter</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>2d55a98c5cc4aa06c1a0055cfb7c8eb5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionCounter</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>d9513b6e1729a89686ccb6ba51cf067d</anchor>
      <arglist>(const PionCounter &amp;c)</arglist>
    </member>
    <member kind="function">
      <type>const PionCounter &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>09102a7b6c88b90354563d3b3a4becd3</anchor>
      <arglist>(const PionCounter &amp;c)</arglist>
    </member>
    <member kind="function">
      <type>const PionCounter &amp;</type>
      <name>operator++</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>1deb6b51fec7c339fea69d2494c131d0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const PionCounter &amp;</type>
      <name>operator--</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>54c39c533258395e92c1cb9739e20482</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const PionCounter &amp;</type>
      <name>operator+=</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>e3cf2ef87e79cf8a550004e6bd6d9b89</anchor>
      <arglist>(const IntegerType &amp;n)</arglist>
    </member>
    <member kind="function">
      <type>const PionCounter &amp;</type>
      <name>operator-=</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>dca9a298d1cfaeffda6d064472cc6514</anchor>
      <arglist>(const IntegerType &amp;n)</arglist>
    </member>
    <member kind="function">
      <type>const PionCounter &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>0168d5bc26235073ebabaf1917f20454</anchor>
      <arglist>(const IntegerType &amp;n)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>79fd5421c7d9429cea75a85ac5ce0153</anchor>
      <arglist>(const IntegerType &amp;n) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>836df6aa2f10e8bdfff0277fed93a152</anchor>
      <arglist>(const IntegerType &amp;n) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>f8f76c1572ee8e90f40a8d455702e38f</anchor>
      <arglist>(const IntegerType &amp;n) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;=</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>d9025de7df5062a8f6265794cc26331c</anchor>
      <arglist>(const IntegerType &amp;n) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;=</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>8596d67396f7b6218b76dcb31d459739</anchor>
      <arglist>(const IntegerType &amp;n) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>1be96adaacb31f3438361b6e9d19d8ee</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>boost::uint64_t</type>
      <name>getValue</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>94850d49c9b77547b785718d626ac225</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>increment</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>c5cbaf29ce1e6d396204e88231e675be</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>decrement</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>30972fdc589d7241e166abf048c86c74</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>add</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>b98638e3fc5d3abf3610a478fab51b8c</anchor>
      <arglist>(const IntegerType &amp;n)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>subtract</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>67f934c43f8676160619902f8c0502b8</anchor>
      <arglist>(const IntegerType &amp;n)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>assign</name>
      <anchorfile>classpion_1_1_pion_counter.html</anchorfile>
      <anchor>ed201997cc165dc5becb608e27aee955</anchor>
      <arglist>(const IntegerType &amp;n)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionTimeFacet</name>
    <filename>classpion_1_1_pion_time_facet.html</filename>
    <member kind="function">
      <type></type>
      <name>PionTimeFacet</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>a783e4745db139986d2e77d90cae0edd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionTimeFacet</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>55fa6147068a93124b05b4299eab31e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionTimeFacet</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>e41911fbe69ed3453884f305d96776b3</anchor>
      <arglist>(const std::string &amp;format)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionTimeFacet</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>1d829a17f58d959f441cef7e82dd1d9b</anchor>
      <arglist>(const PionTimeFacet &amp;f)</arglist>
    </member>
    <member kind="function">
      <type>PionTimeFacet &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>6e2e078e8423991e56dd571f5d1b6af7</anchor>
      <arglist>(const PionTimeFacet &amp;f)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>read</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>c52446f3ee16bf70ffd2ab6e4c402979</anchor>
      <arglist>(std::basic_istream&lt; charT, traits &gt; &amp;input, PionDateTime &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>write</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>e7b5d05af5a324cf25e81331cee293e7</anchor>
      <arglist>(std::basic_ostream&lt; charT, traits &gt; &amp;output, const PionDateTime &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fromString</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>5b61f0a1a782041acb4aa1d89ec9263e</anchor>
      <arglist>(const std::string &amp;str, PionDateTime &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fromString</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>9776e32d4211692eda2db91bbb8747df</anchor>
      <arglist>(const char *str, PionDateTime &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>PionDateTime</type>
      <name>fromString</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>cf8bcb2d4296a081c47daeba8e336bac</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>PionDateTime</type>
      <name>fromString</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>8264ca78354b7ee862e1269df30e05b5</anchor>
      <arglist>(const char *str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toString</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>75b9cfeea4e95d4d6f8a9c62f9c8d01f</anchor>
      <arglist>(std::string &amp;str, const PionDateTime &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>toString</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>1bc3bf2885034b1cd7a27c5dd8642136</anchor>
      <arglist>(const PionDateTime &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFormat</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>4c1930be7bfa6c5384597022b4b9c220</anchor>
      <arglist>(const std::string &amp;format)</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getFormat</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>92f9577b9c13617a3fe50f653da28d3e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::uint32_t</type>
      <name>to_time_t</name>
      <anchorfile>classpion_1_1_pion_time_facet.html</anchorfile>
      <anchor>3e6e026591f320dadff520bba6aeb87b</anchor>
      <arglist>(const PionDateTime &amp;t)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionException</name>
    <filename>classpion_1_1_pion_exception.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionException</name>
      <anchorfile>classpion_1_1_pion_exception.html</anchorfile>
      <anchor>00c0e2deebe5f0807d240f7228abcef6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionException</name>
      <anchorfile>classpion_1_1_pion_exception.html</anchorfile>
      <anchor>872ecb2efdfbd073d4badd6a81c7a2be</anchor>
      <arglist>(const char *what_msg)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionException</name>
      <anchorfile>classpion_1_1_pion_exception.html</anchorfile>
      <anchor>65f4de88351a8ec2d43de56bb96181ef</anchor>
      <arglist>(const std::string &amp;what_msg)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionException</name>
      <anchorfile>classpion_1_1_pion_exception.html</anchorfile>
      <anchor>b743156869d108acf0c999596b85bde1</anchor>
      <arglist>(const char *description, const std::string &amp;param)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionException</name>
      <anchorfile>classpion_1_1_pion_exception.html</anchorfile>
      <anchor>f7e92778e1445e730060c038aea0b9f4</anchor>
      <arglist>(std::string description, const std::string &amp;param)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const char *</type>
      <name>what</name>
      <anchorfile>classpion_1_1_pion_exception.html</anchorfile>
      <anchor>64e87332ff75f3d218be9bf813db7fb8</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::BadAssertException</name>
    <filename>classpion_1_1_bad_assert_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>BadAssertException</name>
      <anchorfile>classpion_1_1_bad_assert_exception.html</anchorfile>
      <anchor>b568d93ef78ce707227f7de9469d1c92</anchor>
      <arglist>(const std::string &amp;file, unsigned long line)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::CaseInsensitiveEqual</name>
    <filename>structpion_1_1_case_insensitive_equal.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator()</name>
      <anchorfile>structpion_1_1_case_insensitive_equal.html</anchorfile>
      <anchor>7dbc403ccd9034d227c830806854cd9f</anchor>
      <arglist>(const std::string &amp;str1, const std::string &amp;str2) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::CaseInsensitiveHash</name>
    <filename>structpion_1_1_case_insensitive_hash.html</filename>
    <member kind="function">
      <type>unsigned long</type>
      <name>operator()</name>
      <anchorfile>structpion_1_1_case_insensitive_hash.html</anchorfile>
      <anchor>2fad161922fdee7abeb580a42b471fc0</anchor>
      <arglist>(const std::string &amp;str) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::CaseInsensitiveLess</name>
    <filename>structpion_1_1_case_insensitive_less.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator()</name>
      <anchorfile>structpion_1_1_case_insensitive_less.html</anchorfile>
      <anchor>a38b26262118f9b9eef942c43858aa51</anchor>
      <arglist>(const std::string &amp;str1, const std::string &amp;str2) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionId</name>
    <filename>classpion_1_1_pion_id.html</filename>
    <member kind="typedef">
      <type>unsigned char *</type>
      <name>iterator</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>92d86c36263f27a08f4b224bee073407</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>const unsigned char *</type>
      <name>const_iterator</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>49c54d9c9c05d968798114422ce2e80a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>PION_ID_DATA_BYTES</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>6370a3a2f8143b193c613643e338f81890f9edb1d54c646b74848e42872a573a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>PION_ID_HEX_BYTES</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>6370a3a2f8143b193c613643e338f8182275f9fe22841c6d17c330169c64ac8d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionId</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>7db16db2b800132fd05e5958cec0e7d0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionId</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>2483f17f9c43ccf3bd26d69cda085824</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionId</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>8f0f700a67e2c5193d9a3523bb172dab</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionId</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>25177550457aebac9a1cde64fef797e4</anchor>
      <arglist>(const char *str)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionId</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>d2be04adc927c1b919bc03726839ef12</anchor>
      <arglist>(boost::variate_generator&lt; base_generator_type, distribution_type &gt; &amp;rng)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionId</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>ce05ac0987e035647644dd153f247592</anchor>
      <arglist>(const PionId &amp;id)</arglist>
    </member>
    <member kind="function">
      <type>PionId &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>20b457c1ee69a34d9e3d3798f54fa732</anchor>
      <arglist>(const PionId &amp;id)</arglist>
    </member>
    <member kind="function">
      <type>unsigned char</type>
      <name>operator[]</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>7c143e97f028dfe94e08de9c2cd90c99</anchor>
      <arglist>(const std::size_t n) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>b390065cc87cc089d73709f7b4abeb03</anchor>
      <arglist>(const PionId &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>2c2b033c7f158bf59be0e700c4079ec2</anchor>
      <arglist>(const PionId &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>cb6751cdb72823a6506821709424fd54</anchor>
      <arglist>(const PionId &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>5d215bc97bc6c7a9e853c502a5bcb15e</anchor>
      <arglist>(const PionId &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>iterator</type>
      <name>begin</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>a29e6e54d9178781a9571dabd684d9b6</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>iterator</type>
      <name>end</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>924fd80f0643401fdce23b092578b390</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const_iterator</type>
      <name>begin</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>e01e48ac5fd3530d1acbe5b7724de94f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const_iterator</type>
      <name>end</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>194354e028ac6fbf57b713abcb613077</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>to_string</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>b194e5804f1a1688458d207b4d723d94</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>from_string</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>097b03dc7adc28622218e84c087ec3f3</anchor>
      <arglist>(const char *str)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::uint32_t</type>
      <name>make_seed</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>2e2fbeeba2fa470756621f25a056e928</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static void</type>
      <name>generate</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>86dfe1fc0f2f5b4526f886b8174cc036</anchor>
      <arglist>(unsigned char *data, boost::variate_generator&lt; base_generator_type, distribution_type &gt; &amp;rng)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>unsigned char</type>
      <name>m_data</name>
      <anchorfile>classpion_1_1_pion_id.html</anchorfile>
      <anchor>b1d995938c0795ea0af39b5f99a65157</anchor>
      <arglist>[PION_ID_DATA_BYTES]</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionIdGeneratorBase</name>
    <filename>classpion_1_1_pion_id_generator_base.html</filename>
    <templarg>BaseGeneratorType</templarg>
    <member kind="typedef">
      <type>BaseGeneratorType</type>
      <name>base_generator_type</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>f2b72844dc9d49065c6a29f34128bfda</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::uniform_int&lt; unsigned long &gt;</type>
      <name>distribution_type</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>935b4b66ddd43e10df658b2a73bdb29b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::variate_generator&lt; base_generator_type, distribution_type &gt;</type>
      <name>gen_type</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>aed084ba9e0167c958210a16992dcf78</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionIdGeneratorBase</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>812c36da5169be20310db0d46a916d9e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionIdGeneratorBase</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>2391c7729d7213482516a90b72fe6315</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>PionId</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>0a6eef4632c5462126837a6e3e6786b4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>gen_type &amp;</type>
      <name>getRNG</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>823123b2536542d1511a1b80fedda107</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>unsigned long</type>
      <name>getNumber</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>5404b84cae43f86007ee5db310035e53</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>base_generator_type</type>
      <name>m_random_gen</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>08a873d93c19dd5c520223f46d1626b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>distribution_type</type>
      <name>m_random_dist</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>97c9049d290745ac2af5c98de0417e3e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>gen_type</type>
      <name>m_random_die</name>
      <anchorfile>classpion_1_1_pion_id_generator_base.html</anchorfile>
      <anchor>13e320ce1984ac23b789b256d621cdde</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionLockedQueue</name>
    <filename>classpion_1_1_pion_locked_queue.html</filename>
    <templarg>T</templarg>
    <templarg>MaxSize</templarg>
    <templarg>SleepMilliSec</templarg>
    <member kind="function">
      <type></type>
      <name>PionLockedQueue</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>f2e1e79d28f39e7247d0115d43e92165</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionLockedQueue</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>3096daeaf75976d767b3a5cb54029160</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>5faf612dce5e26566fc19b494b1492b1</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>size</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>8a616b20d590b5f1bd12e6fc15c805c0</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>682da324334d39b42ddc68a0ab8301ac</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>push</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>f4563d2b8baa3d84a27668e1b334295c</anchor>
      <arglist>(const T &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>pop</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>e0af5da6ac66591f14a257b4caeae9d0</anchor>
      <arglist>(T &amp;t, ConsumerThread &amp;thread_info)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>pop</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>f59f39b79e3e8fafb71e51e3706bcbef</anchor>
      <arglist>(T &amp;t)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>QueueNode *</type>
      <name>createNode</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>b567147499f2a4668e2c6812be36005a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>destroyNode</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>872b16146945fb2952d4ce14ff3ed09a</anchor>
      <arglist>(QueueNode *node_ptr)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>dequeue</name>
      <anchorfile>classpion_1_1_pion_locked_queue.html</anchorfile>
      <anchor>c2e8f0afc5091edd96bdb288bec63eb8</anchor>
      <arglist>(T &amp;t, boost::uint32_t &amp;version)</arglist>
    </member>
    <class kind="class">pion::PionLockedQueue::ConsumerThread</class>
    <class kind="struct">pion::PionLockedQueue::QueueNode</class>
  </compound>
  <compound kind="class">
    <name>pion::PionLockedQueue::ConsumerThread</name>
    <filename>classpion_1_1_pion_locked_queue_1_1_consumer_thread.html</filename>
    <member kind="function">
      <type></type>
      <name>ConsumerThread</name>
      <anchorfile>classpion_1_1_pion_locked_queue_1_1_consumer_thread.html</anchorfile>
      <anchor>8aeedb39fe008af8f9bc9a22ca8917e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isRunning</name>
      <anchorfile>classpion_1_1_pion_locked_queue_1_1_consumer_thread.html</anchorfile>
      <anchor>653f46d8afae2508b17978c8c032f573</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop</name>
      <anchorfile>classpion_1_1_pion_locked_queue_1_1_consumer_thread.html</anchorfile>
      <anchor>ac9baa90fd63e3364a61a0439d474bcb</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classpion_1_1_pion_locked_queue_1_1_consumer_thread.html</anchorfile>
      <anchor>69d945360a9aecff2e27799cd6a6824e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>PionLockedQueue</name>
      <anchorfile>classpion_1_1_pion_locked_queue_1_1_consumer_thread.html</anchorfile>
      <anchor>6404dd9e0d3ebc63cf220db4f113892d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::PionLockedQueue::QueueNode</name>
    <filename>structpion_1_1_pion_locked_queue_1_1_queue_node.html</filename>
    <member kind="variable">
      <type>T</type>
      <name>data</name>
      <anchorfile>structpion_1_1_pion_locked_queue_1_1_queue_node.html</anchorfile>
      <anchor>336176263da86932560c2ca1e20d1dd9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>QueueNode *</type>
      <name>next</name>
      <anchorfile>structpion_1_1_pion_locked_queue_1_1_queue_node.html</anchorfile>
      <anchor>0c819129b152cb3a16281c81790dbc28</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>boost::uint32_t</type>
      <name>version</name>
      <anchorfile>structpion_1_1_pion_locked_queue_1_1_queue_node.html</anchorfile>
      <anchor>e1860e174abf2410cbb227c74773d756</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionLockFreeQueue</name>
    <filename>classpion_1_1_pion_lock_free_queue.html</filename>
    <templarg>T</templarg>
    <member kind="function">
      <type></type>
      <name>PionLockFreeQueue</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>2458620bff8bec062dca2d994dffb3a4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionLockFreeQueue</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>04fced18d5cc7fb934a1f13fe1ef147d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>e1a851aec8511b02a1b0344fc54d502b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>size</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>366f395fc7b549012f44752de72824b7</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>volatile void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>c936131a1e2bf1c605c1ff752c1b7f02</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>push</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>cb67291f34288c54390f8915799712ad</anchor>
      <arglist>(const T &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>pop</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>9c55d297410b7267a9d5e010407e5aa8</anchor>
      <arglist>(T &amp;t)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>boost::lockfree::tagged_ptr&lt; QueueNode &gt;</type>
      <name>QueueNodePtr</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>edad61ac8ee497bb6cf6ec42fedb8b1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>QueueNode *</type>
      <name>createNode</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>1bd31a55f542c5a00f0dca72b3fb43f2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>destroyNode</name>
      <anchorfile>classpion_1_1_pion_lock_free_queue.html</anchorfile>
      <anchor>7e5ac670d8efc5f15d84d99efeb62537</anchor>
      <arglist>(QueueNode *node_ptr)</arglist>
    </member>
    <class kind="struct">pion::PionLockFreeQueue::QueueNode</class>
  </compound>
  <compound kind="struct">
    <name>pion::PionLockFreeQueue::QueueNode</name>
    <filename>structpion_1_1_pion_lock_free_queue_1_1_queue_node.html</filename>
    <member kind="function">
      <type></type>
      <name>QueueNode</name>
      <anchorfile>structpion_1_1_pion_lock_free_queue_1_1_queue_node.html</anchorfile>
      <anchor>b9ea4e3b4ac4c4d3d641e55d171321c3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>QueueNode</name>
      <anchorfile>structpion_1_1_pion_lock_free_queue_1_1_queue_node.html</anchorfile>
      <anchor>bda93c49884db6c8d08c6842345c10d2</anchor>
      <arglist>(const T &amp;d)</arglist>
    </member>
    <member kind="variable">
      <type>boost::lockfree::tagged_ptr&lt; QueueNode &gt;</type>
      <name>next</name>
      <anchorfile>structpion_1_1_pion_lock_free_queue_1_1_queue_node.html</anchorfile>
      <anchor>9fe5a3f60d8e7e3b890ecf6d18794d85</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>T</type>
      <name>data</name>
      <anchorfile>structpion_1_1_pion_lock_free_queue_1_1_queue_node.html</anchorfile>
      <anchor>1eea540bf3903edeac7a3dc8b919b753</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::PionLogger</name>
    <filename>structpion_1_1_pion_logger.html</filename>
    <member kind="enumvalue">
      <type>@</type>
      <name>LOG_LEVEL_DEBUG</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>23b4b5a497d040ccee1eb3b77de382bf745c75f1df541aee0ec5925e368b62f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>LOG_LEVEL_INFO</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>23b4b5a497d040ccee1eb3b77de382bf9cdc843bd6a32722311cf44f61feaf57</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>LOG_LEVEL_WARN</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>23b4b5a497d040ccee1eb3b77de382bf793372a02293bce863f990d01ede1648</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>LOG_LEVEL_ERROR</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>23b4b5a497d040ccee1eb3b77de382bf0794c61b9eb1d40ec624cf37a35459b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>LOG_LEVEL_FATAL</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>23b4b5a497d040ccee1eb3b77de382bfdd509cbc55bfade1dc78f5bc142f35cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>PionPriorityType</name>
      <anchor>23b4b5a497d040ccee1eb3b77de382bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~PionLogger</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>1a106f327848e3905a61dc638e395cdb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionLogger</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>7e6716bb589b0ab410ae077d5c8c7f34</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionLogger</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>5006912eb5041daa5bab0359860db684</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionLogger</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>aa5d4383a80762a5b2c10783a1af164f</anchor>
      <arglist>(const PionLogger &amp;p)</arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>m_name</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>dab09635133377ded27180492ddb83c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static PionPriorityType</type>
      <name>m_priority</name>
      <anchorfile>structpion_1_1_pion_logger.html</anchorfile>
      <anchor>389222f53706c5aa76fcbdff4fc07579</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPlugin</name>
    <filename>classpion_1_1_pion_plugin.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionPlugin</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>384c70afc47aea152291e5bfab5a5d38</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_open</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>4fdcc74131eb30a30c1f69502e0d75ea</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getPluginName</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>51111eacaf36dbc57fd2f8dc139ee15f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>open</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>450a3bc846691a67dd44c918d102479c</anchor>
      <arglist>(const std::string &amp;plugin_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>openFile</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>41fb4fd3ff2645799131e17018a1e82e</anchor>
      <arglist>(const std::string &amp;plugin_file)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>openStaticLinked</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>6fda0169fe98216476c26047c9714a13</anchor>
      <arglist>(const std::string &amp;plugin_name, void *create_func, void *destroy_func)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>fca3fd7a1bc055ee2157601bd72ac093</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>findPluginFile</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>cfe519f5192e91854e6ea674976c3aa8</anchor>
      <arglist>(std::string &amp;path_to_file, const std::string &amp;name)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>findConfigFile</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>5123062ec04cf007b9030dac9e30c584</anchor>
      <arglist>(std::string &amp;path_to_file, const std::string &amp;name)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>findStaticEntryPoint</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>08a062de584f2fa4c9362698c9df6a65</anchor>
      <arglist>(const std::string &amp;plugin_name, void **create_func, void **destroy_func)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>addStaticEntryPoint</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>08fab8eefa53f8f1770107a1ebd4e2ba</anchor>
      <arglist>(const std::string &amp;plugin_name, void *create_func, void *destroy_func)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>checkCygwinPath</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>a9f7d401403f039aa17dd2cf393691a1</anchor>
      <arglist>(boost::filesystem::path &amp;final_path, const std::string &amp;path_string)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>addPluginDirectory</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>03f1713415e7b07598ae3ab758c35571</anchor>
      <arglist>(const std::string &amp;dir)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>resetPluginDirectories</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>41f81f57c088b8caee6c1cf3e1717ed2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>getAllPluginNames</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>409a011e80b2580b660ce701bd5e6e95</anchor>
      <arglist>(std::vector&lt; std::string &gt; &amp;plugin_names)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>PionPlugin</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>0e91ec2b63fb373e90d944277a42cd73</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>PionPlugin</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>9efd25ee9b773b941a1ae707c9ddc798</anchor>
      <arglist>(const PionPlugin &amp;p)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>PionPlugin &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>79b02a58ec857bfe0ba07db8837bf7e4</anchor>
      <arglist>(const PionPlugin &amp;p)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void *</type>
      <name>getCreateFunction</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>5c6368504619782919c5771cce0af877</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void *</type>
      <name>getDestroyFunction</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>7ba5117df673127e886c4eac5968d725</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>releaseData</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>ca998a36b0f363598e127715022a2f9f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>grabData</name>
      <anchorfile>classpion_1_1_pion_plugin.html</anchorfile>
      <anchor>7e3a19319057a40d65988cea3ad93977</anchor>
      <arglist>(const PionPlugin &amp;p)</arglist>
    </member>
    <class kind="class">pion::PionPlugin::DirectoryNotFoundException</class>
    <class kind="class">pion::PionPlugin::OpenPluginException</class>
    <class kind="struct">pion::PionPlugin::PionPluginData</class>
    <class kind="class">pion::PionPlugin::PluginMissingCreateException</class>
    <class kind="class">pion::PionPlugin::PluginMissingDestroyException</class>
    <class kind="class">pion::PionPlugin::PluginNotFoundException</class>
    <class kind="class">pion::PionPlugin::PluginUndefinedException</class>
    <class kind="class">pion::PionPlugin::StaticEntryPoint</class>
  </compound>
  <compound kind="class">
    <name>pion::PionPlugin::DirectoryNotFoundException</name>
    <filename>classpion_1_1_pion_plugin_1_1_directory_not_found_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>DirectoryNotFoundException</name>
      <anchorfile>classpion_1_1_pion_plugin_1_1_directory_not_found_exception.html</anchorfile>
      <anchor>ea8c1fd6aa1f5a09bdb574c8aaeb2da9</anchor>
      <arglist>(const std::string &amp;dir)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPlugin::OpenPluginException</name>
    <filename>classpion_1_1_pion_plugin_1_1_open_plugin_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>OpenPluginException</name>
      <anchorfile>classpion_1_1_pion_plugin_1_1_open_plugin_exception.html</anchorfile>
      <anchor>0c3385a14235db6d2f36a45dda5f64db</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::PionPlugin::PionPluginData</name>
    <filename>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</filename>
    <member kind="function">
      <type></type>
      <name>PionPluginData</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>71d9f99b010b10974e3436b7195a323f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionPluginData</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>481199d8588b319f2f98c568c8d2f9a0</anchor>
      <arglist>(const std::string &amp;plugin_name)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionPluginData</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>a844e60cb688b3ee0397f49aa289b224</anchor>
      <arglist>(const PionPluginData &amp;p)</arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>m_lib_handle</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>d1d37d3a2b594e26c832a3143c296ccf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>m_create_func</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>61c3404d7239b7907833834ec5e46dd0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void *</type>
      <name>m_destroy_func</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>b5634c6289f8608868603a76ddb4b300</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>m_plugin_name</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>ed132387130f9a5c702e57ce1f2cd43c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned long</type>
      <name>m_references</name>
      <anchorfile>structpion_1_1_pion_plugin_1_1_pion_plugin_data.html</anchorfile>
      <anchor>784ecb46143e4394c4bb69aad5ed294b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPlugin::PluginMissingCreateException</name>
    <filename>classpion_1_1_pion_plugin_1_1_plugin_missing_create_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>PluginMissingCreateException</name>
      <anchorfile>classpion_1_1_pion_plugin_1_1_plugin_missing_create_exception.html</anchorfile>
      <anchor>bf29de75f3f607bad6ea3f93bcd0fb5c</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPlugin::PluginMissingDestroyException</name>
    <filename>classpion_1_1_pion_plugin_1_1_plugin_missing_destroy_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>PluginMissingDestroyException</name>
      <anchorfile>classpion_1_1_pion_plugin_1_1_plugin_missing_destroy_exception.html</anchorfile>
      <anchor>25ef23bd609ea6d8b29efd3090ffed80</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPlugin::PluginNotFoundException</name>
    <filename>classpion_1_1_pion_plugin_1_1_plugin_not_found_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>PluginNotFoundException</name>
      <anchorfile>classpion_1_1_pion_plugin_1_1_plugin_not_found_exception.html</anchorfile>
      <anchor>f08eca999670b7a5ba66c10faad56a9a</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPlugin::PluginUndefinedException</name>
    <filename>classpion_1_1_pion_plugin_1_1_plugin_undefined_exception.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual const char *</type>
      <name>what</name>
      <anchorfile>classpion_1_1_pion_plugin_1_1_plugin_undefined_exception.html</anchorfile>
      <anchor>0030863c024a20f3851ec72b9f8b01cc</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPluginPtr</name>
    <filename>classpion_1_1_pion_plugin_ptr.html</filename>
    <templarg>InterfaceClassType</templarg>
    <base>pion::PionPlugin</base>
    <member kind="function">
      <type></type>
      <name>PionPluginPtr</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>bd34b7e791a8891b7b342b27df019f17</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionPluginPtr</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>f850b4536919c81701ee4a53d9b830f3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionPluginPtr</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>33d6a6266b62623a86ffcaf532e9526e</anchor>
      <arglist>(const PionPluginPtr &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>PionPluginPtr &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>ea2b4c2acfc51f5eae555708efc70143</anchor>
      <arglist>(const PionPluginPtr &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>InterfaceClassType *</type>
      <name>create</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>d61b3cdbf944d544a9033843c3e3c22e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>destroy</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>ba0794135fb4c5ab8f9b5d60afcb97a0</anchor>
      <arglist>(InterfaceClassType *object_ptr)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>InterfaceClassType *</type>
      <name>CreateObjectFunction</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>822eb1569012ef10edff30dcc7c6c7b3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>void</type>
      <name>DestroyObjectFunction</name>
      <anchorfile>classpion_1_1_pion_plugin_ptr.html</anchorfile>
      <anchor>d46fb6967592fcce7ab1ab047a1adefb</anchor>
      <arglist>(InterfaceClassType *)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionPoolAllocator</name>
    <filename>classpion_1_1_pion_pool_allocator.html</filename>
    <templarg>MinSize</templarg>
    <templarg>MaxSize</templarg>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionPoolAllocator</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>58bbf3694f2c07b53f6448bb837a2f57</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionPoolAllocator</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>db91bd7cf02ff9d3d701ec7db1010578</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>malloc</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>25d048f6f9c199ee3b48aa9ff5edfeb4</anchor>
      <arglist>(std::size_t n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>free</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>e1149f1f153c6b737ba6795d48e531eb</anchor>
      <arglist>(void *ptr, std::size_t n)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>release_memory</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>2e37b62bb621b91c0b6d57e38651698c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>void *</type>
      <name>FreeListPtr</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>82bf0f17c486ef0eb8feec402bc79661</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue" protection="protected">
      <type>@</type>
      <name>NumberOfAllocs</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>91d3377851406d2b94f06ad4777264105d76c317df21f0ed6342a6fa3c3e5eac</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>BOOST_STATIC_ASSERT</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>d18a4565b0671bf855032985e0b987dd</anchor>
      <arglist>(MaxSize &gt;=MinSize)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>BOOST_STATIC_ASSERT</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>c746696d133a50216395c45c06f3ae99</anchor>
      <arglist>(MaxSize%MinSize==0)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>FixedSizeAlloc *</type>
      <name>getPool</name>
      <anchorfile>classpion_1_1_pion_pool_allocator.html</anchorfile>
      <anchor>14b29e5c3137f61ca9825c462d55f7c8</anchor>
      <arglist>(const std::size_t n)</arglist>
    </member>
    <class kind="struct">pion::PionPoolAllocator::FixedSizeAlloc</class>
  </compound>
  <compound kind="struct">
    <name>pion::PionPoolAllocator::FixedSizeAlloc</name>
    <filename>structpion_1_1_pion_pool_allocator_1_1_fixed_size_alloc.html</filename>
    <member kind="function">
      <type></type>
      <name>FixedSizeAlloc</name>
      <anchorfile>structpion_1_1_pion_pool_allocator_1_1_fixed_size_alloc.html</anchorfile>
      <anchor>f4cd9d4fe7c1e92652d256f3b0c42256</anchor>
      <arglist>(std::size_t size)</arglist>
    </member>
    <member kind="variable">
      <type>boost::mutex</type>
      <name>m_mutex</name>
      <anchorfile>structpion_1_1_pion_pool_allocator_1_1_fixed_size_alloc.html</anchorfile>
      <anchor>b5dfb759b522cdb154eb8fcd9c6f30a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::size_t</type>
      <name>m_size</name>
      <anchorfile>structpion_1_1_pion_pool_allocator_1_1_fixed_size_alloc.html</anchorfile>
      <anchor>c550738893d3270f01869e48364e4e09</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>boost::pool</type>
      <name>m_pool</name>
      <anchorfile>structpion_1_1_pion_pool_allocator_1_1_fixed_size_alloc.html</anchorfile>
      <anchor>9875125c4594e01c3f376c76f15a5a0c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>FreeListPtr</type>
      <name>m_free_ptr</name>
      <anchorfile>structpion_1_1_pion_pool_allocator_1_1_fixed_size_alloc.html</anchorfile>
      <anchor>1002725115ac30dbfef5bb0c23ff36d6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionScheduler</name>
    <filename>classpion_1_1_pion_scheduler.html</filename>
    <member kind="function">
      <type></type>
      <name>PionScheduler</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>abf4b863df740ed21cbeca81eb949309</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionScheduler</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>b2ea53b280ba2b5bee50ca7762c34ab6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>startup</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>6de3810eec0bd31a4a52d3fdc1e35e77</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>shutdown</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>08d1f4d1beb00931680911427382a9fa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>join</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>a454e05eab610f1c4b31508e2345cc06</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addActiveUser</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>c5324fa531a7c7b8ba311fce69da2cbe</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeActiveUser</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>d6ccd2dd772b5ef3679bbce1a29703c4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isRunning</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>0d0e54bc4137e9982def1a46b12c8d23</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setNumThreads</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>77a5d072acb5d6ef4a2c5c2307675c06</anchor>
      <arglist>(const boost::uint32_t n)</arglist>
    </member>
    <member kind="function">
      <type>boost::uint32_t</type>
      <name>getNumThreads</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>52966a6e5c3d6aeb694edac2cd61f85e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>f6854690a6dde4d634545eb0a4e7e131</anchor>
      <arglist>(PionLogger log_ptr)</arglist>
    </member>
    <member kind="function">
      <type>PionLogger</type>
      <name>getLogger</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>d3500a781ed003451f8bd8d735f2e6d4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual boost::asio::io_service &amp;</type>
      <name>getIOService</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>7574d9efe6350182db6614b5b17f83b1</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>post</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>f7bd1d63ae867c8b0703ce5c10ca59db</anchor>
      <arglist>(boost::function0&lt; void &gt; work_func)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>keepRunning</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>8a42595f75dfe9f995a251501e40e7f6</anchor>
      <arglist>(boost::asio::io_service &amp;my_service, boost::asio::deadline_timer &amp;my_timer)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>processServiceWork</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>4bfb9d3ca45d89d4cb49eb6620b56ae4</anchor>
      <arglist>(boost::asio::io_service &amp;service)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>sleep</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>20d0e02515bfb301430f534592cf8dc9</anchor>
      <arglist>(boost::uint32_t sleep_sec, boost::uint32_t sleep_nsec)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>sleep</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>de31274b6e6f1cda28307832ac5b4427</anchor>
      <arglist>(ConditionType &amp;wakeup_condition, LockType &amp;wakeup_lock, boost::uint32_t sleep_sec, boost::uint32_t sleep_nsec)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>stopServices</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>1a75afc90ea047d950377d0755b24849</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>stopThreads</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>58ba625f7be832dd942e3af7d05ec9fc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>finishServices</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>d2b479f2b4aecf56bee5528d0adae479</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>finishThreads</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>d73a6044ede6a3e01e78fd5df343a52e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static boost::xtime</type>
      <name>getWakeupTime</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>38ba25b41980b2208cc5baf8bbb45af6</anchor>
      <arglist>(boost::uint32_t sleep_sec, boost::uint32_t sleep_nsec)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::mutex</type>
      <name>m_mutex</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>de8ef55d56dc1fcf775f620022309db2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PionLogger</type>
      <name>m_logger</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>180ef006f82fccb3e95f13e515444c6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::condition</type>
      <name>m_no_more_active_users</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>d8a9c61bdf7addd65bcfe0f718203a8c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::condition</type>
      <name>m_scheduler_has_stopped</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>385cac16d0f66fdad842a1b595479d27</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::uint32_t</type>
      <name>m_num_threads</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>da8ab64e35c9205b1f95ce7f1eb44826</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::uint32_t</type>
      <name>m_active_users</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>aad4b5e970ecefea3c90f0e514b3e297</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>m_is_running</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>291dbc552d9f65c62ca362784886a4f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>DEFAULT_NUM_THREADS</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>f73bd5eb31a8c4cdd9baee96e9348fd8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>NSEC_IN_SECOND</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>4fa6eb8c61efa9797c4bb545ad839f2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>MICROSEC_IN_SECOND</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>f6bad0193b29088fe635e16cf7b29c2a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>KEEP_RUNNING_TIMER_SECONDS</name>
      <anchorfile>classpion_1_1_pion_scheduler.html</anchorfile>
      <anchor>6153b56894dac85e1512d58d888874d0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionMultiThreadScheduler</name>
    <filename>classpion_1_1_pion_multi_thread_scheduler.html</filename>
    <base>pion::PionScheduler</base>
    <member kind="function">
      <type></type>
      <name>PionMultiThreadScheduler</name>
      <anchorfile>classpion_1_1_pion_multi_thread_scheduler.html</anchorfile>
      <anchor>2798b1613f9a2a7c9f7949374f45c9a8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionMultiThreadScheduler</name>
      <anchorfile>classpion_1_1_pion_multi_thread_scheduler.html</anchorfile>
      <anchor>fdb3d6fda339b209760a39e79b35519f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>std::vector&lt; boost::shared_ptr&lt; boost::thread &gt; &gt;</type>
      <name>ThreadPool</name>
      <anchorfile>classpion_1_1_pion_multi_thread_scheduler.html</anchorfile>
      <anchor>eaac2abc9b0488d97ef9a3cc68c0749c</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>stopThreads</name>
      <anchorfile>classpion_1_1_pion_multi_thread_scheduler.html</anchorfile>
      <anchor>4122e48ff2dff4791f6c89f8b73bcf71</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>finishThreads</name>
      <anchorfile>classpion_1_1_pion_multi_thread_scheduler.html</anchorfile>
      <anchor>86de9ce095b810d893656d858f3f2581</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>ThreadPool</type>
      <name>m_thread_pool</name>
      <anchorfile>classpion_1_1_pion_multi_thread_scheduler.html</anchorfile>
      <anchor>a0dad8a452d8e25474dc84098a8987cc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionSingleServiceScheduler</name>
    <filename>classpion_1_1_pion_single_service_scheduler.html</filename>
    <base>pion::PionMultiThreadScheduler</base>
    <member kind="function">
      <type></type>
      <name>PionSingleServiceScheduler</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>7fb0c17c59b87087c32c16d7c38b1fed</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionSingleServiceScheduler</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>c70fe312a65c95d1a264e95f05533aa5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual boost::asio::io_service &amp;</type>
      <name>getIOService</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>06929d305e9ef4016cc86eff10b92bc5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>startup</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>8e8aca776a19e0da5975d28cae7c2558</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>stopServices</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>955609daf28e2b23621002d1d5e451b2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>finishServices</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>9ab49f0a970a3cc4cae42a0fd89e74aa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::asio::io_service</type>
      <name>m_service</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>e390094bfc25b153c89030090169e86c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::asio::deadline_timer</type>
      <name>m_timer</name>
      <anchorfile>classpion_1_1_pion_single_service_scheduler.html</anchorfile>
      <anchor>ec5b828f8f2ac6c8616b907c8774cd08</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PionOneToOneScheduler</name>
    <filename>classpion_1_1_pion_one_to_one_scheduler.html</filename>
    <base>pion::PionMultiThreadScheduler</base>
    <member kind="function">
      <type></type>
      <name>PionOneToOneScheduler</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>5f6d4de1b6ea18278950377bf897b100</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionOneToOneScheduler</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>825ac196e323fc6358fc99696e22320e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual boost::asio::io_service &amp;</type>
      <name>getIOService</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>ef051462da5673d923f36d0f547efb07</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual boost::asio::io_service &amp;</type>
      <name>getIOService</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>a7a2513892b21fd323439cc4309039c1</anchor>
      <arglist>(boost::uint32_t n)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>startup</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>900ce08aa0e6880c77e37c36cd0b15af</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>std::vector&lt; boost::shared_ptr&lt; ServicePair &gt; &gt;</type>
      <name>ServicePool</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>dc9babc495c1b9f007b917bc2e55d25c</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>stopServices</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>522be0d7d4dfaedba47e67b781803410</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>finishServices</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>2fe653f0245dbc70d67925ab6aeed673</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>ServicePool</type>
      <name>m_service_pool</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>f8b1cf8271e272cd05d685c8c4189682</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::uint32_t</type>
      <name>m_next_service</name>
      <anchorfile>classpion_1_1_pion_one_to_one_scheduler.html</anchorfile>
      <anchor>a39d30496f26e71f980972a673737660</anchor>
      <arglist></arglist>
    </member>
    <class kind="struct">pion::PionOneToOneScheduler::ServicePair</class>
  </compound>
  <compound kind="struct">
    <name>pion::PionOneToOneScheduler::ServicePair</name>
    <filename>structpion_1_1_pion_one_to_one_scheduler_1_1_service_pair.html</filename>
    <member kind="function">
      <type></type>
      <name>ServicePair</name>
      <anchorfile>structpion_1_1_pion_one_to_one_scheduler_1_1_service_pair.html</anchorfile>
      <anchor>a202f65bbe1b376e15d6b6e13c1e3382</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>boost::asio::io_service</type>
      <name>first</name>
      <anchorfile>structpion_1_1_pion_one_to_one_scheduler_1_1_service_pair.html</anchorfile>
      <anchor>50caba71bd1916e513623f39d41b81da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>boost::asio::deadline_timer</type>
      <name>second</name>
      <anchorfile>structpion_1_1_pion_one_to_one_scheduler_1_1_service_pair.html</anchorfile>
      <anchor>914976812387053ec880c92b4412c721</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PluginManager</name>
    <filename>classpion_1_1_plugin_manager.html</filename>
    <templarg>PLUGIN_TYPE</templarg>
    <member kind="typedef">
      <type>boost::function1&lt; void, PLUGIN_TYPE * &gt;</type>
      <name>PluginRunFunction</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>84fcb9e5c2563c2fdc98c80ad068d18c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::function1&lt; boost::uint64_t, const PLUGIN_TYPE * &gt;</type>
      <name>PluginStatFunction</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>bb338cf31f477dcbb6263c806808cd33</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PluginManager</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>234cb40d7c31bee524e2b9a14032328f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PluginManager</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>fd4a8a19dd9f46a09c0419842b5414dc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>457bf22f0c9c1a99e294dc48fa6f9167</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>784cf89f562f850d004b4907ea926d93</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>5a1dd110f80ce4e2cb4c978defe5a5b7</anchor>
      <arglist>(const std::string &amp;plugin_id, PLUGIN_TYPE *plugin_object_ptr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>remove</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>961a2a040cb0925953398432f43afd2a</anchor>
      <arglist>(const std::string &amp;plugin_id)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>replace</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>21b1b788f26be21a014164d4e9335c13</anchor>
      <arglist>(const std::string &amp;plugin_id, PLUGIN_TYPE *plugin_ptr)</arglist>
    </member>
    <member kind="function">
      <type>PLUGIN_TYPE *</type>
      <name>clone</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>f6f1baf759b1908540559d0294dda604</anchor>
      <arglist>(const std::string &amp;plugin_id)</arglist>
    </member>
    <member kind="function">
      <type>PLUGIN_TYPE *</type>
      <name>load</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>9c9bbc3656de1d56670a6b23335cf736</anchor>
      <arglist>(const std::string &amp;plugin_id, const std::string &amp;plugin_type)</arglist>
    </member>
    <member kind="function">
      <type>PLUGIN_TYPE *</type>
      <name>get</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>5da2fd956ba48878c32d44f6f62c04fc</anchor>
      <arglist>(const std::string &amp;plugin_id)</arglist>
    </member>
    <member kind="function">
      <type>const PLUGIN_TYPE *</type>
      <name>get</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>a80c6c25096195506839107526e64c30</anchor>
      <arglist>(const std::string &amp;plugin_id) const </arglist>
    </member>
    <member kind="function">
      <type>PionPluginPtr&lt; PLUGIN_TYPE &gt;</type>
      <name>getLibPtr</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>d1d7a2e4ed966af3fe05b74ac4159468</anchor>
      <arglist>(const std::string &amp;plugin_id) const </arglist>
    </member>
    <member kind="function">
      <type>PLUGIN_TYPE *</type>
      <name>find</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>ecb7e9ad695760383b68984985a39841</anchor>
      <arglist>(const std::string &amp;resource)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>acd10f940ddd9650d24a91d79a9df929</anchor>
      <arglist>(PluginRunFunction run_func)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>0186bc3a0d3e0ef1c536e2b02d41a329</anchor>
      <arglist>(const std::string &amp;plugin_id, PluginRunFunction run_func)</arglist>
    </member>
    <member kind="function">
      <type>boost::uint64_t</type>
      <name>getStatistic</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>858c63af532d772270418df0e46b5e46</anchor>
      <arglist>(PluginStatFunction stat_func) const </arglist>
    </member>
    <member kind="function">
      <type>boost::uint64_t</type>
      <name>getStatistic</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>903a76e4ffc6051f3bd3d473cf26cbde</anchor>
      <arglist>(const std::string &amp;plugin_id, PluginStatFunction stat_func) const </arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PluginMap</type>
      <name>m_plugin_map</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>2b64cffb78aa375ab4f8520ea6395968</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::mutex</type>
      <name>m_plugin_mutex</name>
      <anchorfile>classpion_1_1_plugin_manager.html</anchorfile>
      <anchor>0958ce38207660bf6fb8dc1124037b93</anchor>
      <arglist></arglist>
    </member>
    <class kind="class">pion::PluginManager::DuplicatePluginException</class>
    <class kind="class">pion::PluginManager::PluginMap</class>
    <class kind="class">pion::PluginManager::PluginNotFoundException</class>
  </compound>
  <compound kind="class">
    <name>pion::PluginManager::DuplicatePluginException</name>
    <filename>classpion_1_1_plugin_manager_1_1_duplicate_plugin_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>DuplicatePluginException</name>
      <anchorfile>classpion_1_1_plugin_manager_1_1_duplicate_plugin_exception.html</anchorfile>
      <anchor>149c82e5441e70d07b95874bc8014603</anchor>
      <arglist>(const std::string &amp;plugin_id)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PluginManager::PluginMap</name>
    <filename>classpion_1_1_plugin_manager_1_1_plugin_map.html</filename>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1_plugin_manager_1_1_plugin_map.html</anchorfile>
      <anchor>670a96cfe235723fecc7e36a1bcbbd46</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PluginMap</name>
      <anchorfile>classpion_1_1_plugin_manager_1_1_plugin_map.html</anchorfile>
      <anchor>bf7cb55c7bba2e0181c506615e81026e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PluginMap</name>
      <anchorfile>classpion_1_1_plugin_manager_1_1_plugin_map.html</anchorfile>
      <anchor>1ae66904bb096f2defe5c39cc2e3a603</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::PluginManager::PluginNotFoundException</name>
    <filename>classpion_1_1_plugin_manager_1_1_plugin_not_found_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>PluginNotFoundException</name>
      <anchorfile>classpion_1_1_plugin_manager_1_1_plugin_not_found_exception.html</anchorfile>
      <anchor>b6a718014262eafd5074c9dbb6e7b175</anchor>
      <arglist>(const std::string &amp;plugin_id)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pion::net</name>
    <filename>namespacepion_1_1net.html</filename>
    <class kind="class">pion::net::HTTPAuth</class>
    <class kind="class">pion::net::HTTPBasicAuth</class>
    <class kind="class">pion::net::HTTPCookieAuth</class>
    <class kind="class">pion::net::HTTPMessage</class>
    <class kind="class">pion::net::HTTPParser</class>
    <class kind="class">pion::net::HTTPReader</class>
    <class kind="class">pion::net::HTTPRequest</class>
    <class kind="class">pion::net::HTTPRequestReader</class>
    <class kind="class">pion::net::HTTPRequestWriter</class>
    <class kind="class">pion::net::HTTPResponse</class>
    <class kind="class">pion::net::HTTPResponseReader</class>
    <class kind="class">pion::net::HTTPResponseWriter</class>
    <class kind="class">pion::net::HTTPServer</class>
    <class kind="struct">pion::net::HTTPTypes</class>
    <class kind="class">pion::net::HTTPWriter</class>
    <class kind="class">pion::net::PionUser</class>
    <class kind="class">pion::net::PionUserManager</class>
    <class kind="class">pion::net::TCPConnection</class>
    <class kind="class">pion::net::TCPServer</class>
    <class kind="class">pion::net::TCPStreamBuffer</class>
    <class kind="class">pion::net::TCPStream</class>
    <class kind="class">pion::net::TCPTimer</class>
    <class kind="class">pion::net::WebServer</class>
    <class kind="class">pion::net::WebService</class>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPAuth &gt;</type>
      <name>HTTPAuthPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>49eb0b27d4f579b57ffea6fea8eb7f3e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPRequest &gt;</type>
      <name>HTTPRequestPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>5d6280ef9c5b2df13630ae1c1dea66d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPRequestReader &gt;</type>
      <name>HTTPRequestReaderPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>d03f5b1024f759952b994b9356f4f740</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPRequestWriter &gt;</type>
      <name>HTTPRequestWriterPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>8fe2e7cdc70ca6cfcf1f31270fe5f1f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPResponse &gt;</type>
      <name>HTTPResponsePtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>8ad929ff246a3a61db0b0b4f1db00461</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPResponseReader &gt;</type>
      <name>HTTPResponseReaderPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>cc2fe73f1d61fd1bccb0152887bbbaa5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPResponseWriter &gt;</type>
      <name>HTTPResponseWriterPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>5723e348af6a834664f08a535ece6edb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPServer &gt;</type>
      <name>HTTPServerPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>2ce69303f2c0e1ee7d6a164354876572</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; HTTPWriter &gt;</type>
      <name>HTTPWriterPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>6fbd310f72d06acce0956f91d0348c51</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; PionUser &gt;</type>
      <name>PionUserPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>e1e7b184580d8203f04c9bb34da164a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; PionUserManager &gt;</type>
      <name>PionUserManagerPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>41439dd0d2404c0202b0f14dc39f120f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; TCPConnection &gt;</type>
      <name>TCPConnectionPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>e66ec40cd9d138619b1142311e8fee59</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; TCPServer &gt;</type>
      <name>TCPServerPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>c4f5a920d329693e2b02f48855723634</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; TCPTimer &gt;</type>
      <name>TCPTimerPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>17182035cc87bfceeb60e49bf015a51d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; WebServer &gt;</type>
      <name>WebServerPtr</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>628658e1a9be9b98ca33d28e3d9074e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>HTTPRequestWriterPtr &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>c149697e81d7e37cd58debf9fa2805bb</anchor>
      <arglist>(HTTPRequestWriterPtr &amp;writer, const T &amp;data)</arglist>
    </member>
    <member kind="function">
      <type>HTTPResponseWriterPtr &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>1375d81a5382e370c970177b2055e84f</anchor>
      <arglist>(HTTPResponseWriterPtr &amp;writer, const T &amp;data)</arglist>
    </member>
    <member kind="function">
      <type>HTTPWriterPtr &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>namespacepion_1_1net.html</anchorfile>
      <anchor>d6fde8687deb7efe7eb3282df9294a05</anchor>
      <arglist>(HTTPWriterPtr &amp;writer, const T &amp;data)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPAuth</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_auth.html</filename>
    <member kind="function">
      <type></type>
      <name>HTTPAuth</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>c4c218232fcda6a3e744123e918fb881</anchor>
      <arglist>(PionUserManagerPtr userManager)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPAuth</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>6eb08e859336444b5ea9e2744fdadbed</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>handleRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>3f3e04dfd53fcdea33abcc28d9accfa0</anchor>
      <arglist>(HTTPRequestPtr &amp;request, TCPConnectionPtr &amp;tcp_conn)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOption</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>26327876fd6c6235de8e7810451a2ebd</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addRestrict</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>ed60a271d2e985b419528cc09f1e86c9</anchor>
      <arglist>(const std::string &amp;resource)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addPermit</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>1a1bd145c487c241cc0ff778634a8bcb</anchor>
      <arglist>(const std::string &amp;resource)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addUser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>077a2ec3f253088a4ec788db99dcc267</anchor>
      <arglist>(std::string const &amp;username, std::string const &amp;password)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>updateUser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>a7467622f711792ceec30dfb4e09b0f8</anchor>
      <arglist>(std::string const &amp;username, std::string const &amp;password)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>removeUser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>b70eecb6d11db4aad6355df488f84a94</anchor>
      <arglist>(std::string const &amp;username)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual PionUserPtr</type>
      <name>getUser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>42ae474f32ae1e4fa2ee7aeae94d86f3</anchor>
      <arglist>(std::string const &amp;username)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>std::set&lt; std::string &gt;</type>
      <name>AuthResourceSet</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>be842882811dd50c6ce2ebdd157a30a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>needAuthentication</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>563b0198cecf4c7d94210e5b2698a0de</anchor>
      <arglist>(HTTPRequestPtr const &amp;http_request) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>findResource</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>3b61442fa2593f5bfc2e23c2d08c960d</anchor>
      <arglist>(const AuthResourceSet &amp;resource_set, const std::string &amp;resource) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>c6cc25dffc6f6fc811f486aec4b775a6</anchor>
      <arglist>(PionLogger log_ptr)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PionLogger</type>
      <name>m_logger</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>e0ec1e7d0df760c13b2a908bbcdd0726</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PionUserManagerPtr</type>
      <name>m_user_manager</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>d779dd96189399d4e6e3c7e73b5e647b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>AuthResourceSet</type>
      <name>m_restrict_list</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>0ddf74e2203e39c1f1bf9e936f6c8fc0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>AuthResourceSet</type>
      <name>m_white_list</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>7e556007e5f8c7e61b90866c4dcf5865</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::mutex</type>
      <name>m_resource_mutex</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth.html</anchorfile>
      <anchor>f5826f71143dd15557828f08256e0e19</anchor>
      <arglist></arglist>
    </member>
    <class kind="class">pion::net::HTTPAuth::UnknownOptionException</class>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPAuth::UnknownOptionException</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_auth_1_1_unknown_option_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>UnknownOptionException</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_auth_1_1_unknown_option_exception.html</anchorfile>
      <anchor>f43445ea5ac4efcfdf4be71db342e77b</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPBasicAuth</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</filename>
    <base>pion::net::HTTPAuth</base>
    <member kind="function">
      <type></type>
      <name>HTTPBasicAuth</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</anchorfile>
      <anchor>b30e0f80170d9cecf1634211cf823545</anchor>
      <arglist>(PionUserManagerPtr userManager, const std::string &amp;realm=&quot;PION:NET&quot;)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPBasicAuth</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</anchorfile>
      <anchor>9a95d32c28bdfa68b444b0c68090bc60</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>handleRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</anchorfile>
      <anchor>5741f98d021a4a1a2415511404eb3f4a</anchor>
      <arglist>(HTTPRequestPtr &amp;request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOption</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</anchorfile>
      <anchor>eb21f615fa80e4768de8dd4349373f90</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>handleUnauthorized</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</anchorfile>
      <anchor>75fb2739b464e5915579fdfae75303af</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>parseAuthorization</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</anchorfile>
      <anchor>eb897a96f000d020f5c4d26e0f95d3ca</anchor>
      <arglist>(std::string const &amp;authorization, std::string &amp;credentials)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>parseCredentials</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_basic_auth.html</anchorfile>
      <anchor>5d71f016c1781adcc6985625f207e1f2</anchor>
      <arglist>(std::string const &amp;credentials, std::string &amp;username, std::string &amp;password)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPCookieAuth</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</filename>
    <base>pion::net::HTTPAuth</base>
    <member kind="function">
      <type></type>
      <name>HTTPCookieAuth</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>20cdc867b1780399155c4e102f13f3d1</anchor>
      <arglist>(PionUserManagerPtr userManager, const std::string &amp;login=&quot;/login&quot;, const std::string &amp;logout=&quot;/logout&quot;, const std::string &amp;redirect=&quot;&quot;)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPCookieAuth</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>bbb463ec773cf4442bd66e20639ec9f8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>handleRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>cdeb81641620b766546b548a43611a22</anchor>
      <arglist>(HTTPRequestPtr &amp;request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOption</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>8b980a850b6ccbac7f0adedb01d66ca3</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>processLogin</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>aba91308018798e2c6e3cfaa3647f8a6</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>handleUnauthorized</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>5e0fd6081ba3171dbbefccf741ef3f7c</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>handleRedirection</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>779d644d132e13e9cb58348a7981454c</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn, const std::string &amp;redirection_url, const std::string &amp;new_cookie=&quot;&quot;, bool delete_cookie=false)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>handleOk</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>c3d27f929aea67d79b1b91c4c0905a70</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn, const std::string &amp;new_cookie=&quot;&quot;, bool delete_cookie=false)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>expireCache</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_cookie_auth.html</anchorfile>
      <anchor>559ddbba1f83d377e0b59b11bb55aa2b</anchor>
      <arglist>(const PionDateTime &amp;time_now)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPMessage</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_message.html</filename>
    <base>pion::net::HTTPTypes</base>
    <member kind="typedef">
      <type>std::vector&lt; boost::asio::const_buffer &gt;</type>
      <name>WriteBuffers</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>f5c0864ef7e05dbab79ae4f37de123b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; char &gt;</type>
      <name>ChunkCache</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>3f51e42afcccf433e7992b55b9797d13</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>STATUS_NONE</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>bea948e6ee65e2d477356d825ad005fa8c934eb1bef4a49a26f643c4b7a9bb55</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>STATUS_TRUNCATED</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>bea948e6ee65e2d477356d825ad005fa50920df97475523c872b9a38e3bd34e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>STATUS_PARTIAL</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>bea948e6ee65e2d477356d825ad005fa049d12b3e4ecfa9bb3d6f79482bd7794</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>STATUS_OK</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>bea948e6ee65e2d477356d825ad005fad1d7ef376a0dda2364f1d4cd2c95cccf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>DataStatus</name>
      <anchor>bea948e6ee65e2d477356d825ad005fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>7f734b38956a0efb3560a9541e9631d1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>592e9b615389da6dc29ce2e035be7d7b</anchor>
      <arglist>(const HTTPMessage &amp;http_msg)</arglist>
    </member>
    <member kind="function">
      <type>HTTPMessage &amp;</type>
      <name>operator=</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>5490b69f84242172dc2eb3618199aa79</anchor>
      <arglist>(const HTTPMessage &amp;http_msg)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>866ca9db793d2d190ab52f916e5fcbbf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>8c236c758e10f12f9f5fe1f87c3359d6</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>isContentLengthImplied</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>2e1f11b807fea5467fed3b0b5bac1956</anchor>
      <arglist>(void) const =0</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isValid</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>7a56ec5899a162678cc375a59d947162</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getChunksSupported</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>b28b7bf5c5cc38e7090be894b499a80c</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>boost::asio::ip::address &amp;</type>
      <name>getRemoteIp</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>50c4b35c37c3a8765b8f23e2bf8f6de5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>boost::uint16_t</type>
      <name>getVersionMajor</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>e9b018fd061bede8e96cd5a37f7fa025</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>boost::uint16_t</type>
      <name>getVersionMinor</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>35b76de7f81cb2c5412b5aafea9bd6f6</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getVersionString</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>6c1f5fa161708ac38e81fd7d98c3791f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>getContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>9945ec749774b4022fdf0c1cefcd5719</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isChunked</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>2b4525b3120e32612b6be590c4bf3119</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>getContent</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>e64f08099223d5384b271e82423db42f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>getContent</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>3f1559293298215c517c54ce3b3c654e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>ChunkCache &amp;</type>
      <name>getChunkCache</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>35840b4265d96f46047477e00c001559</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>5a88c89a92133521dd80d2f385ec7218</anchor>
      <arglist>(const std::string &amp;key) const </arglist>
    </member>
    <member kind="function">
      <type>Headers &amp;</type>
      <name>getHeaders</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>5d9e7f8244aa0b2c96790bc0c56dd55b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>4b534907f8e97cbdbef2076d6e295026</anchor>
      <arglist>(const std::string &amp;key) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>228144ce8134496b05e9443095f5fc4f</anchor>
      <arglist>(const std::string &amp;key) const </arglist>
    </member>
    <member kind="function">
      <type>CookieParams &amp;</type>
      <name>getCookieParams</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>9bfb1686238166b48984e3785f4c1cce</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>9d6dfeb307706b38976106b64eb9504c</anchor>
      <arglist>(const std::string &amp;key) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>bfc52c64606c0ef3481c1a09b88ab762</anchor>
      <arglist>(const std::string &amp;key, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>8b178018becea6e2d8fd3f6fdf25622d</anchor>
      <arglist>(const std::string &amp;key, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>50fe3261e146da99d0c0e46691077beb</anchor>
      <arglist>(const std::string &amp;key)</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getFirstLine</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>13d024f187226c02a2dc892a5aaad6d9</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasMissingPackets</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>3fb111f8dde7b62d216808dec80eccd7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMissingPackets</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>34cb2895f113b5fa2fc9ecf1906092ea</anchor>
      <arglist>(bool newVal)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasDataAfterMissingPackets</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>883907411031d420ebc60e0ed57cd8b7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDataAfterMissingPacket</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>2ad81669c9dcad46c1f4622b1914239e</anchor>
      <arglist>(bool newVal)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setIsValid</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>8741a9fe76fc1dbddc851bb6f6947493</anchor>
      <arglist>(bool b=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setChunksSupported</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>a5b792616fc5adee5c862cbb546d2285</anchor>
      <arglist>(bool b)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRemoteIp</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>8ac8c261c35d84765adb913843015cb0</anchor>
      <arglist>(const boost::asio::ip::address &amp;ip)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setVersionMajor</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>583f3a9b920a06e1eeab292e954bb4bb</anchor>
      <arglist>(const boost::uint16_t n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setVersionMinor</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>5669c516e76dea00d69023e0ae562f7e</anchor>
      <arglist>(const boost::uint16_t n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>225d96b806b0f07a9eda475451bcf9dd</anchor>
      <arglist>(const std::size_t n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDoNotSendContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>90e3fbc823ebc26131faf5439df98f10</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>DataStatus</type>
      <name>getStatus</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>9d43746b9be2f30a64b853781bf020b0</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setStatus</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>7b9ec16a15dcae8adf4a1653b25616d2</anchor>
      <arglist>(DataStatus newVal)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>updateContentLengthUsingHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>b47b277bba71eb2859f17e1341498a94</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>updateTransferCodingUsingHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>e708404c10a70207f9c8c3d80a304248</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>createContentBuffer</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>c27f2a47b9512984c6d3ed51e67e789d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setContentType</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>5b5b5c9e1b8c7284c800df696c75c930</anchor>
      <arglist>(const std::string &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>5cd96e8fc190d6d295eff7fd6a05b48a</anchor>
      <arglist>(const std::string &amp;key, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>31533e707895b2daf6c89d0600ba7952</anchor>
      <arglist>(const std::string &amp;key, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>c3403d7455a6e796a8a91a7abd88c9f2</anchor>
      <arglist>(const std::string &amp;key)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>checkKeepAlive</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>572f4881331413bece7e57af3de8f433</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>prepareBuffersForSend</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>f05ca4245f86a150bea62081f3048124</anchor>
      <arglist>(WriteBuffers &amp;write_buffers, const bool keep_alive, const bool using_chunks)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>send</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>84203b72b2b9625116682c3b5835fb72</anchor>
      <arglist>(TCPConnection &amp;tcp_conn, boost::system::error_code &amp;ec)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>receive</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>b66d6f72f7d1c359fe1e149177f3cb1a</anchor>
      <arglist>(TCPConnection &amp;tcp_conn, boost::system::error_code &amp;ec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>concatenateChunks</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>a813ba7a1dce7ccddc1cb7b908006f99</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>prepareHeadersForSend</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>45b6ef32a30730fbe8c1afec60d425b5</anchor>
      <arglist>(const bool keep_alive, const bool using_chunks)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>appendHeaders</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>5d93bfb797fbf542ec05d98bd04a8243</anchor>
      <arglist>(WriteBuffers &amp;write_buffers)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>clearFirstLine</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>8ef558467d51e92770cd5173737a3a3b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>updateFirstLine</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>03491e8e5c10e886d7787fa7a8b7a933</anchor>
      <arglist>(void) const =0</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static const std::string &amp;</type>
      <name>getValue</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>06c7c375b2a149c482dbe8f57c2b2b0c</anchor>
      <arglist>(const DictionaryType &amp;dict, const std::string &amp;key)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static void</type>
      <name>changeValue</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>e16482d04ca8cd5942f3fddc3187205a</anchor>
      <arglist>(DictionaryType &amp;dict, const std::string &amp;key, const std::string &amp;value)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static void</type>
      <name>deleteValue</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>27cc91e8ef1102d89d121e84b8acc04e</anchor>
      <arglist>(DictionaryType &amp;dict, const std::string &amp;key)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>m_first_line</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_message.html</anchorfile>
      <anchor>0e65511480a8f3c82dd0311912f7b7a4</anchor>
      <arglist></arglist>
    </member>
    <class kind="struct">pion::net::HTTPMessage::ReceiveError</class>
  </compound>
  <compound kind="struct">
    <name>pion::net::HTTPMessage::ReceiveError</name>
    <filename>structpion_1_1net_1_1_h_t_t_p_message_1_1_receive_error.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ReceiveError</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_message_1_1_receive_error.html</anchorfile>
      <anchor>677eda9b1ce8532c410ac85a222cd876</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const char *</type>
      <name>name</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_message_1_1_receive_error.html</anchorfile>
      <anchor>07c4e222877d460eb4f7bf877a94b515</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>message</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_message_1_1_receive_error.html</anchorfile>
      <anchor>95d65408f4705614a7e6546bc6dfbdeb</anchor>
      <arglist>(int ev) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPParser</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_parser.html</filename>
    <member kind="function">
      <type></type>
      <name>HTTPParser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>776a8378586ece49d07f954fe5c7f9cd</anchor>
      <arglist>(const bool is_request, std::size_t max_content_length=DEFAULT_CONTENT_MAX)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPParser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>7741fab07c210b73994b031cb9e36658</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::tribool</type>
      <name>parse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>450e7a7a4c84afdfea735e45871fdfc1</anchor>
      <arglist>(HTTPMessage &amp;http_msg)</arglist>
    </member>
    <member kind="function">
      <type>boost::tribool</type>
      <name>parseMissingData</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>a6bd7d9a08d575a88aec8b91d65cbe83</anchor>
      <arglist>(HTTPMessage &amp;http_msg, std::size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>finish</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>83fc56eb643b4afdae3b566d5e68220d</anchor>
      <arglist>(HTTPMessage &amp;http_msg) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setReadBuffer</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>24023fdadcccbf6deb536055a30f6cf0</anchor>
      <arglist>(const char *ptr, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadReadPosition</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>7e465ebe75416fa00586f1238e73c03b</anchor>
      <arglist>(const char *&amp;read_ptr, const char *&amp;read_end_ptr) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>checkPrematureEOF</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>285653cf89377a547dbefb452831fcf1</anchor>
      <arglist>(HTTPMessage &amp;http_msg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>8b940378889fc5aefa61ef871d2b6f00</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>eof</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>6190de184276528cabaf4648d59d3bc0</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>bytes_available</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>97e86fabd35d3656f4aec5afd1075244</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>gcount</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>8b11737293e0a2b617f9b8715796515f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>getTotalBytesRead</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>231b404dd8250d202481d859a42680db</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>getContentBytesRead</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>cf91f5c10890a5a380e63db9eb38e272</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>getMaxContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>07769e093105bca08076c76592e3be81</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getRawHeaders</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>1b01ac96a5cc36086e6cb0d7d740499f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getSaveRawHeaders</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>0372501f88d0d2ae014f309a0b1d6036</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isParsingRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>a7c90d4fc1b008b2118d3960a81b40de</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isParsingResponse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>4033f77e347241c7d02f8f35b3c30afe</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMaxContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>43fd3b6c38223c60ff88230a4a39d793</anchor>
      <arglist>(std::size_t n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetMaxContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>32214ac2be1f412d8f4825ac096324b2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSaveRawHeaders</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>b0620bde646e241a1341a52426862ab9</anchor>
      <arglist>(bool b)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>ea89631a33380a2d326cbf3d928cd0f1</anchor>
      <arglist>(PionLogger log_ptr)</arglist>
    </member>
    <member kind="function">
      <type>PionLogger</type>
      <name>getLogger</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>2b737c4d77025a8213bb9d04a997677d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>contentTypeIsUrlEncoded</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>b64c3586c434f51057ac320a96cfacf4</anchor>
      <arglist>(HTTPRequest &amp;http_request)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>parseURLEncoded</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>cb14285ae8bfbf8e2f026afc3906e77a</anchor>
      <arglist>(HTTPTypes::QueryParams &amp;dict, const char *ptr, const std::size_t len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>parseCookieHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>385cb266ce38ce7709049fcd0af085c2</anchor>
      <arglist>(HTTPTypes::CookieParams &amp;dict, const char *ptr, const std::size_t len, bool set_cookie_header)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>parseCookieHeader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>dffe57bbd26bf724ff0fb712504cf3b4</anchor>
      <arglist>(HTTPTypes::CookieParams &amp;dict, const std::string &amp;cookie_header, bool set_cookie_header)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>parseURLEncoded</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>6c98f37d882e62417ba3032e4673c2fd</anchor>
      <arglist>(HTTPTypes::QueryParams &amp;dict, const std::string &amp;query)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::size_t</type>
      <name>DEFAULT_CONTENT_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>e50d68030598ba2a9f8475179edbf398</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>boost::tribool</type>
      <name>parseHeaders</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>71858af1a78971cca63764900e4b255e</anchor>
      <arglist>(HTTPMessage &amp;http_msg)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>updateMessageWithHeaderData</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>c6211a4748e0480ddc765cbf89b8deb8</anchor>
      <arglist>(HTTPMessage &amp;http_msg) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>boost::tribool</type>
      <name>finishHeaderParsing</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>590be730e45ea17b7facd8e36bc6b913</anchor>
      <arglist>(HTTPMessage &amp;http_msg)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>boost::tribool</type>
      <name>parseChunks</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>68070cc190f935ffddd6be3d149988da</anchor>
      <arglist>(HTTPMessage::ChunkCache &amp;chunk_buffers)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>boost::tribool</type>
      <name>consumeContent</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>9fa69e3cd5d84098734c48b31c4149e4</anchor>
      <arglist>(HTTPMessage &amp;http_msg)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>std::size_t</type>
      <name>consumeContentAsNextChunk</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>5e8a3afc3ab4a7ec7d54e972f539d1d2</anchor>
      <arglist>(HTTPMessage::ChunkCache &amp;chunk_buffers)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static void</type>
      <name>computeMsgStatus</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>1bd923adaa4867eccc6591d8137c0b9d</anchor>
      <arglist>(HTTPMessage &amp;http_msg, bool msg_parsed_ok)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>isChar</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>511861d764184e8145f38275e5c5fa6c</anchor>
      <arglist>(int c)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>isControl</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>ac52ae6d53099d73e9d6d65c0b525ff4</anchor>
      <arglist>(int c)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>isSpecial</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>77fef6b52fe81fb5a91f145f35ad91dd</anchor>
      <arglist>(int c)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>isDigit</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>6c976d53db596d817ca0b82c642154f8</anchor>
      <arglist>(int c)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>isHexDigit</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>a529564ec63aa8e8ec234a734d3202ef</anchor>
      <arglist>(int c)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static bool</type>
      <name>isCookieAttribute</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>f95b22e50db62dd7475e308390e1bbfc</anchor>
      <arglist>(const std::string &amp;name, bool set_cookie_header)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PionLogger</type>
      <name>m_logger</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>822abf338fe18ecd34729afcb1298498</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const bool</type>
      <name>m_is_request</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>44ee011c9597863056d2166c58d23fe8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const char *</type>
      <name>m_read_ptr</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>e13ac336cf09a6897b589832ee6ab0da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const char *</type>
      <name>m_read_end_ptr</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>1819fb391a103b5fdffb81169e2ebb8e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>STATUS_MESSAGE_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>f549a3b6cd8828e6d952a7e19801480f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>METHOD_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>fa38a114f37ff980ec58f9da5c50b5db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>RESOURCE_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>4add415e3479ba4ffcfa4f3eeda356fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>QUERY_STRING_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>672c8779fee025dcde92569b6db010f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>HEADER_NAME_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>96da76034e15629e0f6e288ba288b406</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>HEADER_VALUE_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>7654ef1a379b7854c2d0490371733fbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>QUERY_NAME_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>0efa7c97831f9710d39adafdcf9edb02</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>QUERY_VALUE_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>2a671410687470793ee9ece4e0e2be7a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>COOKIE_NAME_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>acbdfeff150fc619bb43c82837a95a46</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static const boost::uint32_t</type>
      <name>COOKIE_VALUE_MAX</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_parser.html</anchorfile>
      <anchor>7d9f1a3615cb1546eb571be4bc2055cc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPReader</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_reader.html</filename>
    <base>pion::net::HTTPParser</base>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPReader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>09027d088329807b1956bd26c72a39a0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>receive</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>b2e83af5f7603588846d2771bd579f9c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>TCPConnectionPtr &amp;</type>
      <name>getTCPConnection</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>43dea60394fcaec331e3fa31c879538c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTimeout</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>7d7b9ba33b487654421574fffe064f1a</anchor>
      <arglist>(boost::uint32_t seconds)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPReader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>48103e8d32adc4861fc5ee0bb125fcd4</anchor>
      <arglist>(const bool is_request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>consumeBytes</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>3eaa31749674f6890c357a8dfb84a91c</anchor>
      <arglist>(const boost::system::error_code &amp;read_error, std::size_t bytes_read)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>consumeBytes</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>ab925a9a843fefb74a252a7a7dfd3a9b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>readBytes</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>544d3223a22a20894c4f3047d55599e3</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>finishedReading</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>435b53f6b46057df0b089a503f3b3a58</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual HTTPMessage &amp;</type>
      <name>getMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_reader.html</anchorfile>
      <anchor>1d919ba90b175f19def585e7b1fe9982</anchor>
      <arglist>(void)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPRequest</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_request.html</filename>
    <base>pion::net::HTTPMessage</base>
    <member kind="function">
      <type></type>
      <name>HTTPRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>52d0081c2789f6e207874d925f73e1b6</anchor>
      <arglist>(const std::string &amp;resource)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>55213f6194606ff5f5c36a22a4312baa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>ec6b32fdad6e908ce82c9a3ba1b340c3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>e8f190709852a98a4e1da0157c013a19</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isContentLengthImplied</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>2c31c0fff9e1e7dc90b3fbb9b5efd699</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getMethod</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>e2f3a8ceedb2b4302029bddaec7979f7</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getResource</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>600b02ea1c2a80974c5047e96fa2d5ce</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getOriginalResource</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>f3fcc9720a51b101d256ab0af468ce37</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getQueryString</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>aa0da2b94dfbeea17c9e9891b86b8c30</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getQuery</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>2c0c6e0fd83316a75a7134822d32472d</anchor>
      <arglist>(const std::string &amp;key) const </arglist>
    </member>
    <member kind="function">
      <type>QueryParams &amp;</type>
      <name>getQueryParams</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>0fa83a0c8fbe488df02952615082f224</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasQuery</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>35a8afa1300e44a2453c7b63b1131708</anchor>
      <arglist>(const std::string &amp;key) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMethod</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>cef48841af3c076846d617c8aa801047</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setResource</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>ddfcdb0cdbe68056a8a433710151bf29</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeResource</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>907226cd3ce0183c01ca1e2729cb29a2</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setQueryString</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>ca9e946dad13cbc5627a839c56722e29</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addQuery</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>9cfb77bb9a4952e2f63aca9cae7513f9</anchor>
      <arglist>(const std::string &amp;key, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeQuery</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>972a8adaafe9435141755746bd08adbe</anchor>
      <arglist>(const std::string &amp;key, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteQuery</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>068a6a43c25885ac99fa0db774b404cc</anchor>
      <arglist>(const std::string &amp;key)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>useQueryParamsForQueryString</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>79ebb4cce541bdbd699cb41127c7fc98</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>useQueryParamsForPostContent</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>c7e0815715fb907205f40f63aed92cfe</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setContent</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>d801df50e96b0d4896e7ad9a5e111a2c</anchor>
      <arglist>(const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setUser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>f4f62ed411ccb28de266fcba65648f77</anchor>
      <arglist>(PionUserPtr user)</arglist>
    </member>
    <member kind="function">
      <type>PionUserPtr</type>
      <name>getUser</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>06f9934018c7e294a7209ecd1c5c4d95</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>updateFirstLine</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request.html</anchorfile>
      <anchor>e1b70d49767ef736385d180c20bb51a9</anchor>
      <arglist>(void) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPRequestReader</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_request_reader.html</filename>
    <base>pion::net::HTTPReader</base>
    <member kind="typedef">
      <type>boost::function2&lt; void, HTTPRequestPtr, TCPConnectionPtr &gt;</type>
      <name>FinishedHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>c2c7050ff440b3ed1463f2737dc68c41</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPRequestReader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>7273e5bd85f7a71747ab30754c4293a5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; HTTPRequestReader &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>4ce588e04a43e40bba2916615456e151</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPRequestReader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>1791af0bb0997ca26ba92fd5f52709af</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>readBytes</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>33db25535027dc69dd39b335f5427631</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>finishedReading</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>39a779a695f413228398246b9f33c54a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual HTTPMessage &amp;</type>
      <name>getMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>d7acdacb908aae1a112905cf018845cd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>HTTPRequestPtr</type>
      <name>m_http_msg</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>b874f42751b43df9c2274ab2b921072d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>FinishedHandler</type>
      <name>m_finished</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_reader.html</anchorfile>
      <anchor>ae8c1c57c51b4ac803d69c792e08b4a5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPRequestWriter</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_request_writer.html</filename>
    <base>pion::net::HTTPWriter</base>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPRequestWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>c44bb5c8fc01cbade7fa56e11cf65131</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>HTTPRequest &amp;</type>
      <name>getRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>c074f5dcbdfa1b98eb193ad40124c445</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; HTTPRequestWriter &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>ca7bc4a6f5bce8bd2d1af69b98029f67</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, FinishedHandler handler=FinishedHandler())</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; HTTPRequestWriter &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>8d66b11445210da21cd62575658307a7</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, HTTPRequestPtr &amp;http_request, FinishedHandler handler=FinishedHandler())</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPRequestWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>1e004315b1ad125ba13a95a87908ab4a</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPRequestWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>2c945c295f9d2c4e60049078a8763c7c</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, HTTPRequestPtr &amp;http_request, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>prepareBuffersForSend</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>ac1fbd468d7ea013dfc998d8b92af6a7</anchor>
      <arglist>(HTTPMessage::WriteBuffers &amp;write_buffers)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual WriteHandler</type>
      <name>bindToWriteHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>d77ce034ccc7f547f3857b22a0e308d3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>handleWrite</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_request_writer.html</anchorfile>
      <anchor>f79087049cefbf84831e7ab6fa7956d1</anchor>
      <arglist>(const boost::system::error_code &amp;write_error, std::size_t bytes_written)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPResponse</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_response.html</filename>
    <base>pion::net::HTTPMessage</base>
    <member kind="function">
      <type></type>
      <name>HTTPResponse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>f16c68b14d823279fba669683d90533d</anchor>
      <arglist>(const HTTPRequest &amp;http_request)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPResponse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>8db12b6d6df4e33fdbc3546d0d90d919</anchor>
      <arglist>(const std::string &amp;request_method)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPResponse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>05b0e604ea046d9edf46c681d7c55609</anchor>
      <arglist>(const HTTPResponse &amp;http_response)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPResponse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>5be90f9ea965c46f6a12639d5cd8fc34</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPResponse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>4d6c7d67ffd7e89813020a545c21966e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>512861d09c52e0d5cba572db973b4ed7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isContentLengthImplied</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>e37c0b3b767b4ebf6103500fc7b86692</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>updateRequestInfo</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>9fddf980c6cc3d8f02995454686b1e18</anchor>
      <arglist>(const HTTPRequest &amp;http_request)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setStatusCode</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>ad5d3f33a4710d1703bf96ec5ada65c2</anchor>
      <arglist>(unsigned int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setStatusMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>b5d00731b94a4455a848063f33d5dd39</anchor>
      <arglist>(const std::string &amp;msg)</arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>getStatusCode</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>6442edcfe7174d5cd1ee7244f416ebdf</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getStatusMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>50a8874d571044cc7f37895b87b324d4</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>80b39d6e5e8543e9294179a210594612</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>007401796f3f11919028729464742174</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value, const std::string &amp;path)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>9319b9bf74662d0073b402c1966b1041</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value, const std::string &amp;path, const unsigned long max_age)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>3640cbef996d612657adf32defb17e2f</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value, const unsigned long max_age)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>8def72ecf8734200b61f0b8a50fc2d83</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteCookie</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>9a83ee85a42d6b99ca6f9a7a39429a7d</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;path)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLastModified</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>635b01a6864cc1926841c7a88dd5a020</anchor>
      <arglist>(const unsigned long t)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>updateFirstLine</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response.html</anchorfile>
      <anchor>8b66d21ba5b4fa18846073cacb719b23</anchor>
      <arglist>(void) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPResponseReader</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_response_reader.html</filename>
    <base>pion::net::HTTPReader</base>
    <member kind="typedef">
      <type>boost::function2&lt; void, HTTPResponsePtr, TCPConnectionPtr &gt;</type>
      <name>FinishedHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>9208b78bfc6bb5b2cc6783035b1a71ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPResponseReader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>46effd19802f2741f0db4203135ddf17</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; HTTPResponseReader &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>623f1278599dd45dddbfe0a2a84087b4</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, const HTTPRequest &amp;http_request, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPResponseReader</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>20b948eb6eef52ba4232027dfc9c8f3f</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, const HTTPRequest &amp;http_request, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>readBytes</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>69cc2f51fceac5b340421669a19ad8ab</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>finishedReading</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>78baad36a6eec8dc7c465a1eb14f0287</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual HTTPMessage &amp;</type>
      <name>getMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>f52ce2158396614142bba518410e2236</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>HTTPResponsePtr</type>
      <name>m_http_msg</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>94c7f596250d8539549c9bf67fccb4f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>FinishedHandler</type>
      <name>m_finished</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_reader.html</anchorfile>
      <anchor>471f19ecd2296233e126f611ce72ee62</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPResponseWriter</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_response_writer.html</filename>
    <base>pion::net::HTTPWriter</base>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPResponseWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>87a44ebab522e48ac663f1c82b9f094f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>HTTPResponse &amp;</type>
      <name>getResponse</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>710cc5423ebbf9ac4a8605a04c282877</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; HTTPResponseWriter &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>3b805fdc5c6673fe30d1638c1de3a91f</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, HTTPResponsePtr &amp;http_response, FinishedHandler handler=FinishedHandler())</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; HTTPResponseWriter &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>b2a9299cb65bfd9005531f46658d6ad9</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, const HTTPRequest &amp;http_request, FinishedHandler handler=FinishedHandler())</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPResponseWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>89fdb0ca3abc47969ca2f26fb131accd</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, HTTPResponsePtr &amp;http_response, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPResponseWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>da520fe68aad10a0d31276a2d361faf0</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, const HTTPRequest &amp;http_request, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>prepareBuffersForSend</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>91b943cb477ddf34e6682c31fc65569b</anchor>
      <arglist>(HTTPMessage::WriteBuffers &amp;write_buffers)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual WriteHandler</type>
      <name>bindToWriteHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>9496c6c9b0c91a52b60c02fcfa9fcb40</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>handleWrite</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_response_writer.html</anchorfile>
      <anchor>3fd502b8317d77e04c7d0dd62771cb7a</anchor>
      <arglist>(const boost::system::error_code &amp;write_error, std::size_t bytes_written)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPServer</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_server.html</filename>
    <base>pion::net::TCPServer</base>
    <member kind="typedef">
      <type>boost::function2&lt; void, HTTPRequestPtr &amp;, TCPConnectionPtr &amp; &gt;</type>
      <name>RequestHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>67a8e2972fba4961163d410abd422458</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::function3&lt; void, HTTPRequestPtr &amp;, TCPConnectionPtr &amp;, const std::string &amp; &gt;</type>
      <name>ServerErrorHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>878491125bc98e016cd7ec3c5aeac128</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPServer</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>f5b8dd73a45cbe3ea94d4b0d6cdeca8c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPServer</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>edea5e7bbc034fa3d55bd9500e8d920d</anchor>
      <arglist>(const unsigned int tcp_port=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPServer</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>45bd374a1dccf4144cea43fa80e51d1e</anchor>
      <arglist>(const boost::asio::ip::tcp::endpoint &amp;endpoint)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPServer</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>4c5e901ecd37eb02e34ef00233841915</anchor>
      <arglist>(PionScheduler &amp;scheduler, const unsigned int tcp_port=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>HTTPServer</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>f1cc6fafc65359fe748cecc7dbedad07</anchor>
      <arglist>(PionScheduler &amp;scheduler, const boost::asio::ip::tcp::endpoint &amp;endpoint)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addResource</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>c4808100e5178d0ad8ca693b41d1b060</anchor>
      <arglist>(const std::string &amp;resource, RequestHandler request_handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeResource</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>9b644839498c6bac94c847284afbd3cf</anchor>
      <arglist>(const std::string &amp;resource)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addRedirect</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>28870dadcd10d7a782662b0277e52a34</anchor>
      <arglist>(const std::string &amp;requested_resource, const std::string &amp;new_resource)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBadRequestHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>d443497ee1cca0d07d8e102dd3a28bd4</anchor>
      <arglist>(RequestHandler h)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setNotFoundHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>431a7bbc985660ec0e89fde2cc373de3</anchor>
      <arglist>(RequestHandler h)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setServerErrorHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>a21dccd8be3520277b7d211d1945cfbd</anchor>
      <arglist>(ServerErrorHandler h)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>e609f7651f52a0a70f0fb6d0f0953e8c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAuthentication</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>e9671bc9967d1cb4dd9b28ce3c66b1cf</anchor>
      <arglist>(HTTPAuthPtr auth)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMaxContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>1e1a75ed17c03512129fbe9f8c8cfca5</anchor>
      <arglist>(std::size_t n)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>stripTrailingSlash</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>aa000ecbccc3d16e9166ce1d3b2b85ee</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>handleBadRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>bfec9513fa850bca7ed138bce3977c56</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>handleNotFoundRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>beb14e58da7708caeafd3e4c81158575</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>handleServerError</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>496ef1ba1e68ed98b0ca302bb2aec95a</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn, const std::string &amp;error_msg)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>handleConnection</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>465888b10b2e96c80f4d9babd6327348</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>handleRequest</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>c4ba1e128b4fa81f7562a30c5048eb85</anchor>
      <arglist>(HTTPRequestPtr &amp;http_request, TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>findRequestHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_server.html</anchorfile>
      <anchor>251fc69a150e25faa4044e36ef062021</anchor>
      <arglist>(const std::string &amp;resource, RequestHandler &amp;request_handler) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pion::net::HTTPTypes</name>
    <filename>structpion_1_1net_1_1_h_t_t_p_types.html</filename>
    <member kind="typedef">
      <type>StringDictionary</type>
      <name>Headers</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>1073e2b9302dcad77aadeb468d6cae4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>StringDictionary</type>
      <name>CookieParams</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>50fb5b59b0a6ad3eab753800cf78f4fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>StringDictionary</type>
      <name>QueryParams</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>5dbaae025e754a4862957d17e2e7d9cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPTypes</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>1d1833d00aa78c1771da04d14e780879</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>base64_decode</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>559b18776be81864af2f64109c60ef0c</anchor>
      <arglist>(std::string const &amp;input, std::string &amp;output)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>base64_encode</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>b1eb58d8d1e4e82acbb5cdd46011346f</anchor>
      <arglist>(std::string const &amp;input, std::string &amp;output)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>url_decode</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>5fd6150827eec9be14ea0a76176f4d90</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>url_encode</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>be6604ab953f8eef73799772a107a453</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>get_date_string</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>d2c33324b89782d9302e988b1cc8e96a</anchor>
      <arglist>(const time_t t)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>make_query_string</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>f96aa36470cd96e4a52cc68fb076c021</anchor>
      <arglist>(const QueryParams &amp;query_params)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>make_set_cookie_header</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>c6ded1c71347e3a865c92a54ff546098</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value, const std::string &amp;path, const bool has_max_age=false, const unsigned long max_age=0)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>STRING_EMPTY</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>9b5c6762e018e8b7b3f572a623ea4b80</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>STRING_CRLF</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>7b602c8be46471d7b9e8d7020a30f88a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>STRING_HTTP_VERSION</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>70ec14dd7fc70aaeb5cd4be47c5e6d82</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_NAME_VALUE_DELIMITER</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>56df15d67b089d50ce1dddfcd7d4615d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_HOST</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>4feead05389a838a5a604f7e3cf94e9e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_COOKIE</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>6a13c9edbf0df307a51f3b55ea3d94d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_SET_COOKIE</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>a1b08d60d033abc93d47d5835eedc774</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_CONNECTION</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>9a7717c3461f33185748024e8f6c80e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_CONTENT_TYPE</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>8f33040d28b5c62b488db9e5d3be1093</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_CONTENT_LENGTH</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>3f6805b58da6ec85da81979d9039401d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_CONTENT_LOCATION</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>8688d762034eaf97bd0d866a33631ec4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_CONTENT_ENCODING</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>525b9ceadfb7dfc021feebee44a7828f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_LAST_MODIFIED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>bd5359a83056f839f0a745741c6ac94c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_IF_MODIFIED_SINCE</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>076195c58857955934524e0834cf5c12</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_TRANSFER_ENCODING</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>61e6f63778006a8c876b7b43e3b2155d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_LOCATION</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>eba74404000724011251783cbd1a2feb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_AUTHORIZATION</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>18c60d00005997db6c68a544a4b248c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_REFERER</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>ae468c748e56c76bc5eddcbe31dab23b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_USER_AGENT</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>c21e94a69dbdbeb7a67f00ac19bba07a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_X_FORWARDED_FOR</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>1eb6a52b21502838e61f6f802e52124c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>HEADER_CLIENT_IP</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>1f2543f5e7c06bd5cc48c52c69cb2c4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>CONTENT_TYPE_HTML</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>c17b90486c0395b256df156e9658acbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>CONTENT_TYPE_TEXT</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>77a0c7a64bab0e62c5852aa50db5c852</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>CONTENT_TYPE_XML</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>c8fe295aef523c4fa6f0c549ed1346e2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>CONTENT_TYPE_URLENCODED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>6b61079e753283d183bbd6a66b389882</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>REQUEST_METHOD_HEAD</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>6bdfe60ab87ab8ccf14cf18c558b528a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>REQUEST_METHOD_GET</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>8391a41cc1f5f635be4719fcc2b5cf7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>REQUEST_METHOD_PUT</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>f76c0c088b7a2fc4d20cb935300978ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>REQUEST_METHOD_POST</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>696517b7b66d834383f5446f7f93bc3d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>REQUEST_METHOD_DELETE</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>5ee27f0a059b0c5bbca05c3f2dae5457</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_OK</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>793063f5fd4235f800933ecaca6ebfbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_CREATED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>e4aec942c899ff5dec9800884ab6a380</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_NO_CONTENT</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>24af0ec6b175b3a0cadcc57bfb1a40e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_FOUND</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>f5eff4cceddbebf5f7877407a3850a2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_UNAUTHORIZED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>b998b11283ebda86737491d5d61d40b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_FORBIDDEN</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>a5477b52ea2f1733fd98511567a245cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_NOT_FOUND</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>297481a91336426a0c604078c590d851</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_METHOD_NOT_ALLOWED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>a5867f64e731862a9c9b7e76968c6853</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_NOT_MODIFIED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>523848b8db8505ee3e49256ba9201f09</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_BAD_REQUEST</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>ef94b4754a5f7a9a67194128f25ed9e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_SERVER_ERROR</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>b4e36d0eaa41b18db4bf564ca4675068</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_NOT_IMPLEMENTED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>bc1aa3de82963eb62b601bf4f12077fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const std::string</type>
      <name>RESPONSE_MESSAGE_CONTINUE</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>86f5eba1cb8e4c20c5253efe2df81814</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_OK</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>bc16a1757567189c5fbb339af9e64f1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_CREATED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>20cff97b0e9a73406e29eb111f9ae31f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_NO_CONTENT</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>65368b80ff65e56d37ade3a866886b63</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_FOUND</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>71d8700d1c002cf24618679ff1fbf61d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_UNAUTHORIZED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>e497e922e32b406295ef023a2981c2fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_FORBIDDEN</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>bf9443518f805b4f1b40ac4845a3ecc3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_NOT_FOUND</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>169cd25ed4a82f3bd26ef025559fb585</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_METHOD_NOT_ALLOWED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>003a429425334bd0b1d154a1b09aceb8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_NOT_MODIFIED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>4965b14ae5000d8315db3f5091b277ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_BAD_REQUEST</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>ceaa6149083793e42b6a60de99a0dce2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_SERVER_ERROR</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>976f8a5b4dd9cac0e1a712c2edf25642</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_NOT_IMPLEMENTED</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>648a231b23da6af51659e4c6b7645f3e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const unsigned int</type>
      <name>RESPONSE_CODE_CONTINUE</name>
      <anchorfile>structpion_1_1net_1_1_h_t_t_p_types.html</anchorfile>
      <anchor>10be36f6fbb1ec042f91783a20eb992e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPWriter</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_writer.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HTTPWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>23c3f319b5ab247869a83d2961d2d7c0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>095f6d41318b5d503a155d2d4b8ed6a8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>write</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>1db94b558cd00c4bf95b04f4bfe4c37d</anchor>
      <arglist>(const T &amp;data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>write</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>1864787b8a6b7899be36f4d3787f84dd</anchor>
      <arglist>(const void *data, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeNoCopy</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>0652ab52c49fe67eaf54f02727d4c6e8</anchor>
      <arglist>(const std::string &amp;data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeNoCopy</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>caac8ad942eaa08cfaa811520c3a0f6b</anchor>
      <arglist>(void *data, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>send</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>6d29bc7256b20ff841a306a1594f8f18</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>send</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>9733ec5c3d6c3d1c14b1c0003fa44cd2</anchor>
      <arglist>(SendHandler send_handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sendChunk</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>fdfad18db0147b902aeba8fd8e56b63d</anchor>
      <arglist>(SendHandler send_handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sendFinalChunk</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>04b1349157e0b4c2ccf9370fefd135f9</anchor>
      <arglist>(SendHandler send_handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sendFinalChunk</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>abe166b1d12b37012af5bd17323f83a0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>TCPConnectionPtr &amp;</type>
      <name>getTCPConnection</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>92704907843f24f2877b359f1062936b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>getContentLength</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>c64cc2ffe1c8eb63e5aff2f4c96e35f8</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>supportsChunkedMessages</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>4d1b587aea1e68e36ba9fc98b298a180</anchor>
      <arglist>(bool b)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>supportsChunkedMessages</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>6315a66006cda97d2a84f63ecb98d0a6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendingChunkedMessage</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>b4dcecd4b08a0d03ab6fe5b22faea53a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>55a3fb8fea154473a4d14f2514d1d4ac</anchor>
      <arglist>(PionLogger log_ptr)</arglist>
    </member>
    <member kind="function">
      <type>PionLogger</type>
      <name>getLogger</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>0b2a630abf48f152c9fe45b1e2fd4589</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>boost::function0&lt; void &gt;</type>
      <name>FinishedHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>2b3062103ec1efac1fd80c9e440dc656</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>boost::function2&lt; void, const boost::system::error_code &amp;, std::size_t &gt;</type>
      <name>WriteHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>d370609246d7d6d977147023eefbfaaa</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HTTPWriter</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>9c7fa3ece9494ef59441c76fa86c4439</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn, FinishedHandler handler)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>handleWrite</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>999ea42ef700ac1515b05f5c9ce97727</anchor>
      <arglist>(const boost::system::error_code &amp;write_error, std::size_t bytes_written)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>prepareBuffersForSend</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>37499ffe0d8dbfdbb256dfdcfd5372e6</anchor>
      <arglist>(HTTPMessage::WriteBuffers &amp;write_buffers)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual WriteHandler</type>
      <name>bindToWriteHandler</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>0fb9ab481a23ab09e4e432548dc2741c</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>finishedWriting</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer.html</anchorfile>
      <anchor>d612b6366986cd4eddedc128a6c18bd1</anchor>
      <arglist>(void)</arglist>
    </member>
    <class kind="class">pion::net::HTTPWriter::BinaryCache</class>
    <class kind="class">pion::net::HTTPWriter::LostConnectionException</class>
  </compound>
  <compound kind="class">
    <name>pion::net::HTTPWriter::LostConnectionException</name>
    <filename>classpion_1_1net_1_1_h_t_t_p_writer_1_1_lost_connection_exception.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual const char *</type>
      <name>what</name>
      <anchorfile>classpion_1_1net_1_1_h_t_t_p_writer_1_1_lost_connection_exception.html</anchorfile>
      <anchor>af3b8cff1ed418a878c06891ad7d6ae8</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::PionUser</name>
    <filename>classpion_1_1net_1_1_pion_user.html</filename>
    <member kind="function">
      <type></type>
      <name>PionUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>367db9230d947b703b72878fc9483d88</anchor>
      <arglist>(std::string const &amp;username)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>PionUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>89611a182c34e73d69711193bb46c2ac</anchor>
      <arglist>(std::string const &amp;username, std::string const &amp;password)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>353e7fa2fe22480c19f7d93a382487b5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string const &amp;</type>
      <name>getUsername</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>28316fa46d646b7e6754c55c8a194df2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>std::string const &amp;</type>
      <name>getPassword</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>977fe2d5e0aec3f4c5062b83047307fe</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>matchPassword</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>6ec0a33d5b025bdd26fc7be808c6d06c</anchor>
      <arglist>(const std::string &amp;password) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setPassword</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>c99026bfce959e3f1ef4262ef695dec5</anchor>
      <arglist>(const std::string &amp;password)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const std::string</type>
      <name>m_username</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>1cd2675267385e1927e492cf18bdeec8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>m_password</name>
      <anchorfile>classpion_1_1net_1_1_pion_user.html</anchorfile>
      <anchor>45ef62f47d7385e27da48f9b3cfa4f9d</anchor>
      <arglist></arglist>
    </member>
    <class kind="class">pion::net::PionUser::BadPasswordHash</class>
  </compound>
  <compound kind="class">
    <name>pion::net::PionUser::BadPasswordHash</name>
    <filename>classpion_1_1net_1_1_pion_user_1_1_bad_password_hash.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual const char *</type>
      <name>what</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_1_1_bad_password_hash.html</anchorfile>
      <anchor>20936f02c50c9e5b1016a550093ed9dd</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::PionUserManager</name>
    <filename>classpion_1_1net_1_1_pion_user_manager.html</filename>
    <member kind="function">
      <type></type>
      <name>PionUserManager</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>c77af4afa01fd04ecb820bc400955344</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~PionUserManager</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>5ab8b3b4a3fe38943a56c5c67d9e0e4c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>f0f5e80d509089547fa24026e6130db6</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>addUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>99bc031ddb051331a3388e69c8528f07</anchor>
      <arglist>(const std::string &amp;username, const std::string &amp;password)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>updateUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>07e87d6f1c7a258509a1784dccab86e2</anchor>
      <arglist>(const std::string &amp;username, const std::string &amp;password)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>removeUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>0fe5881a0746e9918dbf68f2e27fc97e</anchor>
      <arglist>(const std::string &amp;username)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual PionUserPtr</type>
      <name>getUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>6f20b433f579a1104898cbde49b655e2</anchor>
      <arglist>(const std::string &amp;username)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual PionUserPtr</type>
      <name>getUser</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>a10fe81926d08d9a445eeeac049c2bf6</anchor>
      <arglist>(const std::string &amp;username, const std::string &amp;password)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>std::map&lt; std::string, PionUserPtr &gt;</type>
      <name>UserMap</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>09517ffc52654e486033bf4bf25c00c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::mutex</type>
      <name>m_mutex</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>43efcf9a291da4757f46f42889fa1bc3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>UserMap</type>
      <name>m_users</name>
      <anchorfile>classpion_1_1net_1_1_pion_user_manager.html</anchorfile>
      <anchor>2b51016569076159b22f76a269c1ed5d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::TCPConnection</name>
    <filename>classpion_1_1net_1_1_t_c_p_connection.html</filename>
    <member kind="typedef">
      <type>boost::function1&lt; void, boost::shared_ptr&lt; TCPConnection &gt; &gt;</type>
      <name>ConnectionHandler</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>e5cf5fb1c64aba9025fb354770ecf89e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::array&lt; char, READ_BUFFER_SIZE &gt;</type>
      <name>ReadBuffer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>4fd1b6696bc7186d507c7abe0853fbc9</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::asio::ip::tcp::socket</type>
      <name>Socket</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>7d7a3fad553e4f4301bb512dfd18cd45</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Socket</type>
      <name>SSLSocket</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>f711b397a51f3f426630e30b5b2ce629</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int</type>
      <name>SSLContext</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>23549697333e2a4363696d8bfe3af5fe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>LIFECYCLE_CLOSE</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>ae64887638ae54cbde2f45fc0f653d7a67e73abb7758b2f1b001372dc99bd547</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>LIFECYCLE_KEEPALIVE</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>ae64887638ae54cbde2f45fc0f653d7a4c7bc77be97a55e60611ab30d7abf513</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>LIFECYCLE_PIPELINED</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>ae64887638ae54cbde2f45fc0f653d7ab17c770856e07e6afff998b0ce6b2bec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>READ_BUFFER_SIZE</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>c26ffa92f67a546369f4064214b79edbc18638db6d6bf2b950011c04425ac5f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>LifecycleType</name>
      <anchor>ae64887638ae54cbde2f45fc0f653d7a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPConnection</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>7d4a835140faf32f7f1a8a676833fe99</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, const bool ssl_flag=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPConnection</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>f9c4bc137048fbb0a8508cbc49aa6b64</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, SSLContext &amp;ssl_context)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_open</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>a45fc44d455e5887b7498295fa48716b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>b342c955544dc37db056b426b1f0ad1e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~TCPConnection</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>0c5381e91ced51edaef072cd2771d26c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_accept</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>02202d1ebf1204e08e167c5cf0b98a08</anchor>
      <arglist>(boost::asio::ip::tcp::acceptor &amp;tcp_acceptor, AcceptHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>accept</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>45aea4515afd1672a7a1d21b41903194</anchor>
      <arglist>(boost::asio::ip::tcp::acceptor &amp;tcp_acceptor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_connect</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>e5616a0f395b1e57f70440f3e37fac34</anchor>
      <arglist>(boost::asio::ip::tcp::endpoint &amp;tcp_endpoint, ConnectHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_connect</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>631d02d539b08f251ecf4983f7bbd310</anchor>
      <arglist>(const boost::asio::ip::address &amp;remote_addr, const unsigned int remote_port, ConnectHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>connect</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>d9abf724fffc5d71e963ab5edc58c328</anchor>
      <arglist>(boost::asio::ip::tcp::endpoint &amp;tcp_endpoint)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>connect</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>2195a274fd54f49c02368ce8a9fd7399</anchor>
      <arglist>(const boost::asio::ip::address &amp;remote_addr, const unsigned int remote_port)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>connect</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>3a74baf307af780c7cd1ea8eab84897a</anchor>
      <arglist>(const std::string &amp;remote_server, const unsigned int remote_port)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_handshake_client</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>dc45e0198c938da8025bf55aad61b167</anchor>
      <arglist>(SSLHandshakeHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_handshake_server</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>d174c4e0b761724861cac30e9abe70d7</anchor>
      <arglist>(SSLHandshakeHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>handshake_client</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>92b0da25d9b5cfcf1316e114e8462113</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>handshake_server</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>f754333825719c0b8f42e3435a99493e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_read_some</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>4656406630073f9167e618db64dd9c5c</anchor>
      <arglist>(ReadHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_read_some</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>4765e388d15f88492bf4cd9a7990c896</anchor>
      <arglist>(ReadBufferType read_buffer, ReadHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>read_some</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>ea42236feaaa1a6a4343b5a26ac9c5f1</anchor>
      <arglist>(boost::system::error_code &amp;ec)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>read_some</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>80830883275d30b0762c4c0b9984449f</anchor>
      <arglist>(ReadBufferType read_buffer, boost::system::error_code &amp;ec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_read</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>d5754c0758a16c495343355583047d6e</anchor>
      <arglist>(CompletionCondition completion_condition, ReadHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_read</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>0ea7c4af29206b4b4517027be8cc311e</anchor>
      <arglist>(const MutableBufferSequence &amp;buffers, CompletionCondition completion_condition, ReadHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>read</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>9f540907836ce7558f7aac086c5d5dc4</anchor>
      <arglist>(CompletionCondition completion_condition, boost::system::error_code &amp;ec)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>read</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>871231344cb97fa4c124b6ea58cf4564</anchor>
      <arglist>(const MutableBufferSequence &amp;buffers, CompletionCondition completion_condition, boost::system::error_code &amp;ec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>async_write</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>f9f78e94efbadf3a26be9016b0a3389c</anchor>
      <arglist>(const ConstBufferSequence &amp;buffers, WriteHandler handler)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>write</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>5b1127169f7132cdf53e5aa3dabedbaa</anchor>
      <arglist>(const ConstBufferSequence &amp;buffers, boost::system::error_code &amp;ec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>finish</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>82710b3764383901521ff1c79997d8cf</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getSSLFlag</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>ff6b0cd574bfc595cd65dfe04f4a64fb</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLifecycle</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>dc0cd1d7104cb11cd3a71f5b41f1bb0e</anchor>
      <arglist>(LifecycleType t)</arglist>
    </member>
    <member kind="function">
      <type>LifecycleType</type>
      <name>getLifecycle</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>101464c8c272a0ee0d63d2a44e1d816c</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getKeepAlive</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>7c9260be6fc190422705bb95cb3f589e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getPipelined</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>53264a27110a968c8b46b939851b33b5</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>ReadBuffer &amp;</type>
      <name>getReadBuffer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>1fc58392b55d9a9cf563f186ab72a98a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveReadPosition</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>dd5b09b72b34241ad5a9c037056e6f4f</anchor>
      <arglist>(const char *read_ptr, const char *read_end_ptr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadReadPosition</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>327ae9711bebda64b90bce57b469aeb5</anchor>
      <arglist>(const char *&amp;read_ptr, const char *&amp;read_end_ptr) const </arglist>
    </member>
    <member kind="function">
      <type>boost::asio::ip::tcp::endpoint</type>
      <name>getRemoteEndpoint</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>2e076050bc080163b7e27110c52a129c</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>boost::asio::ip::address</type>
      <name>getRemoteIp</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>96184b386766d1606cf88df46202c896</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>unsigned short</type>
      <name>getRemotePort</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>dda6b27c754e45086a9759a282bb811e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>boost::asio::io_service &amp;</type>
      <name>getIOService</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>7acb9fa27f3ce749dc41fc7738b7743a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>Socket &amp;</type>
      <name>getSocket</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>0d0297ede39d554e39feb1610ccc930b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>SSLSocket &amp;</type>
      <name>getSSLSocket</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>41da2a9ebb7a50641fd46d95eb560142</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const Socket &amp;</type>
      <name>getSocket</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>e184cf80268964d40fdf90bd922a1769</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const SSLSocket &amp;</type>
      <name>getSSLSocket</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>b9ac27c43a6b9ad13c76c38f593c8328</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; TCPConnection &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>08b53981107fe05666bba10a36d27518</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, SSLContext &amp;ssl_context, const bool ssl_flag, ConnectionHandler finished_handler)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>TCPConnection</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_connection.html</anchorfile>
      <anchor>99ed022536cd0b4c0bef43baf68f9d75</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, SSLContext &amp;ssl_context, const bool ssl_flag, ConnectionHandler finished_handler)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::TCPServer</name>
    <filename>classpion_1_1net_1_1_t_c_p_server.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~TCPServer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>4fb14092276adef3cb72192595c7d5ee</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>f0691ad010f796d4b29ce17de4965737</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>2125ad6b6b87a18230f14a2d212717ed</anchor>
      <arglist>(bool wait_until_finished=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>join</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>45ba7f90674ea613509675c10ace30b9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSSLKeyFile</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>31e2d6df7309871a1440ce2913024132</anchor>
      <arglist>(const std::string &amp;pem_key_file)</arglist>
    </member>
    <member kind="function">
      <type>std::size_t</type>
      <name>getConnections</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>337b469cc938de6f042014e98f0f3383</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>getPort</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>ac9f36e8c0e4f2a42a39efce7d8e99f6</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPort</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>b009911b75a4b6067b3bbad83ad0a9a9</anchor>
      <arglist>(unsigned int p)</arglist>
    </member>
    <member kind="function">
      <type>boost::asio::ip::address</type>
      <name>getAddress</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>747cc6ec47f93d4acd29cfa3d2e71e0e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAddress</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>159c45dfb8692696a1d26c571efb3dcf</anchor>
      <arglist>(const boost::asio::ip::address &amp;addr)</arglist>
    </member>
    <member kind="function">
      <type>const boost::asio::ip::tcp::endpoint &amp;</type>
      <name>getEndpoint</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>a478ff55015a87a2b5bf5cc51ea7a403</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setEndpoint</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>39f9385d29c8af83a89a0b8e1cc124ac</anchor>
      <arglist>(const boost::asio::ip::tcp::endpoint &amp;ep)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getSSLFlag</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>a882bdded8835a19dcac7e7c184ba006</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSSLFlag</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>ae00fa234d3c5e74a3ce05940bd98327</anchor>
      <arglist>(bool b=true)</arglist>
    </member>
    <member kind="function">
      <type>TCPConnection::SSLContext &amp;</type>
      <name>getSSLContext</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>ca1521c3e1fad9fd4b307e58503359a3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isListening</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>2ebef16fc5697ee014a1c41186d45611</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>cc74963ca858740c30184abe3fdf16bb</anchor>
      <arglist>(PionLogger log_ptr)</arglist>
    </member>
    <member kind="function">
      <type>PionLogger</type>
      <name>getLogger</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>f5a881cf0e548b800b4d088c4795989c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>TCPServer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>7164eeb6b69db99eeac642f9935dc989</anchor>
      <arglist>(const unsigned int tcp_port)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>TCPServer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>db29e8554696083b5088822e1ccf1ad5</anchor>
      <arglist>(const boost::asio::ip::tcp::endpoint &amp;endpoint)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>TCPServer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>7f8864c38de289daeaca6d8604d17efa</anchor>
      <arglist>(PionScheduler &amp;scheduler, const unsigned int tcp_port=0)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>TCPServer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>25513490ed6b8c5342cd3740abb98870</anchor>
      <arglist>(PionScheduler &amp;scheduler, const boost::asio::ip::tcp::endpoint &amp;endpoint)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>handleConnection</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>5f49c96a8750bd37954404266596909e</anchor>
      <arglist>(TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>beforeStarting</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>f8a565fe8f04cc1476e4cc8585c06aa2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>afterStopping</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>b8f947ad8ae9f99ccc58374b72f7382b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>boost::asio::io_service &amp;</type>
      <name>getIOService</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>952fde1ccf7d6a741cb72623151431ce</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PionLogger</type>
      <name>m_logger</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_server.html</anchorfile>
      <anchor>efe27e3669012822821130edd908e084</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::TCPStreamBuffer</name>
    <filename>classpion_1_1net_1_1_t_c_p_stream_buffer.html</filename>
    <member kind="typedef">
      <type>char</type>
      <name>char_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>4e00c92af5fb7d3d2c42c1764623925f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;::int_type</type>
      <name>int_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>efca7b26caaa2dfb5944457bc2884f85</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;::off_type</type>
      <name>off_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>870c16af217f8a796d7dd839e53173d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;::pos_type</type>
      <name>pos_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>12d5f8242dfe66f20f4cb48ba102dcc5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;</type>
      <name>traits_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>9ddaa212cd1851efa707202fff907a81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>PUT_BACK_MAX</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>4f1c4d4ae858080eaf80277bee59b1f23ed8f64c54732d2bba8251147a04d993</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <type>@</type>
      <name>WRITE_BUFFER_SIZE</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>4f1c4d4ae858080eaf80277bee59b1f258ab675c42bfb4bca86fcc030ca388a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPStreamBuffer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>7a422f167860926c9953a3d902ab2d12</anchor>
      <arglist>(TCPConnectionPtr &amp;conn_ptr)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPStreamBuffer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>9661c09526d9fd0a07f6197b71500d5f</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, const bool ssl_flag=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPStreamBuffer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>8ff8b1e8603339d436b93b9f8b8d8c85</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, TCPConnection::SSLContext &amp;ssl_context)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~TCPStreamBuffer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>da1d3ec1b69ec0dac0258fd8f5f42e58</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>TCPConnection &amp;</type>
      <name>getConnection</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>6a206b8c56b7df918c12ec73929d372f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const TCPConnection &amp;</type>
      <name>getConnection</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>f78c744dacd9953cf0601af098b53bee</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setupBuffers</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>37e77fee4d43bd0ee76edd0e15821f97</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int_type</type>
      <name>flushOutput</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>ff6b021d2c386583372f97936d38f749</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int_type</type>
      <name>underflow</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>ab911ff25138f9655f15624d1dc1ccc9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int_type</type>
      <name>overflow</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>b377e0158f899ac8830a3fd2ab0dbbb7</anchor>
      <arglist>(int_type c)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual std::streamsize</type>
      <name>xsputn</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>24d5381820d07a7e700cf161861aebb0</anchor>
      <arglist>(const char_type *s, std::streamsize n)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual std::streamsize</type>
      <name>xsgetn</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>accda7cb8e74363323864b97e34b9363</anchor>
      <arglist>(char_type *s, std::streamsize n)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int_type</type>
      <name>sync</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream_buffer.html</anchorfile>
      <anchor>cffdc42361a699fd7dfce0bd9fcd90c6</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::TCPStream</name>
    <filename>classpion_1_1net_1_1_t_c_p_stream.html</filename>
    <member kind="typedef">
      <type>char</type>
      <name>char_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>539e454c329643c006e582eb5ece18f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;::int_type</type>
      <name>int_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>001ac3555ea939e63a888215f2545f4d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;::off_type</type>
      <name>off_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>94baa021380c295e0f735326b1e95a90</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;::pos_type</type>
      <name>pos_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>4eeae85149e113b0e7f3c1ae33c5c8c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::char_traits&lt; char &gt;</type>
      <name>traits_type</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>f766f48372e1a11a32c03f89f384d98a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPStream</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>b7c7d8ade647175eaa062c5c73cf8419</anchor>
      <arglist>(TCPConnectionPtr &amp;conn_ptr)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPStream</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>d4af444bc30e5b654a6a62fc011ee4a3</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, const bool ssl_flag=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TCPStream</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>1c87ae30652cfac49c6e9316407b9297</anchor>
      <arglist>(boost::asio::io_service &amp;io_service, TCPConnection::SSLContext &amp;ssl_context)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>accept</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>0751ad9a0d5b76f0f7c965b64674172f</anchor>
      <arglist>(boost::asio::ip::tcp::acceptor &amp;tcp_acceptor)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>connect</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>aeb6a6e2c60befd33383796a3be17f19</anchor>
      <arglist>(boost::asio::ip::tcp::endpoint &amp;tcp_endpoint)</arglist>
    </member>
    <member kind="function">
      <type>boost::system::error_code</type>
      <name>connect</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>4731f296650a7c15d084485771b59e7c</anchor>
      <arglist>(const boost::asio::ip::address &amp;remote_addr, const unsigned int remote_port)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>0f246d4b81b22e41a0bdb9eaaca139a2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is_open</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>677dbc5f63de31abfde83079f4eba808</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getSSLFlag</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>1001710f329f661a4c2028ecbe2accc5</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>boost::asio::ip::address</type>
      <name>getRemoteIp</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>08d7079b431c12f7df5aea76b1ef0529</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>TCPStreamBuffer *</type>
      <name>rdbuf</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_stream.html</anchorfile>
      <anchor>ac5ebc5c7606b084bfffb04a134fa9c3</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::TCPTimer</name>
    <filename>classpion_1_1net_1_1_t_c_p_timer.html</filename>
    <member kind="function">
      <type></type>
      <name>TCPTimer</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_timer.html</anchorfile>
      <anchor>a223fed32624a1ae5abd1c1a9e376a03</anchor>
      <arglist>(TCPConnectionPtr &amp;conn_ptr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_timer.html</anchorfile>
      <anchor>6ffc9e4b86c4cbb952dc5b72e298eef3</anchor>
      <arglist>(const boost::uint32_t seconds)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cancel</name>
      <anchorfile>classpion_1_1net_1_1_t_c_p_timer.html</anchorfile>
      <anchor>f5773467369e8f962f0bc289f7d57c05</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::WebServer</name>
    <filename>classpion_1_1net_1_1_web_server.html</filename>
    <base>pion::net::HTTPServer</base>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~WebServer</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>f0e9108c86979b8e3b428d3ab2e9c5b2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>WebServer</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>1a22715d462d2ab94a5a60e497af8a90</anchor>
      <arglist>(const unsigned int tcp_port=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>WebServer</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>689291f8fd932e269ae04de12767f6e5</anchor>
      <arglist>(const boost::asio::ip::tcp::endpoint &amp;endpoint)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>WebServer</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>224da993bdb210f345a5a3914156735a</anchor>
      <arglist>(PionScheduler &amp;scheduler, const unsigned int tcp_port=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>WebServer</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>6234119bfbb4cce4c042d492c038fa9d</anchor>
      <arglist>(PionScheduler &amp;scheduler, const boost::asio::ip::tcp::endpoint &amp;endpoint)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addService</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>4ca4ce13a31736c698b6b441272e098a</anchor>
      <arglist>(const std::string &amp;resource, WebService *service_ptr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadService</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>9236dc112d773b4e39d799d300029ab0</anchor>
      <arglist>(const std::string &amp;resource, const std::string &amp;service_name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setServiceOption</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>adcaeee8b998887f99c8a64a336174df</anchor>
      <arglist>(const std::string &amp;resource, const std::string &amp;name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadServiceConfig</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>a57a3d8e26b81c69649ea852918bf192</anchor>
      <arglist>(const std::string &amp;config_name)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clear</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>fde021abf39ca8cabc1c4c7467ecc9f1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>beforeStarting</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>591c003aecff574644a1744422b356dc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>afterStopping</name>
      <anchorfile>classpion_1_1net_1_1_web_server.html</anchorfile>
      <anchor>c0a6304636532ee3cf3ec44c1fade0ae</anchor>
      <arglist>(void)</arglist>
    </member>
    <class kind="class">pion::net::WebServer::AuthConfigException</class>
    <class kind="class">pion::net::WebServer::ConfigNotFoundException</class>
    <class kind="class">pion::net::WebServer::ConfigParsingException</class>
    <class kind="class">pion::net::WebServer::ServiceNotFoundException</class>
    <class kind="class">pion::net::WebServer::WebServiceException</class>
  </compound>
  <compound kind="class">
    <name>pion::net::WebServer::AuthConfigException</name>
    <filename>classpion_1_1net_1_1_web_server_1_1_auth_config_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>AuthConfigException</name>
      <anchorfile>classpion_1_1net_1_1_web_server_1_1_auth_config_exception.html</anchorfile>
      <anchor>42cbf3c3629656c7e7b77dd8a9936d54</anchor>
      <arglist>(const std::string &amp;error_msg)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::WebServer::ConfigNotFoundException</name>
    <filename>classpion_1_1net_1_1_web_server_1_1_config_not_found_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>ConfigNotFoundException</name>
      <anchorfile>classpion_1_1net_1_1_web_server_1_1_config_not_found_exception.html</anchorfile>
      <anchor>43d93ac51d13435adfa6c6c1a3d4555b</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::WebServer::ConfigParsingException</name>
    <filename>classpion_1_1net_1_1_web_server_1_1_config_parsing_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>ConfigParsingException</name>
      <anchorfile>classpion_1_1net_1_1_web_server_1_1_config_parsing_exception.html</anchorfile>
      <anchor>6f72cfa5533c1c9963535a72bd34dc65</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::WebServer::ServiceNotFoundException</name>
    <filename>classpion_1_1net_1_1_web_server_1_1_service_not_found_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>ServiceNotFoundException</name>
      <anchorfile>classpion_1_1net_1_1_web_server_1_1_service_not_found_exception.html</anchorfile>
      <anchor>93d7abf787a43027f1cab4eec21923af</anchor>
      <arglist>(const std::string &amp;resource)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::WebServer::WebServiceException</name>
    <filename>classpion_1_1net_1_1_web_server_1_1_web_service_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>WebServiceException</name>
      <anchorfile>classpion_1_1net_1_1_web_server_1_1_web_service_exception.html</anchorfile>
      <anchor>62fe165f8c1b6312244475feee158df4</anchor>
      <arglist>(const std::string &amp;resource, const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::net::WebService</name>
    <filename>classpion_1_1net_1_1_web_service.html</filename>
    <member kind="function">
      <type></type>
      <name>WebService</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>5771104f51b584e27689ab1348215cb2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~WebService</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>0e71f4ae2d2503d18fb3348e30a2b005</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>ea1b583bdec0f4ae2c9f3720cfc8ecbf</anchor>
      <arglist>(HTTPRequestPtr &amp;request, TCPConnectionPtr &amp;tcp_conn)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOption</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>42b5fe6d5c80129d07d455ec51e49bbe</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>6f25037656981ed96c3f5983e2d3e50c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>62036695a7fb57b8dd8912629ae20fe3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setResource</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>b40ed17d6336da0dc08d5217c2dc9025</anchor>
      <arglist>(const std::string &amp;str)</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getResource</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>3cd6859f6c5b40c0469665745e744df8</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getRelativeResource</name>
      <anchorfile>classpion_1_1net_1_1_web_service.html</anchorfile>
      <anchor>5e4e035f6c6dcff8bdc3ad14515f6fab</anchor>
      <arglist>(const std::string &amp;resource_requested) const </arglist>
    </member>
    <class kind="class">pion::net::WebService::UnknownOptionException</class>
  </compound>
  <compound kind="class">
    <name>pion::net::WebService::UnknownOptionException</name>
    <filename>classpion_1_1net_1_1_web_service_1_1_unknown_option_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>UnknownOptionException</name>
      <anchorfile>classpion_1_1net_1_1_web_service_1_1_unknown_option_exception.html</anchorfile>
      <anchor>371c83484bf9473fcac708c1ec4a6570</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pion::plugins</name>
    <filename>namespacepion_1_1plugins.html</filename>
    <class kind="class">pion::plugins::AllowNothingService</class>
    <class kind="class">pion::plugins::CookieService</class>
    <class kind="class">pion::plugins::EchoService</class>
    <class kind="class">pion::plugins::DiskFile</class>
    <class kind="class">pion::plugins::DiskFileSender</class>
    <class kind="class">pion::plugins::FileService</class>
    <class kind="class">pion::plugins::HelloService</class>
    <class kind="class">pion::plugins::LogServiceAppender</class>
    <class kind="class">pion::plugins::LogService</class>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; DiskFileSender &gt;</type>
      <name>DiskFileSenderPtr</name>
      <anchorfile>namespacepion_1_1plugins.html</anchorfile>
      <anchor>4190aad512a3e8d622dd5a0056ab0614</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeDictionaryTerm</name>
      <anchorfile>namespacepion_1_1plugins.html</anchorfile>
      <anchor>88b580640e11dceca18d8047c87a0053</anchor>
      <arglist>(HTTPResponseWriterPtr &amp;writer, const HTTPTypes::QueryParams::value_type &amp;val, const bool decode)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::AllowNothingService</name>
    <filename>classpion_1_1plugins_1_1_allow_nothing_service.html</filename>
    <base>pion::net::WebService</base>
    <member kind="function">
      <type></type>
      <name>AllowNothingService</name>
      <anchorfile>classpion_1_1plugins_1_1_allow_nothing_service.html</anchorfile>
      <anchor>0a6b07ccc7b41dc5577b4d9acbc6cfdf</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~AllowNothingService</name>
      <anchorfile>classpion_1_1plugins_1_1_allow_nothing_service.html</anchorfile>
      <anchor>a75fed9f5d29b02112e0faf5558cb101</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1plugins_1_1_allow_nothing_service.html</anchorfile>
      <anchor>b0be483c4dcbb1e25fbec8da0f8018cb</anchor>
      <arglist>(pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::CookieService</name>
    <filename>classpion_1_1plugins_1_1_cookie_service.html</filename>
    <base>pion::net::WebService</base>
    <member kind="function">
      <type></type>
      <name>CookieService</name>
      <anchorfile>classpion_1_1plugins_1_1_cookie_service.html</anchorfile>
      <anchor>0244e5792e15d4e4fd60d3e0b7bd81e1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~CookieService</name>
      <anchorfile>classpion_1_1plugins_1_1_cookie_service.html</anchorfile>
      <anchor>cf39c2953db4f42a65dc2581128e22fd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1plugins_1_1_cookie_service.html</anchorfile>
      <anchor>11668973a006e5bf147dd4bcfc2de610</anchor>
      <arglist>(pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::EchoService</name>
    <filename>classpion_1_1plugins_1_1_echo_service.html</filename>
    <base>pion::net::WebService</base>
    <member kind="function">
      <type></type>
      <name>EchoService</name>
      <anchorfile>classpion_1_1plugins_1_1_echo_service.html</anchorfile>
      <anchor>9e848f3ef938ff045a44927ab1a02ca2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~EchoService</name>
      <anchorfile>classpion_1_1plugins_1_1_echo_service.html</anchorfile>
      <anchor>d24b6ae885c41c70b7b15b5ab4eadee6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1plugins_1_1_echo_service.html</anchorfile>
      <anchor>91cf2d0d345e081b285edaf81fe795ad</anchor>
      <arglist>(pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::DiskFile</name>
    <filename>classpion_1_1plugins_1_1_disk_file.html</filename>
    <member kind="function">
      <type></type>
      <name>DiskFile</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>0c86f3dd3e1635bfa4f2a86ac4b3d842</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>DiskFile</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>4d63b05b748a457fdc45d1f1c5f75181</anchor>
      <arglist>(const boost::filesystem::path &amp;path, char *content, unsigned long size, std::time_t modified, const std::string &amp;mime)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>DiskFile</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>8e1379d142b5decc4f858a98fc1d0a9e</anchor>
      <arglist>(const DiskFile &amp;f)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>a2caf96f05adcb117eb24b6b38d0c604</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>read</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>88be60ff9ac2f9443409270a1bef4a85</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>checkUpdated</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>c868afb9adbe94b42e21b3aab7cc2e42</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>const boost::filesystem::path &amp;</type>
      <name>getFilePath</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>20ddac881e9a62ce88fdd8caeedbf8e6</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>char *</type>
      <name>getFileContent</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>d57a8be0b38f56af6813fde992167774</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasFileContent</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>0ed49a71cae1ea650da78077b99821f9</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>unsigned long</type>
      <name>getFileSize</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>58a3d01bb583565232023fc476628c3f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>std::time_t</type>
      <name>getLastModified</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>708a7eeb59c458a3aac1f4651268c40f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getLastModifiedString</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>4d06d089c45e1149f4b2079de4ef3f2d</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getMimeType</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>1741e1bdb5554fe025fa0ea5e74b9cf6</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFilePath</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>278f3ed327335fbb300a80256db025ca</anchor>
      <arglist>(const boost::filesystem::path &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>appendFilePath</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>e59a2fcd5e7d8c1b77629238cf3774e1</anchor>
      <arglist>(const std::string &amp;p)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMimeType</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>ad7e1297c5d079f1c61018f94988a320</anchor>
      <arglist>(const std::string &amp;t)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetFileContent</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>9c0e38788bb2288b8162545acc29dd07</anchor>
      <arglist>(unsigned long n=0)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::filesystem::path</type>
      <name>m_file_path</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>5ca24e5af9576b10045a0bb384d2197b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::shared_array&lt; char &gt;</type>
      <name>m_file_content</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>71197f2701fe3368eb126302bc851b7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::streamsize</type>
      <name>m_file_size</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>9a5368b171ffe96e43e77049d45c0d44</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::time_t</type>
      <name>m_last_modified</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>b8d61af1f4724cdfc51251d0588cf554</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>m_last_modified_string</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>498a44c36a8e8b71410ae54db536374b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>m_mime_type</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file.html</anchorfile>
      <anchor>2d8349088e8b8a02d6251a1c0fe8a5ad</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::DiskFileSender</name>
    <filename>classpion_1_1plugins_1_1_disk_file_sender.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~DiskFileSender</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>34161db8f27fe01b556b6d9574c16317</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>send</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>d4e52361d287a9a00a96de49417410e2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>09853f2e126fcb0ab1c43b58cab39ed3</anchor>
      <arglist>(PionLogger log_ptr)</arglist>
    </member>
    <member kind="function">
      <type>PionLogger</type>
      <name>getLogger</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>1058a011249b732f55cad1a6cabb1071</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; DiskFileSender &gt;</type>
      <name>create</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>0f65090908d0319d56bb55534e4bc3d6</anchor>
      <arglist>(DiskFile &amp;file, pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn, unsigned long max_chunk_size=0)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>DiskFileSender</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>9066dca13b3b6d3884424573aea2e8d8</anchor>
      <arglist>(DiskFile &amp;file, pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn, unsigned long max_chunk_size)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>handleWrite</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>de97142a639ecb108f4c9016671f477e</anchor>
      <arglist>(const boost::system::error_code &amp;write_error, std::size_t bytes_written)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PionLogger</type>
      <name>m_logger</name>
      <anchorfile>classpion_1_1plugins_1_1_disk_file_sender.html</anchorfile>
      <anchor>a376555e6fedfc2708aaae596f5a2be5</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService</name>
    <filename>classpion_1_1plugins_1_1_file_service.html</filename>
    <base>pion::net::WebService</base>
    <member kind="function">
      <type></type>
      <name>FileService</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>566b746366310e8293a2912f6f051baa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~FileService</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>e4b432963d7483ea2d8c77b7704bfbd5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setOption</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>abab0c90280ce8c5afbb7df0ada36073</anchor>
      <arglist>(const std::string &amp;name, const std::string &amp;value)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>ee19d1623a477974b3da50eb2bfe18ef</anchor>
      <arglist>(pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>8946b68b4a6ca83f0888ea48e92a63c0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>82928e8a4a113805aa1fffba0f7a7732</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>9433a13fcca4e7d721ba7685bfc23ce1</anchor>
      <arglist>(PionLogger log_ptr)</arglist>
    </member>
    <member kind="function">
      <type>PionLogger</type>
      <name>getLogger</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>87d26a16a5426db2321d56dc25b80acc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>PION_HASH_MAP&lt; std::string, DiskFile, PION_HASH_STRING &gt;</type>
      <name>CacheMap</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>04b2fbf00c65df7cd2ec169ba1271ff9</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>PION_HASH_MAP&lt; std::string, std::string, PION_HASH_STRING &gt;</type>
      <name>MIMETypeMap</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>12dff5404c95610901a2effe5687ab46</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>scanDirectory</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>ab77e7a98ce4bd7e580bc5c71f0697cb</anchor>
      <arglist>(const boost::filesystem::path &amp;dir_path)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>std::pair&lt; CacheMap::iterator, bool &gt;</type>
      <name>addCacheEntry</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>a34098b14d311b96f73beba5c87e2db1</anchor>
      <arglist>(const std::string &amp;relative_path, const boost::filesystem::path &amp;file_path, const bool placeholder)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>sendNotFoundResponse</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>861e7c3f6400cc14bccf5c28a9f8bab4</anchor>
      <arglist>(pion::net::HTTPRequestPtr &amp;http_request, pion::net::TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static std::string</type>
      <name>findMIMEType</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>e804d2068b80d4b9596fb83b14f09b46</anchor>
      <arglist>(const std::string &amp;file_name)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PionLogger</type>
      <name>m_logger</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service.html</anchorfile>
      <anchor>ea38c57b5351936d67c3d29af65f7a23</anchor>
      <arglist></arglist>
    </member>
    <class kind="class">pion::plugins::FileService::DirectoryNotFoundException</class>
    <class kind="class">pion::plugins::FileService::FileNotFoundException</class>
    <class kind="class">pion::plugins::FileService::FileReadException</class>
    <class kind="class">pion::plugins::FileService::InvalidCacheException</class>
    <class kind="class">pion::plugins::FileService::InvalidOptionValueException</class>
    <class kind="class">pion::plugins::FileService::InvalidScanException</class>
    <class kind="class">pion::plugins::FileService::NotADirectoryException</class>
    <class kind="class">pion::plugins::FileService::NotAFileException</class>
    <class kind="class">pion::plugins::FileService::UndefinedResponseException</class>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::DirectoryNotFoundException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_directory_not_found_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>DirectoryNotFoundException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_directory_not_found_exception.html</anchorfile>
      <anchor>8aeca1362fbb5cb49c4e80d65032a69a</anchor>
      <arglist>(const std::string &amp;dir)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::FileNotFoundException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_file_not_found_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>FileNotFoundException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_file_not_found_exception.html</anchorfile>
      <anchor>fbbdfe3d06e29c72ccaba406f5b9a74a</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::FileReadException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_file_read_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>FileReadException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_file_read_exception.html</anchorfile>
      <anchor>1d04bbb7eb6b62d27d1bacab3a6fd84f</anchor>
      <arglist>(const std::string &amp;value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::InvalidCacheException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_invalid_cache_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>InvalidCacheException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_invalid_cache_exception.html</anchorfile>
      <anchor>7015e6a67fad1378c182c52963c245fb</anchor>
      <arglist>(const std::string &amp;value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::InvalidOptionValueException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_invalid_option_value_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>InvalidOptionValueException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_invalid_option_value_exception.html</anchorfile>
      <anchor>76527df031d88096f4557c2bce21d6f7</anchor>
      <arglist>(const std::string &amp;option, const std::string &amp;value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::InvalidScanException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_invalid_scan_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>InvalidScanException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_invalid_scan_exception.html</anchorfile>
      <anchor>930e4f87e1fc63621559711da43303ad</anchor>
      <arglist>(const std::string &amp;value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::NotADirectoryException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_not_a_directory_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>NotADirectoryException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_not_a_directory_exception.html</anchorfile>
      <anchor>01027c8e32844b43643db11bd34f74f9</anchor>
      <arglist>(const std::string &amp;dir)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::NotAFileException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_not_a_file_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>NotAFileException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_not_a_file_exception.html</anchorfile>
      <anchor>162e2839942fb4bdea84d8a6f44d5579</anchor>
      <arglist>(const std::string &amp;file)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::FileService::UndefinedResponseException</name>
    <filename>classpion_1_1plugins_1_1_file_service_1_1_undefined_response_exception.html</filename>
    <base>pion::PionException</base>
    <member kind="function">
      <type></type>
      <name>UndefinedResponseException</name>
      <anchorfile>classpion_1_1plugins_1_1_file_service_1_1_undefined_response_exception.html</anchorfile>
      <anchor>126a63a1dd242c6ba5cd58008d76e31d</anchor>
      <arglist>(const std::string &amp;value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::HelloService</name>
    <filename>classpion_1_1plugins_1_1_hello_service.html</filename>
    <base>pion::net::WebService</base>
    <member kind="function">
      <type></type>
      <name>HelloService</name>
      <anchorfile>classpion_1_1plugins_1_1_hello_service.html</anchorfile>
      <anchor>87b184b511b4f98d2fc6459f588dc5d8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~HelloService</name>
      <anchorfile>classpion_1_1plugins_1_1_hello_service.html</anchorfile>
      <anchor>a94676c9b8fa3697852a364c7933358d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1plugins_1_1_hello_service.html</anchorfile>
      <anchor>add07076d21b463a9cceb93cf53e089a</anchor>
      <arglist>(pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::LogServiceAppender</name>
    <filename>classpion_1_1plugins_1_1_log_service_appender.html</filename>
    <member kind="function">
      <type></type>
      <name>LogServiceAppender</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service_appender.html</anchorfile>
      <anchor>58cd26bf29dd868d30b07951e6f2f72e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~LogServiceAppender</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service_appender.html</anchorfile>
      <anchor>0aeae07ab497bc65c5cd61366ce6b4c2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMaxEvents</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service_appender.html</anchorfile>
      <anchor>b339474c8820a0966a4a640acee7b222</anchor>
      <arglist>(unsigned int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addLogString</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service_appender.html</anchorfile>
      <anchor>49895bd9fedcb6b2b6f6d9e3d0c87e68</anchor>
      <arglist>(const std::string &amp;log_string)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeLogEvents</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service_appender.html</anchorfile>
      <anchor>e9593add3f46fc38861381b8a0287934</anchor>
      <arglist>(pion::net::HTTPResponseWriterPtr &amp;writer)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>pion::plugins::LogService</name>
    <filename>classpion_1_1plugins_1_1_log_service.html</filename>
    <base>pion::net::WebService</base>
    <member kind="function">
      <type></type>
      <name>LogService</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service.html</anchorfile>
      <anchor>d450b8feac32104425be800d4d809496</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~LogService</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service.html</anchorfile>
      <anchor>e25d93c16ae114f869aae035ee470c56</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>operator()</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service.html</anchorfile>
      <anchor>9a2b559fd82bf3f38d46ebdf87f9c0b6</anchor>
      <arglist>(pion::net::HTTPRequestPtr &amp;request, pion::net::TCPConnectionPtr &amp;tcp_conn)</arglist>
    </member>
    <member kind="function">
      <type>LogServiceAppender &amp;</type>
      <name>getLogAppender</name>
      <anchorfile>classpion_1_1plugins_1_1_log_service.html</anchorfile>
      <anchor>ac412901fc69fcffcbadc7c972efcfa1</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
</tagfile>
