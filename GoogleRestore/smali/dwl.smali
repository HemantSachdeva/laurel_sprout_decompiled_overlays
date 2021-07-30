.class public final enum Ldwl;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldwl;

.field public static final enum b:Ldwl;

.field public static final enum c:Ldwl;

.field public static final enum d:Ldwl;

.field private static final synthetic e:[Ldwl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ldwl;

    .line 1
    const-string v1, "CT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldwl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldwl;->a:Ldwl;

    new-instance v1, Ldwl;

    const-string v3, "CT_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldwl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldwl;->b:Ldwl;

    new-instance v3, Ldwl;

    const-string v5, "CT_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldwl;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldwl;->c:Ldwl;

    new-instance v5, Ldwl;

    const-string v7, "CT_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldwl;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldwl;->d:Ldwl;

    const/4 v7, 0x4

    new-array v7, v7, [Ldwl;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ldwl;->e:[Ldwl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldwl;
    .locals 1

    sget-object v0, Ldwl;->e:[Ldwl;

    .line 3
    invoke-virtual {v0}, [Ldwl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldwl;

    return-object v0
.end method
