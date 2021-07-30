.class public final Lbmr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbdv;

.field public static final b:Lbdv;

.field public static final c:Lbdv;

.field public static final d:[Lbdv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lbdv;

    .line 1
    const-string v1, "gms_restore_api"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lbmr;->a:Lbdv;

    new-instance v1, Lbdv;

    .line 2
    const-string v4, "gms_restore_info_api"

    invoke-direct {v1, v4, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lbmr;->b:Lbdv;

    new-instance v4, Lbdv;

    .line 3
    const-string v5, "gms_cache_preview_api"

    invoke-direct {v4, v5, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lbmr;->c:Lbdv;

    const/4 v2, 0x3

    new-array v2, v2, [Lbdv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    sput-object v2, Lbmr;->d:[Lbdv;

    return-void
.end method
