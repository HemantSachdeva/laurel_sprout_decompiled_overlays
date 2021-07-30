.class public final enum Lh;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lh;

.field public static final enum b:Lh;

.field public static final enum c:Lh;

.field public static final enum d:Lh;

.field public static final enum e:Lh;

.field public static final enum f:Lh;

.field public static final enum g:Lh;

.field private static final synthetic h:[Lh;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lh;

    .line 1
    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh;->a:Lh;

    new-instance v1, Lh;

    .line 2
    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh;->b:Lh;

    new-instance v3, Lh;

    .line 3
    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lh;->c:Lh;

    new-instance v5, Lh;

    .line 4
    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lh;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lh;->d:Lh;

    new-instance v7, Lh;

    .line 5
    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lh;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lh;->e:Lh;

    new-instance v9, Lh;

    .line 6
    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lh;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lh;->f:Lh;

    new-instance v11, Lh;

    .line 7
    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lh;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lh;->g:Lh;

    const/4 v13, 0x7

    new-array v13, v13, [Lh;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lh;->h:[Lh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lh;
    .locals 1

    sget-object v0, Lh;->h:[Lh;

    .line 9
    invoke-virtual {v0}, [Lh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh;

    return-object v0
.end method
