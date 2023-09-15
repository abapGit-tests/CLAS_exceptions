CLASS zcx_abapgit_test_super DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS zcx_abapgit_test_super TYPE sotr_conc VALUE '0242AC1100021EEE94F8E9A947A9444E' ##NO_TEXT.

    METHODS constructor
      IMPORTING
        !textid   LIKE textid OPTIONAL
        !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_abapgit_test_super IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        textid   = textid
        previous = previous.
    IF textid IS INITIAL.
      me->textid = zcx_abapgit_test_super .
    ENDIF.
  ENDMETHOD.
ENDCLASS.
