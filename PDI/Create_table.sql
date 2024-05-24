-- Table: public.abundancia

-- DROP TABLE IF EXISTS public.abundancia;

CREATE TABLE IF NOT EXISTS public.abundancia
(
    id bigint,
    campanha bigint,
    etapa character varying(11),
    modulo bigint,
    data_registro timestamp without time zone,
    horario character varying(30),
    periodo_sazonal character varying(10),
    nome_cientifico character varying(50),
    abundancia_individuos smallint,
    horario_tratado text,
    status_extincao character varying(15),
    "Total de indivíduos por campanha etapa e modulo" double precision,
    "Total de nome cientifico por campanha etapa e modulo" bigint,
    "Data de registro mais antiga" timestamp without time zone,
    "Data de registro mais recente" timestamp without time zone,
    lipaugus boolean,
    data_hora timestamp without time zone,
    "Qtd dias distintos" character varying(10),
    "Data da Transformacao" timestamp without time zone
)
TABLESPACE pg_default;

