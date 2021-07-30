.class public final enum Li;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Li;

.field public static final enum b:Li;

.field public static final enum c:Li;

.field public static final enum d:Li;

.field public static final enum e:Li;

.field private static final synthetic f:[Li;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Li;

    .line 1
    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li;->a:Li;

    new-instance v1, Li;

    .line 2
    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li;->b:Li;

    new-instance v3, Li;

    .line 3
    const-string v5, "CREATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li;->c:Li;

    new-instance v5, Li;

    .line 4
    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Li;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li;->d:Li;

    new-instance v7, Li;

    .line 5
    const-string v9, "RESUMED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Li;-><init>(Ljava/lang/String;I)V

    sput-object v7, Li;->e:Li;

    const/4 v9, 0x5

    new-array v9, v9, [Li;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Li;->f:[Li;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Li;
    .locals 1

    sget-object v0, Li;->f:[Li;

    .line 8
    invoke-virtual {v0}, [Li;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li;

    return-object v0
.end method


# virtual methods
.method public final a(Li;)Z
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Li;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
