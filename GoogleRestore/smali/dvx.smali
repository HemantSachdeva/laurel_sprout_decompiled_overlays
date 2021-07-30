.class public final enum Ldvx;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldvx;

.field public static final enum b:Ldvx;

.field public static final enum c:Ldvx;

.field public static final enum d:Ldvx;

.field public static final enum e:Ldvx;

.field private static final synthetic f:[Ldvx;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ldvx;

    .line 1
    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldvx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldvx;->a:Ldvx;

    new-instance v1, Ldvx;

    .line 2
    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldvx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldvx;->b:Ldvx;

    new-instance v3, Ldvx;

    .line 3
    const-string v5, "TRANSIENT_FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldvx;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldvx;->c:Ldvx;

    new-instance v5, Ldvx;

    .line 4
    const-string v7, "IDLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldvx;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldvx;->d:Ldvx;

    new-instance v7, Ldvx;

    .line 5
    const-string v9, "SHUTDOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldvx;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldvx;->e:Ldvx;

    const/4 v9, 0x5

    new-array v9, v9, [Ldvx;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Ldvx;->f:[Ldvx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldvx;
    .locals 1

    sget-object v0, Ldvx;->f:[Ldvx;

    .line 7
    invoke-virtual {v0}, [Ldvx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldvx;

    return-object v0
.end method
