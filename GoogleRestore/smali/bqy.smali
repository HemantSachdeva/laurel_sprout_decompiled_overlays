.class public final Lbqy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Lbqy;


# instance fields
.field final b:Lbra;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbra;

    .line 1
    invoke-direct {v0}, Lbra;-><init>()V

    iput-object v0, p0, Lbqy;->b:Lbra;

    return-void
.end method

.method public static a(Landroid/app/Application;)Lbqy;
    .locals 4

    sget-object v0, Lbqy;->a:Lbqy;

    if-nez v0, :cond_1

    const-class v0, Lbqy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbqy;->a:Lbqy;

    if-nez v1, :cond_0

    new-instance v1, Lbqy;

    .line 2
    invoke-direct {v1}, Lbqy;-><init>()V

    iget-object v2, v1, Lbqy;->b:Lbra;

    iget-object v3, v2, Lbra;->b:Lbqz;

    .line 3
    invoke-virtual {p0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v2, Lbra;->b:Lbqz;

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v1, Lbqy;->a:Lbqy;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lbqy;->a:Lbqy;

    return-object p0
.end method


# virtual methods
.method public final a(Lbqx;)V
    .locals 1

    iget-object v0, p0, Lbqy;->b:Lbra;

    .line 6
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lbra;->b:Lbqz;

    iget-object v0, v0, Lbqz;->a:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lbqx;)V
    .locals 1

    iget-object v0, p0, Lbqy;->b:Lbra;

    .line 8
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lbra;->b:Lbqz;

    iget-object v0, v0, Lbqz;->a:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
