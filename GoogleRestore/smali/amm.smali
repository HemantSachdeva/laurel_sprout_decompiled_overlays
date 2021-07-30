.class public final enum Lamm;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lamm;

.field public static final enum b:Lamm;

.field public static final enum c:Lamm;

.field private static final synthetic f:[Lamm;


# instance fields
.field public final d:I

.field public final e:Lbcu;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lamm;

    .line 1
    sget-object v1, Lbcu;->d:Lbcu;

    const-string v2, "D2D"

    const/4 v3, 0x0

    const/16 v4, 0x2711

    invoke-direct {v0, v2, v3, v4, v1}, Lamm;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v0, Lamm;->a:Lamm;

    new-instance v1, Lamm;

    sget-object v2, Lbcu;->e:Lbcu;

    .line 2
    const-string v4, "OTHER_RESTORE"

    const/4 v5, 0x1

    const/16 v6, 0x2712

    invoke-direct {v1, v4, v5, v6, v2}, Lamm;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v1, Lamm;->b:Lamm;

    new-instance v2, Lamm;

    sget-object v4, Lbcu;->e:Lbcu;

    .line 3
    const-string v6, "NON_D2D"

    const/4 v7, 0x2

    const/16 v8, 0x2713

    invoke-direct {v2, v6, v7, v8, v4}, Lamm;-><init>(Ljava/lang/String;IILbcu;)V

    sput-object v2, Lamm;->c:Lamm;

    const/4 v4, 0x3

    new-array v4, v4, [Lamm;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lamm;->f:[Lamm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILbcu;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lamm;->d:I

    iput-object p4, p0, Lamm;->e:Lbcu;

    return-void
.end method

.method public static values()[Lamm;
    .locals 1

    sget-object v0, Lamm;->f:[Lamm;

    .line 5
    invoke-virtual {v0}, [Lamm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamm;

    return-object v0
.end method
