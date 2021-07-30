.class public final Larx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbdv;

.field public static final b:Lbdv;

.field public static final c:Lbdv;

.field public static final d:Lbdv;

.field public static final e:Lbdv;

.field public static final f:Lbdv;

.field public static final g:Lbdv;

.field public static final h:Lbdv;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lbdv;

    .line 1
    const-string v1, "account_data_service"

    const-wide/16 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v0, Larx;->a:Lbdv;

    new-instance v1, Lbdv;

    .line 2
    const-string v2, "account_data_service_legacy"

    const-wide/16 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v1, Larx;->b:Lbdv;

    new-instance v2, Lbdv;

    .line 3
    const-string v5, "account_data_service_token"

    const-wide/16 v6, 0x2

    invoke-direct {v2, v5, v6, v7}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v2, Larx;->c:Lbdv;

    new-instance v5, Lbdv;

    .line 4
    const-string v8, "account_data_service_visibility"

    invoke-direct {v5, v8, v3, v4}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v5, Larx;->d:Lbdv;

    new-instance v8, Lbdv;

    .line 5
    const-string v9, "google_auth_service_token"

    const-wide/16 v10, 0x3

    invoke-direct {v8, v9, v10, v11}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v8, Larx;->e:Lbdv;

    new-instance v9, Lbdv;

    .line 6
    const-string v10, "google_auth_service_accounts"

    invoke-direct {v9, v10, v6, v7}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v9, Larx;->f:Lbdv;

    new-instance v6, Lbdv;

    .line 7
    const-string v7, "work_account_client_is_whitelisted"

    invoke-direct {v6, v7, v3, v4}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v6, Larx;->g:Lbdv;

    new-instance v7, Lbdv;

    .line 8
    const-string v10, "config_sync"

    invoke-direct {v7, v10, v3, v4}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v7, Larx;->h:Lbdv;

    const/16 v3, 0x8

    new-array v3, v3, [Lbdv;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v6, v3, v0

    const/4 v0, 0x7

    aput-object v7, v3, v0

    return-void
.end method
