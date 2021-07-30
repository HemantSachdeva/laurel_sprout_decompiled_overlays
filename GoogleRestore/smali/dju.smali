.class public final enum Ldju;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:Ldju;

.field public static final enum B:Ldju;

.field public static final enum C:Ldju;

.field public static final enum D:Ldju;

.field public static final enum E:Ldju;

.field public static final enum F:Ldju;

.field public static final enum G:Ldju;

.field public static final enum H:Ldju;

.field public static final enum I:Ldju;

.field public static final enum J:Ldju;

.field public static final enum K:Ldju;

.field public static final enum L:Ldju;

.field public static final enum M:Ldju;

.field public static final enum N:Ldju;

.field public static final enum O:Ldju;

.field public static final enum P:Ldju;

.field public static final enum Q:Ldju;

.field public static final enum R:Ldju;

.field public static final enum S:Ldju;

.field public static final enum T:Ldju;

.field public static final enum U:Ldju;

.field public static final enum V:Ldju;

.field public static final enum W:Ldju;

.field public static final enum X:Ldju;

.field public static final enum Y:Ldju;

.field public static final enum a:Ldju;

.field private static final aa:[Ldju;

.field private static final synthetic ab:[Ldju;

.field public static final enum b:Ldju;

.field public static final enum c:Ldju;

.field public static final enum d:Ldju;

.field public static final enum e:Ldju;

.field public static final enum f:Ldju;

.field public static final enum g:Ldju;

.field public static final enum h:Ldju;

.field public static final enum i:Ldju;

.field public static final enum j:Ldju;

.field public static final enum k:Ldju;

.field public static final enum l:Ldju;

.field public static final enum m:Ldju;

.field public static final enum n:Ldju;

.field public static final enum o:Ldju;

.field public static final enum p:Ldju;

.field public static final enum q:Ldju;

.field public static final enum r:Ldju;

.field public static final enum s:Ldju;

.field public static final enum t:Ldju;

.field public static final enum u:Ldju;

.field public static final enum v:Ldju;

.field public static final enum w:Ldju;

.field public static final enum x:Ldju;

.field public static final enum y:Ldju;

.field public static final enum z:Ldju;


# instance fields
.field public final Z:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Ldju;

    .line 1
    sget-object v5, Ldko;->e:Ldko;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v6, Ldju;->a:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->d:Ldko;

    .line 2
    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->b:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 3
    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->c:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->c:Ldko;

    .line 4
    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->d:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->b:Ldko;

    .line 5
    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->e:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->c:Ldko;

    .line 6
    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->f:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->b:Ldko;

    .line 7
    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->g:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->f:Ldko;

    .line 8
    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->h:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->g:Ldko;

    .line 9
    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->i:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->j:Ldko;

    .line 10
    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->j:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->h:Ldko;

    .line 11
    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->k:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 12
    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->l:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->i:Ldko;

    .line 13
    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->m:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 14
    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->n:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 15
    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->o:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 16
    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->p:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 17
    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->q:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->j:Ldko;

    .line 18
    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->r:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->e:Ldko;

    .line 19
    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->s:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->d:Ldko;

    .line 20
    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->t:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 21
    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->u:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->c:Ldko;

    .line 22
    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->v:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->b:Ldko;

    .line 23
    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->w:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->c:Ldko;

    .line 24
    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->x:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->b:Ldko;

    .line 25
    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->y:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->f:Ldko;

    .line 26
    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->z:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->g:Ldko;

    .line 27
    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->A:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->j:Ldko;

    .line 28
    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->B:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->h:Ldko;

    .line 29
    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->C:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 30
    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->D:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->i:Ldko;

    .line 31
    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->E:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 32
    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->F:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 33
    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->G:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 34
    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->H:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 35
    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->I:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->e:Ldko;

    .line 36
    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    const/4 v11, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->J:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->d:Ldko;

    .line 37
    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    const/4 v5, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->K:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->c:Ldko;

    .line 38
    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->L:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 39
    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->M:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 40
    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->N:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 41
    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->O:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 42
    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->P:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->f:Ldko;

    .line 43
    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->Q:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 44
    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->R:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->i:Ldko;

    .line 45
    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->S:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 46
    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->T:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 47
    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->U:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->b:Ldko;

    .line 48
    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->V:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->c:Ldko;

    .line 49
    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->W:Ldju;

    new-instance v0, Ldju;

    sget-object v12, Ldko;->j:Ldko;

    .line 50
    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->X:Ldju;

    new-instance v0, Ldju;

    sget-object v6, Ldko;->a:Ldko;

    .line 51
    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    const/4 v5, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldju;-><init>(Ljava/lang/String;IIILdko;)V

    sput-object v0, Ldju;->Y:Ldju;

    const/16 v0, 0x33

    new-array v0, v0, [Ldju;

    sget-object v1, Ldju;->a:Ldju;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ldju;->b:Ldju;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ldju;->c:Ldju;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Ldju;->d:Ldju;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Ldju;->e:Ldju;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Ldju;->f:Ldju;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Ldju;->g:Ldju;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Ldju;->h:Ldju;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Ldju;->i:Ldju;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Ldju;->j:Ldju;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Ldju;->k:Ldju;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Ldju;->l:Ldju;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Ldju;->m:Ldju;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Ldju;->n:Ldju;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Ldju;->o:Ldju;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Ldju;->p:Ldju;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Ldju;->q:Ldju;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    sget-object v1, Ldju;->r:Ldju;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    sget-object v1, Ldju;->s:Ldju;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    sget-object v1, Ldju;->t:Ldju;

    const/16 v3, 0x13

    aput-object v1, v0, v3

    sget-object v1, Ldju;->u:Ldju;

    const/16 v3, 0x14

    aput-object v1, v0, v3

    sget-object v1, Ldju;->v:Ldju;

    const/16 v3, 0x15

    aput-object v1, v0, v3

    sget-object v1, Ldju;->w:Ldju;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    sget-object v1, Ldju;->x:Ldju;

    const/16 v3, 0x17

    aput-object v1, v0, v3

    sget-object v1, Ldju;->y:Ldju;

    const/16 v3, 0x18

    aput-object v1, v0, v3

    sget-object v1, Ldju;->z:Ldju;

    const/16 v3, 0x19

    aput-object v1, v0, v3

    sget-object v1, Ldju;->A:Ldju;

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    sget-object v1, Ldju;->B:Ldju;

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    sget-object v1, Ldju;->C:Ldju;

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    sget-object v1, Ldju;->D:Ldju;

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    sget-object v1, Ldju;->E:Ldju;

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    sget-object v1, Ldju;->F:Ldju;

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    sget-object v1, Ldju;->G:Ldju;

    const/16 v3, 0x20

    aput-object v1, v0, v3

    sget-object v1, Ldju;->H:Ldju;

    const/16 v3, 0x21

    aput-object v1, v0, v3

    sget-object v1, Ldju;->I:Ldju;

    const/16 v3, 0x22

    aput-object v1, v0, v3

    sget-object v1, Ldju;->J:Ldju;

    const/16 v3, 0x23

    aput-object v1, v0, v3

    sget-object v1, Ldju;->K:Ldju;

    const/16 v3, 0x24

    aput-object v1, v0, v3

    sget-object v1, Ldju;->L:Ldju;

    const/16 v3, 0x25

    aput-object v1, v0, v3

    sget-object v1, Ldju;->M:Ldju;

    const/16 v3, 0x26

    aput-object v1, v0, v3

    sget-object v1, Ldju;->N:Ldju;

    const/16 v3, 0x27

    aput-object v1, v0, v3

    sget-object v1, Ldju;->O:Ldju;

    const/16 v3, 0x28

    aput-object v1, v0, v3

    sget-object v1, Ldju;->P:Ldju;

    const/16 v3, 0x29

    aput-object v1, v0, v3

    sget-object v1, Ldju;->Q:Ldju;

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    sget-object v1, Ldju;->R:Ldju;

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    sget-object v1, Ldju;->S:Ldju;

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    sget-object v1, Ldju;->T:Ldju;

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    sget-object v1, Ldju;->U:Ldju;

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    sget-object v1, Ldju;->V:Ldju;

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    sget-object v1, Ldju;->W:Ldju;

    const/16 v3, 0x30

    aput-object v1, v0, v3

    sget-object v1, Ldju;->X:Ldju;

    const/16 v3, 0x31

    aput-object v1, v0, v3

    sget-object v1, Ldju;->Y:Ldju;

    const/16 v3, 0x32

    aput-object v1, v0, v3

    sput-object v0, Ldju;->ab:[Ldju;

    .line 52
    invoke-static {}, Ldju;->values()[Ldju;

    move-result-object v0

    .line 53
    array-length v1, v0

    new-array v3, v1, [Ldju;

    sput-object v3, Ldju;->aa:[Ldju;

    :goto_0
    if-ge v2, v1, :cond_0

    .line 54
    aget-object v3, v0, v2

    sget-object v4, Ldju;->aa:[Ldju;

    .line 55
    iget v5, v3, Ldju;->Z:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILdko;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldju;->Z:I

    .line 57
    sget-object p1, Ldko;->a:Ldko;

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 58
    invoke-virtual {p5}, Ldko;->ordinal()I

    :cond_0
    return-void
.end method

.method public static values()[Ldju;
    .locals 1

    sget-object v0, Ldju;->ab:[Ldju;

    .line 59
    invoke-virtual {v0}, [Ldju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldju;

    return-object v0
.end method
