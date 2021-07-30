.class final Lahq;
.super Landroid/app/backup/RestoreObserver;
.source "PG"


# instance fields
.field public final a:J

.field private final b:Landroid/app/backup/RestoreSession;

.field private final c:[Ljava/lang/String;

.field private final d:Lj$/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/app/backup/RestoreSession;J[Ljava/lang/String;Lj$/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/backup/RestoreObserver;-><init>()V

    iput-object p1, p0, Lahq;->b:Landroid/app/backup/RestoreSession;

    iput-wide p2, p0, Lahq;->a:J

    iput-object p4, p0, Lahq;->c:[Ljava/lang/String;

    iput-object p5, p0, Lahq;->d:Lj$/util/function/Consumer;

    return-void
.end method

.method private final a(J[Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lahq;->b:Landroid/app/backup/RestoreSession;

    .line 20
    invoke-static {p3}, Lcsn;->a([Ljava/lang/Object;)Lcsn;

    move-result-object v1

    .line 21
    invoke-virtual {v0, p1, p2, p0, v1}, Landroid/app/backup/RestoreSession;->restorePackages(JLandroid/app/backup/RestoreObserver;Ljava/util/Set;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lahq;->b:Landroid/app/backup/RestoreSession;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const-string p1, "restoreSome"

    const-class p2, Ljava/lang/Integer;

    .line 23
    invoke-static {v1, p1, p2, v2}, Ltt;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Laqi; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 24
    :goto_0
    sget-object p2, Lahr;->a:Lacw;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "Reflection error when calling RestoreSession#restoreSome: "

    invoke-virtual {p2, v0, p1, p3}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    return p1
.end method

.method private final a(Z)V
    .locals 1

    iget-object v0, p0, Lahq;->b:Landroid/app/backup/RestoreSession;

    .line 2
    invoke-virtual {v0}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    iget-object v0, p0, Lahq;->d:Lj$/util/function/Consumer;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onUpdate(ILjava/lang/String;)V
    .locals 3

    .line 4
    sget-object v0, Lahr;->a:Lacw;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "onUpdate: %d = %s"

    invoke-virtual {v0, p1, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final restoreFinished(I)V
    .locals 5

    .line 5
    sget-object v0, Lahr;->a:Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "restoreFinished: %d"

    invoke-virtual {v0, v3, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lahq;->a(Z)V

    return-void
.end method

.method public final restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 5

    .line 7
    sget-object v0, Lahr;->a:Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "restoreSetsAvailable: %s"

    invoke-virtual {v0, v3, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lahr;->a:Lacw;

    new-array v3, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Found %d available restore sets."

    invoke-virtual {v2, v0, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lahp;

    invoke-direct {v0, p0}, Lahp;-><init>(Lahq;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->anyMatch(Lj$/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lahr;->a:Lacw;

    new-array v0, v4, [Ljava/lang/Object;

    .line 12
    const-string v1, "No matches found for restore token! Aborting restore."

    invoke-virtual {p1, v1, v0}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-direct {p0, v4}, Lahq;->a(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lahq;->c:[Ljava/lang/String;

    if-nez p1, :cond_2

    sget-object p1, Lahr;->a:Lacw;

    new-array v0, v4, [Ljava/lang/Object;

    .line 17
    const-string v1, "Restoring all packages."

    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lahq;->b:Landroid/app/backup/RestoreSession;

    iget-wide v0, p0, Lahq;->a:J

    .line 18
    invoke-virtual {p1, v0, v1, p0}, Landroid/app/backup/RestoreSession;->restoreAll(JLandroid/app/backup/RestoreObserver;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-direct {p0, v4}, Lahq;->a(Z)V

    return-void

    :cond_2
    sget-object p1, Lahr;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lahq;->c:[Ljava/lang/String;

    .line 14
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Restoring %d packages."

    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lahq;->a:J

    iget-object p1, p0, Lahq;->c:[Ljava/lang/String;

    .line 15
    invoke-direct {p0, v0, v1, p1}, Lahq;->a(J[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-direct {p0, v4}, Lahq;->a(Z)V

    return-void

    .line 19
    :cond_3
    return-void

    .line 7
    :cond_4
    :goto_0
    sget-object p1, Lahr;->a:Lacw;

    new-array v0, v4, [Ljava/lang/Object;

    .line 8
    const-string v1, "No restore sets found."

    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, v4}, Lahq;->a(Z)V

    return-void
.end method

.method public final restoreStarting(I)V
    .locals 3

    .line 25
    sget-object v0, Lahr;->a:Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "restoreStarting: %d packages"

    invoke-virtual {v0, p1, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
