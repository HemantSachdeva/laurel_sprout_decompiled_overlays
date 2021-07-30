.class final Ldgd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldgi;


# instance fields
.field private final a:Ldgj;

.field private final b:Lbpl;


# direct methods
.method public constructor <init>(Ldgj;Lbpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgd;->a:Ldgj;

    iput-object p2, p0, Ldgd;->b:Lbpl;

    return-void
.end method


# virtual methods
.method public final a(Ldgn;)Z
    .locals 7

    invoke-virtual {p1}, Ldgn;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-static {p1}, Ldgj;->a(Ldgn;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ldgd;->b:Lbpl;

    new-instance v1, Ldgf;

    invoke-direct {v1}, Ldgf;-><init>()V

    iget-object v2, p1, Ldgn;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3
    iput-object v2, v1, Ldgf;->a:Ljava/lang/String;

    iget-wide v2, p1, Ldgn;->d:J

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Ldgf;->b:Ljava/lang/Long;

    iget-wide v2, p1, Ldgn;->e:J

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Ldgf;->c:Ljava/lang/Long;

    iget-object p1, v1, Ldgf;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, " token"

    goto :goto_0

    .line 13
    :cond_0
    const-string p1, ""

    .line 5
    :goto_0
    iget-object v2, v1, Ldgf;->b:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 6
    const-string v2, " tokenExpirationTimestamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v2, v1, Ldgf;->c:Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, " tokenCreationTimestamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Missing required properties:"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/String;

    .line 9
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ldgg;

    iget-object v2, v1, Ldgf;->a:Ljava/lang/String;

    iget-object v3, v1, Ldgf;->b:Ljava/lang/Long;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Ldgf;->c:Ljava/lang/Long;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 12
    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ldgg;-><init>(Ljava/lang/String;JJ)V

    .line 13
    invoke-virtual {v0, p1}, Lbpl;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 3
    const-string v0, "Null token"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ldgn;Ljava/lang/Exception;)Z
    .locals 1

    invoke-virtual {p1}, Ldgn;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ldgn;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ldgn;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 0
    :cond_1
    :goto_0
    iget-object p1, p0, Ldgd;->b:Lbpl;

    .line 1
    invoke-virtual {p1, p2}, Lbpl;->b(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method
