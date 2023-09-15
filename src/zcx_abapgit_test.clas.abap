CLASS zcx_abapgit_test DEFINITION
  PUBLIC
  INHERITING FROM zcx_abapgit_test_super
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS zcx_abapgit_test TYPE sotr_conc VALUE '0242AC1100021EEE94F8E6151427C444' ##NO_TEXT.

    METHODS constructor
      IMPORTING
        !textid   LIKE textid OPTIONAL
        !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_abapgit_test IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        textid   = textid
        previous = previous.
    IF textid IS INITIAL.
      me->textid = zcx_abapgit_test .
    ENDIF.
  ENDMETHOD.
ENDCLASS.
