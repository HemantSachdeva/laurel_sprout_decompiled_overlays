.class public final enum Ldci;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldci;

.field public static final enum b:Ldci;

.field public static final enum c:Ldci;

.field private static final synthetic d:[Ldci;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ldci;

    .line 1
    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldci;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldci;->a:Ldci;

    new-instance v1, Ldci;

    .line 2
    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldci;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldci;->b:Ldci;

    new-instance v3, Ldci;

    .line 3
    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldci;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldci;->c:Ldci;

    const/4 v5, 0x3

    new-array v5, v5, [Ldci;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ldci;->d:[Ldci;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldci;
    .locals 1

    sget-object v0, Ldci;->d:[Ldci;

    .line 5
    invoke-virtual {v0}, [Ldci;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldci;

    return-object v0
.end method
