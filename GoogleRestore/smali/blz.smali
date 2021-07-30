.class public final Lblz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbdv;

.field public static final b:Lbdv;

.field public static final c:Lbdv;

.field public static final d:Lbdv;

.field public static final e:[Lbdv;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lbdv;

    .line 1
    const-string v1, "set_dimensions_api"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lblz;->a:Lbdv;

    new-instance v1, Lbdv;

    .line 2
    const-string v4, "get_serving_version_api"

    invoke-direct {v1, v4, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lblz;->b:Lbdv;

    new-instance v4, Lbdv;

    .line 3
    const-string v5, "get_experiment_tokens_api"

    invoke-direct {v4, v5, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lblz;->c:Lbdv;

    new-instance v5, Lbdv;

    .line 4
    const-string v6, "sync_after_api"

    invoke-direct {v5, v6, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lblz;->d:Lbdv;

    const/4 v2, 0x4

    new-array v2, v2, [Lbdv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    sput-object v2, Lblz;->e:[Lbdv;

    return-void
.end method
