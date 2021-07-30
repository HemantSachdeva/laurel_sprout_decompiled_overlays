.class final Leaq;
.super Ldvj;
.source "PG"


# instance fields
.field private final a:Lear;

.field private final b:Lehx;


# direct methods
.method public constructor <init>(Lear;Lehx;)V
    .locals 1

    invoke-direct {p0}, Ldvj;-><init>()V

    .line 1
    const-string v0, "tracer"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Leaq;->a:Lear;

    .line 2
    const-string p1, "time"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Leaq;->b:Lehx;

    return-void
.end method

.method public static a(I)Ljava/util/logging/Level;
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 16
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    .line 15
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    .line 14
    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0
.end method

.method private final b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Leaq;->a:Lear;

    iget-object p1, p1, Lear;->b:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4
    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Leaq;->a:Lear;

    iget-object v0, v0, Lear;->c:Ldwp;

    .line 6
    invoke-static {p1}, Leaq;->a(I)Ljava/util/logging/Level;

    move-result-object v1

    sget-object v2, Lear;->a:Ljava/util/logging/Logger;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v0, v1, p2}, Lear;->a(Ldwp;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Leaq;->b(I)Z

    return-void
.end method

.method public final varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 10
    invoke-static {p1}, Leaq;->a(I)Ljava/util/logging/Level;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1}, Leaq;->b(I)Z

    sget-object v1, Lear;->a:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Leaq;->a(ILjava/lang/String;)V

    return-void
.end method
