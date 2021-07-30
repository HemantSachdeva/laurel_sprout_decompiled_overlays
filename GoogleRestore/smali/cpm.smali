.class public final Lcpm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcpm;->a:Ljava/util/WeakHashMap;

    new-instance v0, Lcpj;

    .line 2
    invoke-direct {v0}, Lcpj;-><init>()V

    sput-object v0, Lcpm;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method

.method static a(Lcpg;)Lcpg;
    .locals 1

    sget-object v0, Lcpm;->b:Ljava/lang/ThreadLocal;

    .line 14
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpl;

    invoke-static {v0, p0}, Lcpm;->a(Lcpl;Lcpg;)Lcpg;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcpl;Lcpg;)Lcpg;
    .locals 4

    .line 15
    iget-object v0, p0, Lcpl;->b:Lcpg;

    if-ne v0, p1, :cond_0

    return-object p1

    :cond_0
    if-nez v0, :cond_2

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 17
    invoke-static {}, Lcpk;->a()Z

    move-result v1

    goto :goto_0

    .line 18
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    invoke-static {}, Lccx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 17
    :goto_0
    iput-boolean v1, p0, Lcpl;->a:Z

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcpl;->a:Z

    if-eqz v1, :cond_3

    .line 21
    invoke-static {v0, p1}, Lcpm;->a(Lcpg;Lcpg;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcpg;->c()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcpg;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 23
    iget v3, p0, Lcpl;->c:I

    long-to-int v2, v1

    iput v2, p0, Lcpl;->c:I

    :cond_6
    iput-object p1, p0, Lcpl;->b:Lcpg;

    return-object v0
.end method

.method private static a(Lcpg;Lcpg;)V
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcpg;->a()Lcpg;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcpg;->a()Lcpg;

    move-result-object v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {p1}, Lcpg;->b()Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-static {p0}, Lcpm;->a(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_2
    :goto_0
    invoke-static {p0}, Lcpm;->d(Lcpg;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 26
    invoke-static {p1}, Lcpm;->c(Lcpg;)V

    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method static b(Lcpg;)Ljava/lang/String;
    .locals 4

    .line 28
    invoke-interface {p0}, Lcpg;->a()Lcpg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    invoke-interface {p0}, Lcpg;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    invoke-interface {p0}, Lcpg;->a()Lcpg;

    move-result-object v0

    invoke-static {v0}, Lcpm;->b(Lcpg;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcpg;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcpg;)V
    .locals 1

    .line 8
    invoke-interface {p0}, Lcpg;->a()Lcpg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p0}, Lcpg;->a()Lcpg;

    move-result-object v0

    invoke-static {v0}, Lcpm;->c(Lcpg;)V

    .line 10
    :cond_0
    invoke-interface {p0}, Lcpg;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcpm;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lcpg;)V
    .locals 1

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 12
    invoke-interface {p0}, Lcpg;->a()Lcpg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Lcpg;->a()Lcpg;

    move-result-object p0

    invoke-static {p0}, Lcpm;->d(Lcpg;)V

    :cond_0
    return-void
.end method
