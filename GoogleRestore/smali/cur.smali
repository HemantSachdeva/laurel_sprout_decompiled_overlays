.class public final enum Lcur;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcur;

.field public static final enum b:Lcur;

.field public static final enum c:Lcur;

.field public static final enum d:Lcur;

.field public static final enum e:Lcur;

.field private static final synthetic g:[Lcur;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcur;

    .line 1
    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcur;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcur;->a:Lcur;

    new-instance v1, Lcur;

    .line 2
    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    const/16 v5, 0x14

    invoke-direct {v1, v3, v4, v5}, Lcur;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcur;->b:Lcur;

    new-instance v3, Lcur;

    .line 3
    const-string v5, "LARGE"

    const/4 v6, 0x2

    const/16 v7, 0x32

    invoke-direct {v3, v5, v6, v7}, Lcur;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcur;->c:Lcur;

    new-instance v5, Lcur;

    .line 4
    const-string v7, "FULL"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcur;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcur;->d:Lcur;

    new-instance v7, Lcur;

    .line 5
    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lcur;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcur;->e:Lcur;

    const/4 v9, 0x5

    new-array v9, v9, [Lcur;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcur;->g:[Lcur;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcur;->f:I

    return-void
.end method

.method public static values()[Lcur;
    .locals 1

    sget-object v0, Lcur;->g:[Lcur;

    .line 7
    invoke-virtual {v0}, [Lcur;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcur;

    return-object v0
.end method
