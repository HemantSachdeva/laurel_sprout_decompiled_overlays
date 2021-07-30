.class public final Lbqa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static f:Ljava/util/HashMap;

.field public static final g:Ljava/util/HashMap;

.field static final h:Ljava/util/HashMap;

.field public static final i:Ljava/util/HashMap;

.field static final j:Ljava/util/HashMap;

.field static final k:[Ljava/lang/String;

.field private static l:Ljava/lang/Object;

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbqa;->a:Landroid/net/Uri;

    .line 2
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbqa;->b:Landroid/net/Uri;

    .line 3
    const-string v0, "^(1|true|t|on|yes|y)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbqa;->c:Ljava/util/regex/Pattern;

    .line 4
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbqa;->d:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lbqa;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbqa;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbqa;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbqa;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbqa;->j:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lbqa;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lbqa;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {p0}, Lbqa;->b(Landroid/content/ContentResolver;)V

    sget-object p0, Lbqa;->l:Ljava/lang/Object;

    .line 51
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-class v0, Lbqa;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 48
    :goto_0
    monitor-exit v0

    return-object p2

    .line 49
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-class v0, Lbqa;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {p0}, Lbqa;->b(Landroid/content/ContentResolver;)V

    sget-object v1, Lbqa;->l:Ljava/lang/Object;

    sget-object v2, Lbqa;->f:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object p0, Lbqa;->f:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 22
    :goto_0
    monitor-exit v0

    return-object v3

    :cond_1
    sget-object v2, Lbqa;->k:[Ljava/lang/String;

    .line 23
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_8

    aget-object v8, v2, v6

    .line 24
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-boolean v1, Lbqa;->m:Z

    if-eqz v1, :cond_2

    sget-object v1, Lbqa;->f:Ljava/util/HashMap;

    .line 25
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    sget-object v12, Lbqa;->k:[Ljava/lang/String;

    sget-object v1, Lbqa;->f:Ljava/util/HashMap;

    sget-object v9, Lbqa;->b:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 26
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance v2, Ljava/util/TreeMap;

    .line 27
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_4

    .line 28
    :goto_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 30
    :cond_3
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 37
    :catchall_0
    move-exception p1

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 31
    throw p1

    .line 32
    :cond_4
    :goto_3
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sput-boolean v7, Lbqa;->m:Z

    sget-object p0, Lbqa;->f:Ljava/util/HashMap;

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lbqa;->f:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, p0

    .line 36
    :goto_4
    monitor-exit v0

    return-object v3

    .line 34
    :cond_6
    monitor-exit v0

    return-object v3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 37
    :cond_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-object v9, Lbqa;->a:Landroid/net/Uri;

    new-array v12, v7, [Ljava/lang/String;

    aput-object p1, v12, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 38
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_9

    return-object v3

    .line 39
    :cond_9
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 40
    invoke-static {v1, p1, v3}, Lbqa;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_a
    nop

    .line 42
    :try_start_4
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v0, v3

    .line 44
    :cond_b
    invoke-static {v1, p1, v0}, Lbqa;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move-object v3, v0

    goto :goto_5

    .line 41
    :catchall_1
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 45
    throw p1

    .line 41
    :catchall_2
    move-exception p0

    .line 37
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lbqa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbqa;->l:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    sget-object p0, Lbqa;->f:Ljava/util/HashMap;

    .line 53
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lbqa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbqa;->l:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    sget-object p0, Lbqa;->f:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Landroid/content/ContentResolver;)V
    .locals 3

    sget-object v0, Lbqa;->f:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lbqa;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/HashMap;

    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbqa;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbqa;->l:Ljava/lang/Object;

    sput-boolean v1, Lbqa;->m:Z

    sget-object v0, Lbqa;->a:Landroid/net/Uri;

    new-instance v1, Lbpz;

    .line 12
    invoke-direct {v1}, Lbpz;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_0
    sget-object p0, Lbqa;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lbqa;->f:Ljava/util/HashMap;

    .line 14
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lbqa;->g:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lbqa;->h:Ljava/util/HashMap;

    .line 16
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lbqa;->i:Ljava/util/HashMap;

    .line 17
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lbqa;->j:Ljava/util/HashMap;

    .line 18
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lbqa;->l:Ljava/lang/Object;

    sput-boolean v1, Lbqa;->m:Z

    :cond_1
    return-void
.end method
