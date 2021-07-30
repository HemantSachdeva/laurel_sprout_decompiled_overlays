.class public final Larp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Larn;


# static fields
.field public static final a:Laqd;


# instance fields
.field public final b:Ljava/lang/String;

.field private final c:Lapj;

.field private final d:Landroid/content/ComponentName;

.field private e:Z

.field private final f:Landroid/app/backup/SelectBackupTransportCallback;

.field private final g:Larm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SwitchTransportTaskO"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Larp;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Lapj;Larm;Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Laro;

    invoke-direct {v0, p0}, Laro;-><init>(Larp;)V

    iput-object v0, p0, Larp;->f:Landroid/app/backup/SelectBackupTransportCallback;

    iput-object p1, p0, Larp;->c:Lapj;

    iput-object p2, p0, Larp;->g:Larm;

    iput-object p3, p0, Larp;->d:Landroid/content/ComponentName;

    const-string p1, "com.google.android.gms/.backup.BackupTransportService"

    iput-object p1, p0, Larp;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Larp;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Larp;->c:Lapj;

    iget-object v1, p0, Larp;->d:Landroid/content/ComponentName;

    iget-object v2, p0, Larp;->f:Landroid/app/backup/SelectBackupTransportCallback;

    .line 3
    invoke-virtual {v0}, Lapj;->a()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, v0, Lapj;->a:Landroid/app/backup/BackupManager;

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/BackupManager;->selectBackupTransport(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Larp;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Larp;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Larp;->c:Lapj;

    .line 5
    invoke-virtual {v0}, Lapj;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lapj;->a:Landroid/app/backup/BackupManager;

    .line 6
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    const-string v1, "com.google.android.gms/.backup.BackupTransportService"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 10
    :cond_2
    const-string v1, "com.google.android.gms/.backup.migrate.service.D2dTransport"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v1, p0, Larp;->g:Larm;

    iget v6, v1, Larm;->a:I

    if-ne v0, v6, :cond_4

    .line 9
    invoke-virtual {v1, v2}, Lcyr;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    new-instance v2, Laru;

    .line 10
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v7, v1, Larm;->a:I

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "Tried to set transport to %d but set it to %d"

    .line 13
    invoke-static {v6, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Laru;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2}, Lcyr;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
