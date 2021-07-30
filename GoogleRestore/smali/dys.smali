.class public final enum Ldys;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldys;

.field public static final enum b:Ldys;

.field public static final enum c:Ldys;

.field public static final enum d:Ldys;

.field public static final enum e:Ldys;

.field public static final enum f:Ldys;

.field public static final enum g:Ldys;

.field public static final enum h:Ldys;

.field public static final enum i:Ldys;

.field public static final enum j:Ldys;

.field public static final enum k:Ldys;

.field public static final enum l:Ldys;

.field public static final enum m:Ldys;

.field public static final enum n:Ldys;

.field public static final enum o:Ldys;

.field public static final enum p:Ldys;

.field public static final enum q:Ldys;

.field private static final synthetic t:[Ldys;


# instance fields
.field public final r:I

.field public final s:[B


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Ldys;

    .line 1
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldys;->a:Ldys;

    new-instance v1, Ldys;

    .line 2
    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldys;->b:Ldys;

    new-instance v3, Ldys;

    .line 3
    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldys;->c:Ldys;

    new-instance v5, Ldys;

    .line 4
    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldys;->d:Ldys;

    new-instance v7, Ldys;

    .line 5
    const-string v9, "DEADLINE_EXCEEDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldys;->e:Ldys;

    new-instance v9, Ldys;

    .line 6
    const-string v11, "NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldys;->f:Ldys;

    new-instance v11, Ldys;

    .line 7
    const-string v13, "ALREADY_EXISTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldys;->g:Ldys;

    new-instance v13, Ldys;

    .line 8
    const-string v15, "PERMISSION_DENIED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ldys;->h:Ldys;

    new-instance v15, Ldys;

    .line 9
    const-string v14, "RESOURCE_EXHAUSTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v15, Ldys;->i:Ldys;

    new-instance v14, Ldys;

    .line 10
    const-string v12, "FAILED_PRECONDITION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v14, Ldys;->j:Ldys;

    new-instance v12, Ldys;

    .line 11
    const-string v10, "ABORTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v12, Ldys;->k:Ldys;

    new-instance v10, Ldys;

    .line 12
    const-string v8, "OUT_OF_RANGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v10, Ldys;->l:Ldys;

    new-instance v8, Ldys;

    .line 13
    const-string v6, "UNIMPLEMENTED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ldys;->m:Ldys;

    new-instance v6, Ldys;

    .line 14
    const-string v4, "INTERNAL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldys;->n:Ldys;

    new-instance v4, Ldys;

    .line 15
    const-string v2, "UNAVAILABLE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldys;->o:Ldys;

    new-instance v2, Ldys;

    .line 16
    const-string v6, "DATA_LOSS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ldys;->p:Ldys;

    new-instance v6, Ldys;

    .line 17
    const-string v4, "UNAUTHENTICATED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Ldys;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldys;->q:Ldys;

    const/16 v4, 0x11

    new-array v4, v4, [Ldys;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Ldys;->t:[Ldys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldys;->r:I

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcqp;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Ldys;->s:[B

    return-void
.end method

.method public static values()[Ldys;
    .locals 1

    sget-object v0, Ldys;->t:[Ldys;

    .line 21
    invoke-virtual {v0}, [Ldys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldys;

    return-object v0
.end method


# virtual methods
.method public final a()Ldyv;
    .locals 2

    .line 20
    sget-object v0, Ldyv;->a:Ljava/util/List;

    iget v1, p0, Ldys;->r:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyv;

    return-object v0
.end method
