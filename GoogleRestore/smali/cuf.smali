.class public abstract Lcuf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcup;
.implements Lcuy;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public b:Lcud;

.field private final c:Ljava/util/logging/Level;

.field private final d:J

.field private e:Lcui;

.field private f:Lcvj;

.field private g:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    .line 1
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcuf;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;Z)V
    .locals 3

    .line 2
    invoke-static {}, Lcvf;->e()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcuf;->b:Lcud;

    iput-object v2, p0, Lcuf;->e:Lcui;

    iput-object v2, p0, Lcuf;->f:Lcvj;

    iput-object v2, p0, Lcuf;->g:[Ljava/lang/Object;

    .line 3
    const-string v2, "level"

    invoke-static {p1, v2}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcuf;->c:Ljava/util/logging/Level;

    iput-wide v0, p0, Lcuf;->d:J

    if-eqz p2, :cond_0

    .line 4
    sget-object p1, Lcuc;->e:Lcuq;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcuf;->a(Lcuq;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iput-object p2, p0, Lcuf;->g:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 21
    aget-object v1, p2, v0

    instance-of v2, v1, Lcub;

    if-eqz v2, :cond_0

    .line 22
    check-cast v1, Lcub;

    invoke-interface {v1}, Lcub;->a()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcuf;->a:Ljava/lang/String;

    if-eq p1, p2, :cond_2

    new-instance p2, Lcvj;

    .line 23
    invoke-virtual {p0}, Lcuf;->a()Lcwh;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcvj;-><init>(Lcwh;Ljava/lang/String;)V

    iput-object p2, p0, Lcuf;->f:Lcvj;

    :cond_2
    invoke-virtual {p0}, Lcuf;->b()Lctx;

    move-result-object p1

    :try_start_0
    iget-object p2, p1, Lctx;->a:Lcuz;

    .line 24
    invoke-virtual {p2, p0}, Lcuz;->a(Lcuy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    :try_start_1
    iget-object p1, p1, Lctx;->a:Lcuz;

    .line 25
    invoke-virtual {p1, p2, p0}, Lcuz;->a(Ljava/lang/RuntimeException;Lcuy;)V
    :try_end_1
    .catch Lcva; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 29
    :catch_1
    move-exception p1

    .line 26
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logging error: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v0, Ldat;->a:Ldan;

    .line 28
    invoke-virtual {v0, p1, p2}, Ldan;->a(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    return-void

    .line 25
    :catch_2
    move-exception p1

    .line 29
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final l()Z
    .locals 4

    iget-object v0, p0, Lcuf;->e:Lcui;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcvf;->a()Lcve;

    move-result-object v0

    const-class v2, Lcuf;

    invoke-virtual {v0, v2, v1}, Lcve;->a(Ljava/lang/Class;I)Lcui;

    move-result-object v0

    const-string v2, "logger backend must not return a null LogSite"

    invoke-static {v0, v2}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcuf;->e:Lcui;

    :cond_0
    iget-object v0, p0, Lcuf;->e:Lcui;

    sget-object v2, Lcui;->a:Lcui;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcuf;->e:Lcui;

    invoke-virtual {p0}, Lcuf;->j()Lcvc;

    move-result-object v2

    .line 31
    sget-object v3, Lcuc;->d:Lcuq;

    invoke-virtual {v2, v3}, Lcvc;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v0, Lcue;

    iget-object v3, p0, Lcuf;->e:Lcui;

    .line 32
    invoke-direct {v0, v3, v2}, Lcue;-><init>(Lcui;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcuf;->a(Lcuj;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 34
    :cond_3
    invoke-static {}, Lcvf;->c()Lcvi;

    move-result-object v0

    iget-object v2, v0, Lcvi;->b:Ljava/util/SortedMap;

    .line 35
    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 36
    sget-object v2, Lcuc;->f:Lcuq;

    invoke-virtual {p0, v2, v0}, Lcuf;->a(Lcuq;Ljava/lang/Object;)V

    :cond_4
    return v1
.end method


# virtual methods
.method protected abstract a()Lcwh;
.end method

.method protected final a(Lcuq;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcuf;->b:Lcud;

    if-nez v0, :cond_0

    new-instance v0, Lcud;

    .line 5
    invoke-direct {v0}, Lcud;-><init>()V

    iput-object v0, p0, Lcuf;->b:Lcud;

    :cond_0
    iget-object v0, p0, Lcuf;->b:Lcud;

    .line 6
    invoke-virtual {v0, p1}, Lcud;->a(Lcuq;)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "metadata value"

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcud;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcud;->a:[Ljava/lang/Object;

    .line 7
    array-length v4, v2

    add-int/2addr v1, v1

    if-le v1, v4, :cond_1

    add-int/2addr v4, v4

    .line 8
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcud;->a:[Ljava/lang/Object;

    :cond_1
    iget-object v1, v0, Lcud;->a:[Ljava/lang/Object;

    iget v2, v0, Lcud;->b:I

    .line 9
    const-string v4, "metadata key"

    invoke-static {p1, v4}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v2, v2

    aput-object p1, v1, v2

    iget-object p1, v0, Lcud;->a:[Ljava/lang/Object;

    iget v1, v0, Lcud;->b:I

    .line 10
    invoke-static {p2, v3}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    iget p1, v0, Lcud;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcud;->b:I

    return-void

    :cond_2
    iget-object p1, v0, Lcud;->a:[Ljava/lang/Object;

    .line 11
    invoke-static {p2, v3}, Ldav;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcuf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "log start: %s\nend: %s"

    invoke-direct {p0, p1, v0}, Lcuf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lcuf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcuf;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcuf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcuf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcuf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcuf;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lcuf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcuh;

    .line 39
    invoke-direct {v0, p1, p2, p3, p4}, Lcuh;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcuf;->e:Lcui;

    if-nez p1, :cond_0

    iput-object v0, p0, Lcuf;->e:Lcui;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    sget-object v0, Lcuc;->a:Lcuq;

    invoke-virtual {p0, v0, p1}, Lcuf;->a(Lcuq;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected a(Lcuj;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract b()Lctx;
.end method

.method public final c()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lcuf;->c:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcuf;->d:J

    return-wide v0
.end method

.method public final e()Lcui;
    .locals 2

    iget-object v0, p0, Lcuf;->e:Lcui;

    if-eqz v0, :cond_0

    .line 15
    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    const-string v1, "cannot request log site information prior to postProcess()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Lcvj;
    .locals 1

    iget-object v0, p0, Lcuf;->f:Lcvj;

    return-object v0
.end method

.method public final g()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcuf;->f:Lcvj;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcuf;->g:[Ljava/lang/Object;

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "cannot get arguments unless a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcuf;->f:Lcvj;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcuf;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 14
    aget-object v0, v0, v1

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v1, "cannot get literal argument if a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Lcuf;->b:Lcud;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcuf;->b:Lcud;

    sget-object v2, Lcuc;->e:Lcuq;

    invoke-virtual {v1, v2}, Lcud;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lcvc;
    .locals 1

    iget-object v0, p0, Lcuf;->b:Lcud;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcvb;->a:Lcvb;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcuf;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcuf;->b()Lctx;

    move-result-object v0

    iget-object v1, p0, Lcuf;->c:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lctx;->b(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
