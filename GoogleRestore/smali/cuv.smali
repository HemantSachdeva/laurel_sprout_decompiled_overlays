.class public final enum Lcuv;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcuv;

.field public static final enum b:Lcuv;

.field public static final enum c:Lcuv;

.field public static final enum d:Lcuv;

.field public static final enum e:Lcuv;

.field private static final synthetic g:[Lcuv;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcuv;

    .line 1
    const-string v1, "GENERAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcuv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcuv;->a:Lcuv;

    new-instance v1, Lcuv;

    .line 2
    const-string v4, "BOOLEAN"

    invoke-direct {v1, v4, v3, v2}, Lcuv;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcuv;->b:Lcuv;

    new-instance v4, Lcuv;

    .line 3
    const-string v5, "CHARACTER"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lcuv;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcuv;->c:Lcuv;

    new-instance v5, Lcuv;

    .line 4
    const-string v7, "INTEGRAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcuv;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcuv;->d:Lcuv;

    new-instance v7, Lcuv;

    .line 5
    const-string v9, "FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lcuv;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcuv;->e:Lcuv;

    const/4 v9, 0x5

    new-array v9, v9, [Lcuv;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcuv;->g:[Lcuv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcuv;->f:Z

    return-void
.end method

.method public static values()[Lcuv;
    .locals 1

    sget-object v0, Lcuv;->g:[Lcuv;

    .line 7
    invoke-virtual {v0}, [Lcuv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcuv;

    return-object v0
.end method
