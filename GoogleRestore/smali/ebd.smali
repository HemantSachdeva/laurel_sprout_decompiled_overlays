.class public final enum Lebd;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lebd;

.field public static final enum b:Lebd;

.field public static final enum c:Lebd;

.field private static final synthetic d:[Lebd;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lebd;

    .line 1
    const-string v1, "PROCESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lebd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lebd;->a:Lebd;

    new-instance v1, Lebd;

    .line 2
    const-string v3, "REFUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lebd;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lebd;->b:Lebd;

    new-instance v3, Lebd;

    .line 3
    const-string v5, "DROPPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lebd;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lebd;->c:Lebd;

    const/4 v5, 0x3

    new-array v5, v5, [Lebd;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lebd;->d:[Lebd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lebd;
    .locals 1

    sget-object v0, Lebd;->d:[Lebd;

    .line 5
    invoke-virtual {v0}, [Lebd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lebd;

    return-object v0
.end method
