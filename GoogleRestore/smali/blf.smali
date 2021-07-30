.class public final enum Lblf;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lblf;

.field public static final enum b:Lblf;

.field public static final enum c:Lblf;

.field private static final synthetic d:[Lblf;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lblf;

    .line 1
    const-string v1, "PERMIT_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lblf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lblf;->a:Lblf;

    new-instance v1, Lblf;

    .line 2
    const-string v3, "PERMIT_BLOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lblf;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lblf;->b:Lblf;

    new-instance v3, Lblf;

    .line 3
    const-string v5, "PERMIT_NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lblf;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lblf;->c:Lblf;

    const/4 v5, 0x3

    new-array v5, v5, [Lblf;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lblf;->d:[Lblf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lblf;
    .locals 1

    sget-object v0, Lblf;->d:[Lblf;

    .line 5
    invoke-virtual {v0}, [Lblf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lblf;

    return-object v0
.end method
