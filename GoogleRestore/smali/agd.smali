.class public final Lagd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lagd;

.field private static final b:Lacw;


# instance fields
.field private final c:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BadGuessesTracker"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lagd;->b:Lacw;

    new-instance v0, Lagd;

    .line 2
    invoke-direct {v0}, Lagd;-><init>()V

    sput-object v0, Lagd;->a:Lagd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lagd;->c:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Latw;)Latw;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p1, Latw;->a:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_5

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    iget-object v0, p0, Lagd;->c:Landroid/util/LongSparseArray;

    iget-wide v1, p1, Latw;->b:J

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Latw;->h:Lasz;

    if-nez v2, :cond_0

    .line 6
    sget-object v2, Lasz;->f:Lasz;

    :cond_0
    iget v2, v2, Lasz;->e:I

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldjy;

    .line 8
    invoke-virtual {v2, p1}, Ldjy;->a(Ldkd;)V

    iget-object p1, p1, Latw;->h:Lasz;

    if-nez p1, :cond_2

    sget-object p1, Lasz;->f:Lasz;

    .line 9
    :cond_2
    invoke-virtual {p1, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldjy;

    .line 10
    invoke-virtual {v1, p1}, Ldjy;->a(Ldkd;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v0, v1, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_3
    iget-object v0, v1, Ldjy;->a:Ldkd;

    .line 13
    check-cast v0, Lasz;

    iget v4, v0, Lasz;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lasz;->a:I

    iput p1, v0, Lasz;->e:I

    iget-boolean p1, v2, Ldjy;->b:Z

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v3, v2, Ldjy;->b:Z

    :cond_4
    iget-object p1, v2, Ldjy;->a:Ldkd;

    .line 15
    check-cast p1, Latw;

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lasz;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Latw;->h:Lasz;

    iget v0, p1, Latw;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Latw;->a:I

    .line 17
    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Latw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-object p1

    .line 6
    :cond_6
    :goto_0
    monitor-exit p0

    return-object p1

    .line 3
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(JI)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lagd;->b:Lacw;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const-string v2, "Updating bad guesses for %d to %d"

    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lagd;->c:Landroid/util/LongSparseArray;

    .line 19
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
