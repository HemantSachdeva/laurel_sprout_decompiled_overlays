.class final enum Leij;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Leij;

.field public static final enum b:Leij;

.field public static final enum c:Leij;

.field private static final synthetic d:[Leij;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Leij;

    .line 1
    const-string v1, "BLOCKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leij;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leij;->a:Leij;

    new-instance v1, Leij;

    const-string v3, "FUTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leij;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leij;->b:Leij;

    new-instance v3, Leij;

    const-string v5, "ASYNC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leij;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leij;->c:Leij;

    const/4 v5, 0x3

    new-array v5, v5, [Leij;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Leij;->d:[Leij;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Leij;
    .locals 1

    sget-object v0, Leij;->d:[Leij;

    .line 3
    invoke-virtual {v0}, [Leij;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leij;

    return-object v0
.end method
