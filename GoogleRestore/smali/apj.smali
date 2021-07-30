.class public final Lapj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lacw;


# instance fields
.field public final a:Landroid/app/backup/BackupManager;

.field private final c:Landroid/content/Context;

.field private final d:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BackupManagerWrapper"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lapj;->b:Lacw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lapj;->b:Lacw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapj;->c:Landroid/content/Context;

    iput-object v0, p0, Lapj;->a:Landroid/app/backup/BackupManager;

    iput-object v1, p0, Lapj;->d:Lacw;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lapj;->c:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.BACKUP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapj;->d:Lacw;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    const-string v3, "Google Play Services doesn\'t have permission android.permission.BACKUP"

    invoke-virtual {v0, v3, v2}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 5
    invoke-virtual {p0}, Lapj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lapj;->a:Landroid/app/backup/BackupManager;

    .line 6
    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupManager;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
