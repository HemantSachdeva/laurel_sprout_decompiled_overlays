.class final synthetic Ldey;
.super Ljava/lang/Object;

# interfaces
.implements Lbom;


# instance fields
.field private final a:Ldez;

.field private final b:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Ldez;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldey;->a:Ldez;

    iput-object p2, p0, Ldey;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ldey;->a:Ldez;

    iget-object v1, p0, Ldey;->b:Landroid/util/Pair;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Ldez;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
