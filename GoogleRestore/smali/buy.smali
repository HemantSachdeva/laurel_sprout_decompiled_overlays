.class final enum Lbuy;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lbuy;

.field public static final enum b:Lbuy;

.field public static final enum c:Lbuy;

.field public static final enum d:Lbuy;

.field public static final enum e:Lbuy;

.field private static final synthetic f:[Lbuy;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lbuy;

    .line 1
    const-string v1, "WAKELOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbuy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbuy;->a:Lbuy;

    new-instance v1, Lbuy;

    const-string v3, "SYNC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbuy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbuy;->b:Lbuy;

    new-instance v3, Lbuy;

    const-string v5, "JOB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbuy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbuy;->c:Lbuy;

    new-instance v5, Lbuy;

    const-string v7, "PROCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbuy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbuy;->d:Lbuy;

    new-instance v7, Lbuy;

    const-string v9, "SENSOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lbuy;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lbuy;->e:Lbuy;

    const/4 v9, 0x5

    new-array v9, v9, [Lbuy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lbuy;->f:[Lbuy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbuy;
    .locals 1

    sget-object v0, Lbuy;->f:[Lbuy;

    .line 3
    invoke-virtual {v0}, [Lbuy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbuy;

    return-object v0
.end method
