.class public Ldks;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected volatile a:Ldlj;

.field public volatile b:Ldib;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Ldjr;->a()Ldjr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldib;
    .locals 1

    iget-object v0, p0, Ldks;->b:Ldib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldks;->b:Ldib;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldks;->b:Ldib;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldks;->b:Ldib;

    .line 14
    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Ldks;->a:Ldlj;

    if-nez v0, :cond_2

    .line 15
    sget-object v0, Ldib;->b:Ldib;

    iput-object v0, p0, Ldks;->b:Ldib;

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Ldks;->a:Ldlj;

    .line 16
    invoke-interface {v0}, Ldlj;->a()Ldib;

    move-result-object v0

    iput-object v0, p0, Ldks;->b:Ldib;

    .line 15
    :goto_0
    iget-object v0, p0, Ldks;->b:Ldib;

    .line 17
    monitor-exit p0

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ldlj;)Ldlj;
    .locals 1

    iget-object v0, p0, Ldks;->a:Ldlj;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldks;->a:Ldlj;

    if-eqz v0, :cond_1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_1
    iput-object p1, p0, Ldks;->a:Ldlj;

    .line 10
    sget-object v0, Ldib;->b:Ldib;

    iput-object v0, p0, Ldks;->b:Ldib;
    :try_end_1
    .catch Ldkn; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    :try_start_2
    iput-object p1, p0, Ldks;->a:Ldlj;

    .line 11
    sget-object p1, Ldib;->b:Ldib;

    iput-object p1, p0, Ldks;->b:Ldib;

    .line 12
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :goto_1
    iget-object p1, p0, Ldks;->a:Ldlj;

    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ldks;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    check-cast p1, Ldks;

    iget-object v0, p0, Ldks;->a:Ldlj;

    .line 5
    iget-object v1, p1, Ldks;->a:Ldlj;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Ldks;->a()Ldib;

    move-result-object v0

    invoke-virtual {p1}, Ldks;->a()Ldib;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldib;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Ldlj;->i()Ldlj;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldks;->a(Ldlj;)Ldlj;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_6
    invoke-interface {v1}, Ldlj;->i()Ldlj;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldks;->a(Ldlj;)Ldlj;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
