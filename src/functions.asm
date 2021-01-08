SECTION "Functions", ROM0
Memcpy::
    ld a, [de]
    inc de
    ld [hli], a
    dec bc
    ld a, b
    or c
    jr nz, Memcpy
    ret

Zerofill::
    xor a
    ld [hli], a
    dec bc
    ld a, b
    or c
    jr nz, Zerofill
    ret