.class public final Lakb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Laqd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Utilities"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lakb;->a:Laqd;

    return-void
.end method

.method public static a()Ldjy;
    .locals 4

    .line 2
    sget-object v0, Lavi;->q:Lavi;

    .line 3
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    .line 4
    sget-object v1, Ldtf;->a:Ldtf;

    .line 5
    invoke-virtual {v1}, Ldtf;->b()Ldtg;

    move-result-object v1

    invoke-interface {v1}, Ldtg;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-boolean v2, v0, Ldjy;->b:Z

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Ldjy;->b()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_0
    iget-object v2, v0, Ldjy;->a:Ldkd;

    .line 8
    check-cast v2, Lavi;

    iget v3, v2, Lavi;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lavi;->a:I

    iput v1, v2, Lavi;->c:I

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lbao;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "migrate_log_files"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Laps;

    .line 20
    invoke-direct {p0}, Laps;-><init>()V

    throw p0

    .line 18
    :catch_0
    move-exception p0

    new-instance p1, Laps;

    .line 12
    invoke-direct {p1, p0}, Laps;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/Date;

    .line 13
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "migrate_logs_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    .line 14
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lakb;->a:Laqd;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Dumping logs to file %s"

    invoke-virtual {p0, v2, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    .line 16
    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :try_start_2
    invoke-virtual {p1, p0}, Ldhi;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 16
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-static {p1, p0}, Ldat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 20
    :catch_1
    move-exception p0

    sget-object p1, Lakb;->a:Laqd;

    new-array v0, v3, [Ljava/lang/Object;

    .line 19
    const-string v1, "Failed writing logs to file"

    invoke-virtual {p1, v1, p0, v0}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
