.class final Lbyj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcua;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static g:Lcrm;


# instance fields
.field private final h:Leip;

.field private final i:Landroid/content/Context;

.field private final j:Leip;

.field private final k:Leip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbyj;->a:Lcua;

    .line 1
    const-string v0, "VmHWM:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbyj;->b:Ljava/util/regex/Pattern;

    .line 2
    const-string v0, "VmRSS:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbyj;->c:Ljava/util/regex/Pattern;

    .line 3
    const-string v0, "RssAnon:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbyj;->d:Ljava/util/regex/Pattern;

    .line 4
    const-string v0, "VmSwap:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbyj;->e:Ljava/util/regex/Pattern;

    .line 5
    const-string v0, "VmSize:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbyj;->f:Ljava/util/regex/Pattern;

    sget-object v0, Lbyh;->a:Lcrm;

    .line 6
    invoke-static {v0}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    sput-object v0, Lbyj;->g:Lcrm;

    return-void
.end method

.method public constructor <init>(Leip;Landroid/app/Application;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyj;->h:Leip;

    iput-object p2, p0, Lbyj;->i:Landroid/content/Context;

    iput-object p3, p0, Lbyj;->j:Leip;

    iput-object p4, p0, Lbyj;->k:Leip;

    return-void
.end method

.method private static a(Landroid/os/Debug$MemoryInfo;)I
    .locals 4

    sget-object v0, Lbyj;->g:Lcrm;

    .line 160
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqu;

    invoke-virtual {v0}, Lcqu;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0xe

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v0, Lbyd;->a:Lcrm;

    sput-object v0, Lbyj;->g:Lcrm;

    sget-object v0, Lbyj;->a:Lcua;

    invoke-virtual {v0}, Lctx;->a()Lcup;

    move-result-object v0

    .line 162
    check-cast v0, Lctz;

    invoke-interface {v0, p0}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 p0, 0x81

    const-string v1, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    const-string v2, "getOtherGraphicsPss"

    const-string v3, "MemoryUsageCapture.java"

    invoke-interface {v0, v1, v2, p0, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "MemoryInfo.getOtherPss(which) invocation failure"

    invoke-interface {v0, p0}, Lctz;->a(Ljava/lang/String;)V

    .line 161
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static final synthetic a()Lcqu;
    .locals 6

    const-string v0, "MemoryUsageCapture.java"

    const-string v1, "lambda$static$0"

    const-string v2, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-class v4, Landroid/os/Debug$MemoryInfo;

    const-string v5, "getOtherPss"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_0
    sget-object v4, Lbyj;->a:Lcua;

    invoke-virtual {v4}, Lctx;->a()Lcup;

    move-result-object v4

    check-cast v4, Lctz;

    invoke-interface {v4, v3}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v3, 0x61

    invoke-interface {v4, v2, v1, v3, v0}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MemoryInfo.getOtherPss(which) failure"

    goto :goto_1

    :catch_2
    move-exception v3

    sget-object v4, Lbyj;->a:Lcua;

    invoke-virtual {v4}, Lctx;->d()Lcup;

    move-result-object v4

    check-cast v4, Lctz;

    invoke-interface {v4, v3}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v3, 0x5f

    invoke-interface {v4, v2, v1, v3, v0}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MemoryInfo.getOtherPss(which) not found"

    :goto_1
    invoke-interface {v4, v0}, Lctz;->a(Ljava/lang/String;)V

    sget-object v0, Lcqb;->a:Lcqb;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 164
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 165
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    return-object p1
.end method


# virtual methods
.method final a(Lemc;ILjava/lang/String;Ljava/lang/String;)Lemd;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    iget-object v0, v1, Lbyj;->h:Leip;

    check-cast v0, Lbrl;

    .line 7
    invoke-virtual {v0}, Lbrl;->b()Lbxp;

    move-result-object v0

    .line 8
    invoke-static {}, Lcqt;->b()V

    iget-object v3, v0, Lbxp;->g:Lcqu;

    iget-object v4, v1, Lbyj;->k:Leip;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lbye;

    invoke-direct {v5, v4}, Lbye;-><init>(Leip;)V

    invoke-virtual {v3, v5}, Lcqu;->a(Lcrm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v1, Lbyj;->i:Landroid/content/Context;

    .line 10
    invoke-static {v3}, Lbum;->a(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v3

    new-array v7, v4, [I

    aput p2, v7, v6

    .line 11
    invoke-virtual {v3, v7}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    aget-object v3, v3, v6

    goto :goto_0

    .line 37
    :cond_0
    move-object v3, v5

    .line 11
    :goto_0
    iget-boolean v7, v0, Lbxp;->h:Z

    if-eqz v7, :cond_1

    .line 12
    new-instance v7, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v7}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v8, v1, Lbyj;->i:Landroid/content/Context;

    .line 13
    invoke-static {v8}, Lbum;->a(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    goto :goto_1

    .line 37
    :cond_1
    move-object v7, v5

    .line 13
    :goto_1
    iget-object v8, v0, Lbxp;->e:Lcqu;

    iget-object v9, v1, Lbyj;->j:Leip;

    .line 14
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lbyf;

    invoke-direct {v10, v9}, Lbyf;-><init>(Leip;)V

    invoke-virtual {v8, v10}, Lcqu;->a(Lcrm;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v0, v0, Lbxp;->f:Lcqu;

    iget-object v9, v1, Lbyj;->j:Leip;

    .line 15
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lbyg;

    invoke-direct {v10, v9}, Lbyg;-><init>(Leip;)V

    invoke-virtual {v0, v10}, Lcqu;->a(Lcrm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v9, "MemoryUsageCapture.java"

    const-string v10, "com/google/android/libraries/performance/primes/metrics/memory/MemoryUsageCapture"

    if-nez v8, :cond_3

    if-nez v0, :cond_2

    move-object/from16 p2, v7

    goto/16 :goto_5

    .line 107
    :cond_2
    const/4 v0, 0x1

    .line 16
    :cond_3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string v13, "/proc/self/status"

    .line 17
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    new-instance v14, Lcxm;

    .line 19
    invoke-direct {v14, v12}, Lcxm;-><init>(Ljava/io/File;)V

    new-instance v12, Lcxe;

    .line 20
    invoke-direct {v12, v14, v13, v5, v5}, Lcxe;-><init>(Ldda;Ljava/nio/charset/Charset;[B[B)V

    new-instance v13, Ljava/lang/String;

    iget-object v14, v12, Lcxe;->b:Ldda;

    .line 21
    new-instance v15, Lcxl;

    sget-object v5, Lcxl;->a:Lcxk;

    .line 22
    invoke-direct {v15, v5}, Lcxl;-><init>(Lcxk;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    check-cast v14, Lcxm;

    iget-object v14, v14, Lcxm;->a:Ljava/io/File;

    .line 23
    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v14, v15, Lcxl;->c:Ljava/util/Deque;

    .line 24
    invoke-interface {v14, v5}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p2, v7

    :try_start_2
    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcxg;->a(Ljava/io/InputStream;J)[B

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :try_start_3
    invoke-virtual {v15}, Lcxl;->close()V

    iget-object v6, v12, Lcxe;->a:Ljava/nio/charset/Charset;

    .line 30
    invoke-direct {v13, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 31
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v0, Lbyj;->a:Lcua;

    invoke-virtual {v0}, Lctx;->a()Lcup;

    move-result-object v0

    .line 32
    check-cast v0, Lctz;

    const-string v5, "procStatusFromString"

    const/16 v6, 0xe0

    invoke-interface {v0, v10, v5, v6, v9}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "Null or empty proc status"

    invoke-interface {v0, v5}, Lctz;->a(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_2

    .line 39
    :cond_4
    new-instance v5, Lbyi;

    invoke-direct {v5}, Lbyi;-><init>()V

    if-eqz v8, :cond_5

    sget-object v6, Lbyj;->b:Ljava/util/regex/Pattern;

    .line 33
    invoke-static {v6, v13}, Lbyj;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lbyi;->a:Ljava/lang/Long;

    :cond_5
    if-eqz v0, :cond_6

    sget-object v0, Lbyj;->c:Ljava/util/regex/Pattern;

    .line 34
    invoke-static {v0, v13}, Lbyj;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lbyi;->b:Ljava/lang/Long;

    sget-object v0, Lbyj;->d:Ljava/util/regex/Pattern;

    .line 35
    invoke-static {v0, v13}, Lbyj;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lbyi;->c:Ljava/lang/Long;

    sget-object v0, Lbyj;->e:Ljava/util/regex/Pattern;

    .line 36
    invoke-static {v0, v13}, Lbyj;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lbyi;->d:Ljava/lang/Long;

    sget-object v0, Lbyj;->f:Ljava/util/regex/Pattern;

    .line 37
    invoke-static {v0, v13}, Lbyj;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lbyi;->e:Ljava/lang/Long;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_6
    nop

    .line 39
    :goto_2
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_5

    .line 40
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 p2, v7

    :goto_3
    :try_start_4
    iput-object v0, v15, Lcxl;->d:Ljava/lang/Throwable;

    const-class v5, Ljava/io/IOException;

    .line 26
    invoke-static {v0, v5}, Lcrr;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v5, Ljava/lang/RuntimeException;

    .line 27
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 40
    :catchall_2
    move-exception v0

    .line 28
    :try_start_5
    invoke-virtual {v15}, Lcxl;->close()V

    .line 29
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 108
    :catch_0
    move-exception v0

    goto :goto_4

    .line 39
    :catchall_3
    move-exception v0

    goto/16 :goto_9

    .line 108
    :catch_1
    move-exception v0

    move-object/from16 p2, v7

    :goto_4
    :try_start_6
    sget-object v5, Lbyj;->a:Lcua;

    invoke-virtual {v5}, Lctx;->a()Lcup;

    move-result-object v5

    .line 38
    check-cast v5, Lctz;

    invoke-interface {v5, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v0, "getProcStatus"

    const/16 v6, 0x104

    invoke-interface {v5, v10, v0, v6, v9}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Error reading proc status"

    invoke-interface {v5, v0}, Lctz;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 39
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v5, 0x0

    .line 41
    :goto_5
    sget-object v0, Lemd;->h:Lemd;

    .line 42
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ldka;

    .line 43
    sget-object v0, Lema;->c:Lema;

    .line 44
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v7

    .line 45
    sget-object v0, Lelx;->D:Lelx;

    .line 46
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v8

    if-nez v3, :cond_7

    goto/16 :goto_6

    .line 47
    :cond_7
    iget v0, v3, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_8

    .line 48
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_8
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 49
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/2addr v12, v4

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->b:I

    .line 50
    iget v0, v3, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_9

    .line 51
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_9
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 52
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->c:I

    .line 53
    iget v0, v3, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_a

    .line 54
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_a
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 55
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->d:I

    .line 56
    iget v0, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_b

    .line 57
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_b
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 58
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->e:I

    .line 59
    iget v0, v3, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_c

    .line 60
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_c
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 61
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->f:I

    .line 62
    iget v0, v3, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_d

    .line 63
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_d
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 64
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->g:I

    .line 65
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_e

    .line 66
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_e
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 67
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->h:I

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_f

    .line 70
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_f
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 71
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->i:I

    .line 72
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v0

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_10

    .line 73
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_10
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 74
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x200

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->k:I

    .line 75
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v0

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_11

    .line 76
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_11
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 77
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x100

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->j:I

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    invoke-static {v3}, Lbyj;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_13

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_12

    .line 80
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_12
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 81
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x400

    iput v12, v11, Lelx;->a:I

    iput v0, v11, Lelx;->l:I

    .line 82
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    :try_start_7
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getMemoryStats()Ljava/util/Map;

    move-result-object v0

    const-string v3, "summary.code"

    .line 84
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lbyj;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 85
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_14

    .line 86
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_14
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 87
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x1000

    iput v12, v11, Lelx;->a:I

    iput v3, v11, Lelx;->n:I

    :cond_15
    const-string v3, "summary.stack"

    .line 88
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lbyj;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 89
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_16

    .line 90
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_16
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 91
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x2000

    iput v12, v11, Lelx;->a:I

    iput v3, v11, Lelx;->o:I

    :cond_17
    const-string v3, "summary.graphics"

    .line 92
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lbyj;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 93
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_18

    .line 94
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_18
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 95
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x4000

    iput v12, v11, Lelx;->a:I

    iput v3, v11, Lelx;->p:I

    :cond_19
    const-string v3, "summary.system"

    .line 96
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lbyj;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_1a

    .line 98
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_1a
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 99
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    const/high16 v13, 0x10000

    or-int/2addr v12, v13

    iput v12, v11, Lelx;->a:I

    iput v3, v11, Lelx;->v:I

    :cond_1b
    const-string v3, "summary.java-heap"

    .line 100
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lbyj;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 101
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_1c

    .line 102
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v11, 0x0

    iput-boolean v11, v8, Ldjy;->b:Z

    :cond_1c
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 103
    check-cast v11, Lelx;

    iget v12, v11, Lelx;->a:I

    or-int/lit16 v12, v12, 0x800

    iput v12, v11, Lelx;->a:I

    iput v3, v11, Lelx;->m:I

    :cond_1d
    const-string v3, "summary.private-other"

    .line 104
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbyj;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v3, v8, Ldjy;->b:Z

    if-eqz v3, :cond_1e

    .line 106
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Ldjy;->b:Z

    :cond_1e
    iget-object v3, v8, Ldjy;->a:Ldkd;

    .line 107
    check-cast v3, Lelx;

    iget v11, v3, Lelx;->a:I

    const v12, 0x8000

    or-int/2addr v11, v12

    iput v11, v3, Lelx;->a:I

    iput v0, v3, Lelx;->q:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    .line 37
    :catch_2
    move-exception v0

    sget-object v3, Lbyj;->a:Lcua;

    invoke-virtual {v3}, Lctx;->a()Lcup;

    move-result-object v3

    .line 108
    check-cast v3, Lctz;

    invoke-interface {v3, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x150

    const-string v11, "addDebugInfoToMemoryStats"

    invoke-interface {v3, v10, v11, v0, v9}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "failed to collect memory summary stats"

    invoke-interface {v3, v0}, Lctz;->a(Ljava/lang/String;)V

    .line 46
    :cond_1f
    :goto_6
    if-nez p2, :cond_20

    goto :goto_7

    .line 109
    :cond_20
    move-object/from16 v3, p2

    iget-wide v9, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v0, 0xa

    shr-long/2addr v9, v0

    long-to-int v0, v9

    iget-boolean v9, v8, Ldjy;->b:Z

    if-eqz v9, :cond_21

    .line 110
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v9, 0x0

    iput-boolean v9, v8, Ldjy;->b:Z

    :cond_21
    iget-object v9, v8, Ldjy;->a:Ldkd;

    .line 111
    check-cast v9, Lelx;

    iget v10, v9, Lelx;->a:I

    const/high16 v11, 0x20000

    or-int/2addr v10, v11

    iput v10, v9, Lelx;->a:I

    iput v0, v9, Lelx;->w:I

    .line 112
    iget-wide v9, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v0, 0x14

    shr-long/2addr v9, v0

    long-to-int v0, v9

    iget-boolean v3, v8, Ldjy;->b:Z

    if-eqz v3, :cond_22

    .line 113
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Ldjy;->b:Z

    :cond_22
    iget-object v3, v8, Ldjy;->a:Ldkd;

    .line 114
    check-cast v3, Lelx;

    iget v9, v3, Lelx;->a:I

    const/high16 v10, 0x40000

    or-int/2addr v9, v10

    iput v9, v3, Lelx;->a:I

    iput v0, v3, Lelx;->x:I

    .line 46
    :goto_7
    if-nez v5, :cond_23

    goto/16 :goto_8

    .line 159
    :cond_23
    iget-object v0, v5, Lbyi;->a:Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 115
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-boolean v0, v8, Ldjy;->b:Z

    if-eqz v0, :cond_24

    .line 116
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Ldjy;->b:Z

    :cond_24
    iget-object v0, v8, Ldjy;->a:Ldkd;

    .line 117
    check-cast v0, Lelx;

    iget v3, v0, Lelx;->a:I

    const/high16 v11, 0x80000

    or-int/2addr v3, v11

    iput v3, v0, Lelx;->a:I

    iput-wide v9, v0, Lelx;->y:J

    :cond_25
    iget-object v0, v5, Lbyi;->b:Ljava/lang/Long;

    if-eqz v0, :cond_27

    .line 118
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-boolean v0, v8, Ldjy;->b:Z

    if-eqz v0, :cond_26

    .line 119
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Ldjy;->b:Z

    :cond_26
    iget-object v0, v8, Ldjy;->a:Ldkd;

    .line 120
    check-cast v0, Lelx;

    iget v3, v0, Lelx;->a:I

    const/high16 v11, 0x100000

    or-int/2addr v3, v11

    iput v3, v0, Lelx;->a:I

    iput-wide v9, v0, Lelx;->z:J

    :cond_27
    iget-object v0, v5, Lbyi;->c:Ljava/lang/Long;

    if-eqz v0, :cond_29

    .line 121
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-boolean v0, v8, Ldjy;->b:Z

    if-eqz v0, :cond_28

    .line 122
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Ldjy;->b:Z

    :cond_28
    iget-object v0, v8, Ldjy;->a:Ldkd;

    .line 123
    check-cast v0, Lelx;

    iget v3, v0, Lelx;->a:I

    const/high16 v11, 0x200000

    or-int/2addr v3, v11

    iput v3, v0, Lelx;->a:I

    iput-wide v9, v0, Lelx;->A:J

    :cond_29
    iget-object v0, v5, Lbyi;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2b

    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-boolean v0, v8, Ldjy;->b:Z

    if-eqz v0, :cond_2a

    .line 125
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Ldjy;->b:Z

    :cond_2a
    iget-object v0, v8, Ldjy;->a:Ldkd;

    .line 126
    check-cast v0, Lelx;

    iget v3, v0, Lelx;->a:I

    const/high16 v11, 0x400000

    or-int/2addr v3, v11

    iput v3, v0, Lelx;->a:I

    iput-wide v9, v0, Lelx;->B:J

    :cond_2b
    iget-object v0, v5, Lbyi;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2d

    .line 127
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-boolean v0, v8, Ldjy;->b:Z

    if-eqz v0, :cond_2c

    .line 128
    invoke-virtual {v8}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Ldjy;->b:Z

    :cond_2c
    iget-object v0, v8, Ldjy;->a:Ldkd;

    .line 129
    check-cast v0, Lelx;

    iget v3, v0, Lelx;->a:I

    const/high16 v5, 0x800000

    or-int/2addr v3, v5

    iput v3, v0, Lelx;->a:I

    iput-wide v9, v0, Lelx;->C:J

    .line 130
    :cond_2d
    :goto_8
    invoke-virtual {v8}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lelx;

    iget-boolean v3, v7, Ldjy;->b:Z

    if-eqz v3, :cond_2e

    .line 131
    invoke-virtual {v7}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v7, Ldjy;->b:Z

    :cond_2e
    iget-object v3, v7, Ldjy;->a:Ldkd;

    .line 132
    check-cast v3, Lema;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lema;->b:Lelx;

    iget v0, v3, Lema;->a:I

    or-int/2addr v0, v4

    iput v0, v3, Lema;->a:I

    iget-boolean v0, v6, Ldjy;->b:Z

    if-eqz v0, :cond_2f

    .line 134
    invoke-virtual {v6}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v6, Ldjy;->b:Z

    :cond_2f
    iget-object v0, v6, Ldka;->a:Ldkd;

    .line 135
    check-cast v0, Lemd;

    invoke-virtual {v7}, Ldjy;->f()Ldkd;

    move-result-object v3

    check-cast v3, Lema;

    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lemd;->c:Lema;

    iget v3, v0, Lemd;->a:I

    or-int/2addr v3, v4

    iput v3, v0, Lemd;->a:I

    .line 137
    sget-object v0, Leoa;->c:Leoa;

    .line 138
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-object v3, v1, Lbyj;->i:Landroid/content/Context;

    .line 139
    move-object/from16 v5, p3

    invoke-static {v5, v3}, Lbun;->a(Ljava/lang/String;Landroid/content/Context;)Leny;

    move-result-object v3

    iget-boolean v5, v0, Ldjy;->b:Z

    if-eqz v5, :cond_30

    .line 140
    invoke-virtual {v0}, Ldjy;->b()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_30
    iget-object v5, v0, Ldjy;->a:Ldkd;

    .line 141
    check-cast v5, Leoa;

    .line 142
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v5, Leoa;->b:Leny;

    iget v3, v5, Leoa;->a:I

    or-int/2addr v3, v4

    iput v3, v5, Leoa;->a:I

    iget-boolean v3, v6, Ldjy;->b:Z

    if-eqz v3, :cond_31

    .line 143
    invoke-virtual {v6}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v6, Ldjy;->b:Z

    :cond_31
    iget-object v3, v6, Ldka;->a:Ldkd;

    .line 144
    check-cast v3, Lemd;

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Leoa;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lemd;->d:Leoa;

    iget v0, v3, Lemd;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Lemd;->a:I

    .line 146
    sget-object v0, Lely;->c:Lely;

    .line 147
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-object v3, v1, Lbyj;->i:Landroid/content/Context;

    .line 146
    sget v5, Lbum;->b:I

    .line 148
    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 149
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    iget-boolean v5, v0, Ldjy;->b:Z

    if-eqz v5, :cond_32

    .line 151
    invoke-virtual {v0}, Ldjy;->b()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_32
    iget-object v5, v0, Ldjy;->a:Ldkd;

    .line 152
    check-cast v5, Lely;

    iget v7, v5, Lely;->a:I

    or-int/2addr v4, v7

    iput v4, v5, Lely;->a:I

    iput-boolean v3, v5, Lely;->b:Z

    iget-boolean v3, v6, Ldjy;->b:Z

    if-eqz v3, :cond_33

    .line 153
    invoke-virtual {v6}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v6, Ldjy;->b:Z

    :cond_33
    iget-object v3, v6, Ldka;->a:Ldkd;

    .line 154
    check-cast v3, Lemd;

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lely;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lemd;->f:Lely;

    iget v0, v3, Lemd;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v3, Lemd;->a:I

    iget-boolean v0, v6, Ldjy;->b:Z

    if-eqz v0, :cond_34

    .line 156
    invoke-virtual {v6}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v6, Ldjy;->b:Z

    :cond_34
    iget-object v0, v6, Ldka;->a:Ldkd;

    .line 157
    check-cast v0, Lemd;

    move-object/from16 v3, p1

    iget v3, v3, Lemc;->h:I

    iput v3, v0, Lemd;->e:I

    iget v3, v0, Lemd;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lemd;->a:I

    if-eqz v2, :cond_35

    .line 158
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Lemd;->a:I

    iput-object v2, v0, Lemd;->g:Ljava/lang/String;

    .line 159
    :cond_35
    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lemd;

    return-object v0

    .line 39
    :goto_9
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 40
    throw v0
.end method
