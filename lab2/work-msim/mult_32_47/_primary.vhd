library verilog;
use verilog.vl_types.all;
entity mult_32_47 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        d               : out    vl_logic_vector(31 downto 0);
        p_modgen_add_6_nx48: out    vl_logic;
        p_modgen_add_6_nx40: out    vl_logic
    );
end mult_32_47;
