.class public Lbes;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lbeo;

.field public final d:Lbfk;

.field public final e:Landroid/os/Looper;

.field public final f:I

.field public final g:Lbev;

.field public final h:Lbgj;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbeo;Lber;)V
    .locals 3

    const-string v0, "SupportLifecycleFragmentImpl"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string v1, "Api must not be null."

    invoke-static {p2, v1}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    const-string v1, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p3, v1}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lbes;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lbes;->a(Ljava/lang/Object;)V

    iput-object p2, p0, Lbes;->c:Lbeo;

    .line 5
    iget-object v2, p3, Lber;->b:Landroid/os/Looper;

    iput-object v2, p0, Lbes;->e:Landroid/os/Looper;

    .line 6
    invoke-static {p2}, Lbfk;->a(Lbeo;)Lbfk;

    move-result-object p2

    iput-object p2, p0, Lbes;->d:Lbfk;

    .line 7
    new-instance v2, Lbfz;

    invoke-direct {v2, p0}, Lbfz;-><init>(Lbes;)V

    iput-object v2, p0, Lbes;->g:Lbev;

    .line 8
    invoke-static {v1}, Lbgj;->a(Landroid/content/Context;)Lbgj;

    move-result-object v1

    iput-object v1, p0, Lbes;->h:Lbgj;

    .line 9
    invoke-virtual {v1}, Lbgj;->a()I

    move-result v2

    iput v2, p0, Lbes;->f:I

    .line 10
    iget-object p3, p3, Lber;->c:Lbuo;

    :try_start_0
    new-instance p3, Lbgm;

    .line 11
    invoke-direct {p3, p1}, Lbgm;-><init>(Landroid/app/Activity;)V

    iget-object p1, p3, Lbgm;->a:Ljava/lang/Object;

    .line 12
    sget-object p3, Lbgx;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-virtual {p3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbgx;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_3

    :cond_0
    :try_start_1
    move-object p3, p1

    check-cast p3, Lbc;

    .line 15
    invoke-virtual {p3}, Lbc;->aa()Lbx;

    move-result-object p3

    invoke-virtual {p3, v0}, Lbx;->a(Ljava/lang/String;)Lba;

    move-result-object p3

    check-cast p3, Lbgx;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p3, :cond_1

    :try_start_2
    iget-boolean v2, p3, Lba;->q:Z

    if-eqz v2, :cond_2

    .line 12
    :cond_1
    new-instance p3, Lbgx;

    .line 17
    invoke-direct {p3}, Lbgx;-><init>()V

    move-object v2, p1

    check-cast v2, Lbc;

    .line 18
    invoke-virtual {v2}, Lbc;->aa()Lbx;

    move-result-object v2

    invoke-virtual {v2}, Lbx;->a()Lch;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Lch;->a(Lba;Ljava/lang/String;)V

    invoke-virtual {v2}, Lch;->c()V

    .line 12
    :cond_2
    sget-object v0, Lbgx;->a:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-class p1, Lbfy;

    iget-object v0, p3, Lbgx;->b:Ljava/util/Map;

    const-string v2, "ConnectionlessLifecycleHelper"

    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 21
    check-cast p1, Lbfy;

    if-nez p1, :cond_4

    new-instance p1, Lbfy;

    .line 22
    invoke-direct {p1, p3, v1}, Lbfy;-><init>(Lbgn;Lbgj;)V

    goto :goto_0

    .line 26
    :cond_4
    nop

    .line 22
    :goto_0
    const-string p3, "ApiKey cannot be null"

    .line 23
    invoke-static {p2, p3}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p1, Lbfy;->e:Ltj;

    .line 24
    invoke-virtual {p3, p2}, Ltj;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v1, p1}, Lbgj;->a(Lbfy;)V

    goto :goto_1

    .line 26
    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    .line 16
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 25
    :goto_1
    iget-object p1, p0, Lbes;->h:Lbgj;

    .line 26
    invoke-virtual {p1, p0}, Lbgj;->a(Lbes;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbeo;Lber;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p3, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbes;->b:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lbes;->a(Ljava/lang/Object;)V

    iput-object p2, p0, Lbes;->c:Lbeo;

    .line 32
    iget-object p1, p3, Lber;->b:Landroid/os/Looper;

    iput-object p1, p0, Lbes;->e:Landroid/os/Looper;

    .line 33
    invoke-static {p2}, Lbfk;->a(Lbeo;)Lbfk;

    move-result-object p1

    iput-object p1, p0, Lbes;->d:Lbfk;

    .line 34
    new-instance p1, Lbfz;

    invoke-direct {p1, p0}, Lbfz;-><init>(Lbes;)V

    iput-object p1, p0, Lbes;->g:Lbev;

    .line 35
    invoke-static {v0}, Lbgj;->a(Landroid/content/Context;)Lbgj;

    move-result-object p1

    iput-object p1, p0, Lbes;->h:Lbgj;

    .line 36
    invoke-virtual {p1}, Lbgj;->a()I

    move-result p2

    iput p2, p0, Lbes;->f:I

    .line 37
    iget-object p2, p3, Lber;->c:Lbuo;

    .line 38
    invoke-virtual {p1, p0}, Lbgj;->a(Lbes;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbeo;Lbuo;[B[B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p4, Lbeq;

    invoke-direct {p4}, Lbeq;-><init>()V

    iput-object p3, p4, Lbeq;->a:Lbuo;

    .line 39
    invoke-virtual {p4}, Lbeq;->a()Lber;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lbes;-><init>(Landroid/content/Context;Lbeo;Lber;)V

    return-void
.end method

.method private final a(ILbha;)Lbpi;
    .locals 3

    new-instance v0, Lbpl;

    .line 46
    invoke-direct {v0}, Lbpl;-><init>()V

    iget-object v1, p0, Lbes;->h:Lbgj;

    new-instance v2, Lbfh;

    .line 47
    invoke-direct {v2, p1, p2, v0}, Lbfh;-><init>(ILbha;Lbpl;)V

    iget-object p1, v1, Lbgj;->n:Landroid/os/Handler;

    new-instance p2, Lbgq;

    iget-object v1, v1, Lbgj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p2, v2, v1, p0}, Lbgq;-><init>(Lbfj;ILbes;)V

    .line 49
    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v0, Lbpl;->a:Lbpp;

    return-object p1
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 4

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x52

    if-lt v0, v3, :cond_5

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_5

    sget-object v0, Lbej;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lbej;->a:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    .line 69
    :cond_1
    :try_start_0
    const-string v0, "google"

    .line 60
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v3, "RPP1"

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v3, "RPP2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v3, 0x602711

    if-lt v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lbej;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lbej;->a:Ljava/lang/Boolean;

    .line 61
    :goto_1
    sget-object v0, Lbej;->a:Ljava/lang/Boolean;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    const-string v0, "PlatformVersion"

    const-string v1, "Build version must be at least 6301457 to support R in gmscore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lbej;->a:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 59
    :goto_2
    if-eqz v0, :cond_5

    :cond_4
    :try_start_1
    const-class v0, Landroid/content/Context;

    const-string v1, "getAttributionTag"

    new-array v3, v2, [Ljava/lang/Class;

    .line 68
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 67
    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public final a()Lbhm;
    .locals 3

    new-instance v0, Lbhm;

    .line 40
    invoke-direct {v0}, Lbhm;-><init>()V

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lbhm;->a:Ltj;

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Ltj;

    invoke-direct {v2}, Ltj;-><init>()V

    iput-object v2, v0, Lbhm;->a:Ltj;

    :cond_0
    iget-object v2, v0, Lbhm;->a:Ltj;

    .line 43
    invoke-virtual {v2, v1}, Ltj;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbes;->b:Landroid/content/Context;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbhm;->c:Ljava/lang/String;

    iget-object v1, p0, Lbes;->b:Landroid/content/Context;

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbhm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lbha;)Lbpi;
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbes;->a(ILbha;)Lbpi;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lbha;)Lbpi;
    .locals 1

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lbes;->a(ILbha;)Lbpi;

    move-result-object p1

    return-object p1
.end method
