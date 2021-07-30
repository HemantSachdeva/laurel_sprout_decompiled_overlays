.class public Ldjr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ldjr;

.field private static volatile b:Z

.field private static volatile c:Ldjr;

.field private static volatile d:Ldjr;


# instance fields
.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Ldjr;->b:Z

    new-instance v0, Ldjr;

    .line 1
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldjr;-><init>([B)V

    sput-object v0, Ldjr;->a:Ldjr;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjr;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ldjr;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Ldjr;
    .locals 2

    sget-object v0, Ldjr;->c:Ldjr;

    if-nez v0, :cond_1

    const-class v1, Ldjr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldjr;->c:Ldjr;

    if-nez v0, :cond_0

    sget-object v0, Ldjr;->a:Ldjr;

    sput-object v0, Ldjr;->c:Ldjr;

    .line 6
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b()Ldjr;
    .locals 2

    const-class v0, Ldjr;

    sget-object v1, Ldjr;->d:Ldjr;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-object v1, Ldjr;->d:Ldjr;

    if-eqz v1, :cond_1

    .line 9
    monitor-exit v0

    return-object v1

    :cond_1
    nop

    .line 7
    invoke-static {v0}, Ldjw;->a(Ljava/lang/Class;)Ldjr;

    move-result-object v1

    sput-object v1, Ldjr;->d:Ldjr;

    .line 8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ldlj;I)Ldjp;
    .locals 2

    iget-object v0, p0, Ldjr;->e:Ljava/util/Map;

    new-instance v1, Ldjq;

    .line 4
    invoke-direct {v1, p1, p2}, Ldjq;-><init>(Ljava/lang/Object;I)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldjp;

    return-object p1
.end method
