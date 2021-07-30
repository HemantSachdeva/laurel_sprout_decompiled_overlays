.class final enum Lcyw;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcyw;

.field public static final enum b:Lcyw;

.field private static final synthetic c:[Lcyw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcyw;

    .line 1
    const-string v1, "OUTPUT_FUTURE_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcyw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcyw;->a:Lcyw;

    new-instance v1, Lcyw;

    .line 2
    const-string v3, "ALL_INPUT_FUTURES_PROCESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcyw;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcyw;->b:Lcyw;

    const/4 v3, 0x2

    new-array v3, v3, [Lcyw;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcyw;->c:[Lcyw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcyw;
    .locals 1

    sget-object v0, Lcyw;->c:[Lcyw;

    .line 4
    invoke-virtual {v0}, [Lcyw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyw;

    return-object v0
.end method
