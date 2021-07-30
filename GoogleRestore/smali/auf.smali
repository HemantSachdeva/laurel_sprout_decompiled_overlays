.class public final Lauf;
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

.field public static final i:Lbdv;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lbdv;

    .line 1
    const-string v1, "g1_backup"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lauf;->a:Lbdv;

    new-instance v1, Lbdv;

    .line 2
    const-string v4, "g1_enable_android_backup"

    invoke-direct {v1, v4, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lauf;->b:Lbdv;

    new-instance v4, Lbdv;

    .line 3
    const-string v5, "g1_last_autobackup_timestamp"

    invoke-direct {v4, v5, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lauf;->c:Lbdv;

    new-instance v5, Lbdv;

    .line 4
    const-string v6, "g1_mms_backup_callbacks"

    invoke-direct {v5, v6, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lauf;->d:Lbdv;

    new-instance v6, Lbdv;

    .line 5
    const-string v7, "g1_mms_backup_now"

    invoke-direct {v6, v7, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lauf;->e:Lbdv;

    new-instance v7, Lbdv;

    .line 6
    const-string v8, "g1_restore"

    invoke-direct {v7, v8, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lauf;->f:Lbdv;

    new-instance v8, Lbdv;

    .line 7
    const-string v9, "g1_restore_available"

    invoke-direct {v8, v9, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lauf;->g:Lbdv;

    new-instance v9, Lbdv;

    .line 8
    const-string v10, "g1_restore_now"

    invoke-direct {v9, v10, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v9, Lauf;->h:Lbdv;

    new-instance v10, Lbdv;

    .line 9
    const-string v11, "g1_backup_staleness_api"

    invoke-direct {v10, v11, v2, v3}, Lbdv;-><init>(Ljava/lang/String;J)V

    sput-object v10, Lauf;->i:Lbdv;

    const/16 v2, 0x9

    new-array v2, v2, [Lbdv;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v7, v2, v0

    const/4 v0, 0x6

    aput-object v8, v2, v0

    const/4 v0, 0x7

    aput-object v9, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    return-void
.end method
