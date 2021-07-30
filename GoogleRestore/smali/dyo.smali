.class public final enum Ldyo;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldyo;

.field public static final enum b:Ldyo;

.field public static final enum c:Ldyo;

.field private static final synthetic d:[Ldyo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ldyo;

    .line 1
    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldyo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldyo;->a:Ldyo;

    new-instance v1, Ldyo;

    .line 2
    const-string v3, "INTEGRITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldyo;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldyo;->b:Ldyo;

    new-instance v3, Ldyo;

    .line 3
    const-string v5, "PRIVACY_AND_INTEGRITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldyo;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldyo;->c:Ldyo;

    const/4 v5, 0x3

    new-array v5, v5, [Ldyo;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ldyo;->d:[Ldyo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldyo;
    .locals 1

    sget-object v0, Ldyo;->d:[Ldyo;

    .line 5
    invoke-virtual {v0}, [Ldyo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldyo;

    return-object v0
.end method
