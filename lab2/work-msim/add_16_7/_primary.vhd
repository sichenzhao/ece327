library verilog;
use verilog.vl_types.all;
entity add_16_7 is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        d               : out    vl_logic_vector(15 downto 0);
        cout            : out    vl_logic;
        p_modgen_add_6_nx48: in     vl_logic;
        p_modgen_add_6_nx40: in     vl_logic
    );
end add_16_7;
