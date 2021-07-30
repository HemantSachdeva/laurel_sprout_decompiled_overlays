.class public final enum Ldxw;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldxw;

.field public static final enum b:Ldxw;

.field public static final enum c:Ldxw;

.field public static final enum d:Ldxw;

.field public static final enum e:Ldxw;

.field private static final synthetic f:[Ldxw;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ldxw;

    .line 1
    const-string v1, "UNARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldxw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldxw;->a:Ldxw;

    new-instance v1, Ldxw;

    .line 2
    const-string v3, "CLIENT_STREAMING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldxw;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldxw;->b:Ldxw;

    new-instance v3, Ldxw;

    .line 3
    const-string v5, "SERVER_STREAMING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldxw;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldxw;->c:Ldxw;

    new-instance v5, Ldxw;

    .line 4
    const-string v7, "BIDI_STREAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldxw;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldxw;->d:Ldxw;

    new-instance v7, Ldxw;

    .line 5
    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldxw;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldxw;->e:Ldxw;

    const/4 v9, 0x5

    new-array v9, v9, [Ldxw;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Ldxw;->f:[Ldxw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldxw;
    .locals 1

    sget-object v0, Ldxw;->f:[Ldxw;

    .line 7
    invoke-virtual {v0}, [Ldxw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldxw;

    return-object v0
.end method
