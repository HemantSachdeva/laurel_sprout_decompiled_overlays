.class public final enum Lauu;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lauu;

.field public static final enum b:Lauu;

.field public static final enum c:Lauu;

.field public static final enum d:Lauu;

.field public static final enum e:Lauu;

.field public static final enum f:Lauu;

.field public static final enum g:Lauu;

.field public static final enum h:Lauu;

.field public static final enum i:Lauu;

.field public static final enum j:Lauu;

.field public static final enum k:Lauu;

.field public static final enum l:Lauu;

.field public static final enum m:Lauu;

.field public static final enum n:Lauu;

.field public static final enum o:Lauu;

.field public static final enum p:Lauu;

.field public static final enum q:Lauu;

.field public static final enum r:Lauu;

.field private static final synthetic t:[Lauu;


# instance fields
.field public final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lauu;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lauu;->a:Lauu;

    new-instance v1, Lauu;

    .line 2
    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lauu;->b:Lauu;

    new-instance v3, Lauu;

    .line 3
    const-string v5, "INVALID_LSKF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lauu;->c:Lauu;

    new-instance v5, Lauu;

    .line 4
    const-string v7, "VAULT_LOCKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lauu;->d:Lauu;

    new-instance v7, Lauu;

    .line 5
    const-string v9, "VAULT_NOT_FOUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lauu;->e:Lauu;

    new-instance v9, Lauu;

    .line 6
    const-string v11, "CHALLENGE_INVALID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lauu;->f:Lauu;

    new-instance v11, Lauu;

    .line 7
    const-string v13, "COOL_OFF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lauu;->g:Lauu;

    new-instance v13, Lauu;

    .line 8
    const-string v15, "UNKNOWN_BACKEND_PUBLIC_KEY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lauu;->h:Lauu;

    new-instance v15, Lauu;

    .line 9
    const-string v14, "SERVER_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lauu;->i:Lauu;

    new-instance v14, Lauu;

    .line 10
    const-string v12, "NETWORK_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lauu;->j:Lauu;

    new-instance v12, Lauu;

    .line 11
    const-string v10, "KEYSTORE_ERROR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lauu;->k:Lauu;

    new-instance v10, Lauu;

    .line 12
    const-string v8, "REFLECTIVE_EXCEPTION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lauu;->l:Lauu;

    new-instance v8, Lauu;

    .line 13
    const-string v6, "CLIENT_CRYPTO_ERROR"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lauu;->m:Lauu;

    new-instance v6, Lauu;

    .line 14
    const-string v4, "INVALID_RECOVERY_DATA"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lauu;->n:Lauu;

    new-instance v4, Lauu;

    .line 15
    const-string v2, "INVALID_RECOVERY_STATE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lauu;->o:Lauu;

    new-instance v2, Lauu;

    .line 16
    const-string v6, "RECOVERY_SNAPSHOT_INTERNAL_ERROR"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lauu;->p:Lauu;

    new-instance v6, Lauu;

    .line 17
    const-string v4, "START_RECOVERY_INTERNAL_ERROR"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lauu;->q:Lauu;

    new-instance v4, Lauu;

    .line 18
    const-string v2, "PENDING_INTENT_FAILED"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lauu;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lauu;->r:Lauu;

    const/16 v2, 0x12

    new-array v2, v2, [Lauu;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lauu;->t:[Lauu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lauu;->s:I

    return-void
.end method

.method public static values()[Lauu;
    .locals 1

    sget-object v0, Lauu;->t:[Lauu;

    .line 20
    invoke-virtual {v0}, [Lauu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lauu;

    return-object v0
.end method
