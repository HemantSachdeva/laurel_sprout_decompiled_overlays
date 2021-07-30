.class public final synthetic Ldgu;
.super Ljava/lang/Object;

# interfaces
.implements Ldbl;


# static fields
.field public static final a:Ldbl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldgu;

    invoke-direct {v0}, Ldgu;-><init>()V

    sput-object v0, Ldgu;->a:Ldbl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbk;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ldgv;

    const-class v1, Ldgx;

    check-cast p1, Ldcb;

    iget-object v2, p1, Ldcb;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Ldcb;->b:Ldbk;

    check-cast p1, Ldbq;

    iget-object p1, p1, Ldbq;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldby;

    if-nez p1, :cond_0

    sget-object p1, Ldbq;->a:Ldft;

    :cond_0
    invoke-interface {p1}, Ldft;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    sget-object v1, Ldgw;->a:Ldgw;

    if-nez v1, :cond_2

    const-class v2, Ldgw;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ldgw;->a:Ldgw;

    if-nez v1, :cond_1

    new-instance v1, Ldgw;

    invoke-direct {v1}, Ldgw;-><init>()V

    sput-object v1, Ldgw;->a:Ldgw;

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    invoke-direct {v0, p1, v1}, Ldgv;-><init>(Ljava/util/Set;Ldgw;)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Attempting to request an undeclared dependency Set<%s>."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
