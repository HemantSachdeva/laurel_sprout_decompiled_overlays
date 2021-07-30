.class public final enum Ldmz;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldmz;

.field public static final enum b:Ldmz;

.field public static final enum c:Ldmz;

.field public static final enum d:Ldmz;

.field public static final enum e:Ldmz;

.field public static final enum f:Ldmz;

.field public static final enum g:Ldmz;

.field public static final enum h:Ldmz;

.field public static final enum i:Ldmz;

.field public static final enum j:Ldmz;

.field public static final enum k:Ldmz;

.field public static final enum l:Ldmz;

.field public static final enum m:Ldmz;

.field public static final enum n:Ldmz;

.field public static final enum o:Ldmz;

.field public static final enum p:Ldmz;

.field public static final enum q:Ldmz;

.field public static final enum r:Ldmz;

.field private static final synthetic u:[Ldmz;


# instance fields
.field public final s:Ldna;

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Ldmz;

    .line 1
    sget-object v1, Ldna;->d:Ldna;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v0, Ldmz;->a:Ldmz;

    new-instance v1, Ldmz;

    sget-object v2, Ldna;->c:Ldna;

    .line 2
    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v1, Ldmz;->b:Ldmz;

    new-instance v2, Ldmz;

    sget-object v5, Ldna;->b:Ldna;

    .line 3
    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v2, Ldmz;->c:Ldmz;

    new-instance v5, Ldmz;

    sget-object v7, Ldna;->b:Ldna;

    .line 4
    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v5, Ldmz;->d:Ldmz;

    new-instance v7, Ldmz;

    sget-object v9, Ldna;->a:Ldna;

    .line 5
    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v7, Ldmz;->e:Ldmz;

    new-instance v9, Ldmz;

    sget-object v11, Ldna;->b:Ldna;

    .line 6
    const-string v13, "FIXED64"

    invoke-direct {v9, v13, v6, v11, v4}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v9, Ldmz;->f:Ldmz;

    new-instance v11, Ldmz;

    sget-object v13, Ldna;->a:Ldna;

    .line 7
    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v11, Ldmz;->g:Ldmz;

    new-instance v13, Ldmz;

    sget-object v14, Ldna;->e:Ldna;

    .line 8
    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v13, Ldmz;->h:Ldmz;

    new-instance v14, Ldmz;

    sget-object v15, Ldna;->f:Ldna;

    .line 9
    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v14, Ldmz;->i:Ldmz;

    new-instance v12, Ldmz;

    sget-object v15, Ldna;->i:Ldna;

    .line 10
    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v12, Ldmz;->j:Ldmz;

    new-instance v4, Ldmz;

    sget-object v15, Ldna;->i:Ldna;

    .line 11
    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v4, Ldmz;->k:Ldmz;

    new-instance v6, Ldmz;

    sget-object v15, Ldna;->g:Ldna;

    .line 12
    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v6, Ldmz;->l:Ldmz;

    new-instance v10, Ldmz;

    sget-object v15, Ldna;->a:Ldna;

    .line 13
    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v10, Ldmz;->m:Ldmz;

    new-instance v3, Ldmz;

    sget-object v15, Ldna;->h:Ldna;

    .line 14
    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v3, Ldmz;->n:Ldmz;

    new-instance v6, Ldmz;

    sget-object v8, Ldna;->a:Ldna;

    .line 15
    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v6, Ldmz;->o:Ldmz;

    new-instance v3, Ldmz;

    sget-object v8, Ldna;->b:Ldna;

    .line 16
    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v3, Ldmz;->p:Ldmz;

    new-instance v6, Ldmz;

    sget-object v8, Ldna;->a:Ldna;

    .line 17
    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v6, Ldmz;->q:Ldmz;

    new-instance v8, Ldmz;

    sget-object v15, Ldna;->b:Ldna;

    .line 18
    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Ldmz;-><init>(Ljava/lang/String;ILdna;I)V

    sput-object v8, Ldmz;->r:Ldmz;

    const/16 v10, 0x12

    new-array v10, v10, [Ldmz;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v14, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v8, v10, v6

    sput-object v10, Ldmz;->u:[Ldmz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILdna;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ldmz;->s:Ldna;

    iput p4, p0, Ldmz;->t:I

    return-void
.end method

.method public static values()[Ldmz;
    .locals 1

    sget-object v0, Ldmz;->u:[Ldmz;

    .line 20
    invoke-virtual {v0}, [Ldmz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldmz;

    return-object v0
.end method
