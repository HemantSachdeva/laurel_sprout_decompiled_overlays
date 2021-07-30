.class public final Ldgm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldgn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ldgn;->a:Ljava/lang/String;

    iput-object v0, p0, Ldgm;->a:Ljava/lang/String;

    iget v0, p1, Ldgn;->g:I

    iput v0, p0, Ldgm;->g:I

    iget-object v0, p1, Ldgn;->b:Ljava/lang/String;

    iput-object v0, p0, Ldgm;->b:Ljava/lang/String;

    iget-object v0, p1, Ldgn;->c:Ljava/lang/String;

    iput-object v0, p0, Ldgm;->c:Ljava/lang/String;

    iget-wide v0, p1, Ldgn;->d:J

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldgm;->e:Ljava/lang/Long;

    iget-wide v0, p1, Ldgn;->e:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldgm;->f:Ljava/lang/Long;

    iget-object p1, p1, Ldgn;->f:Ljava/lang/String;

    iput-object p1, p0, Ldgm;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ldgn;
    .locals 12

    iget v0, p0, Ldgm;->g:I

    if-nez v0, :cond_0

    const-string v0, " registrationStatus"

    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 0
    :goto_0
    iget-object v1, p0, Ldgm;->e:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 3
    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Ldgm;->f:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " tokenCreationEpochInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_4
    new-instance v0, Ldgn;

    iget-object v3, p0, Ldgm;->a:Ljava/lang/String;

    iget v4, p0, Ldgm;->g:I

    iget-object v5, p0, Ldgm;->b:Ljava/lang/String;

    iget-object v6, p0, Ldgm;->c:Ljava/lang/String;

    iget-object v1, p0, Ldgm;->e:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Ldgm;->f:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Ldgm;->d:Ljava/lang/String;

    .line 10
    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Ldgn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 12
    iput p1, p0, Ldgm;->g:I

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 12
    const-string v0, "Null registrationStatus"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(J)V
    .locals 0

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ldgm;->e:Ljava/lang/Long;

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ldgm;->f:Ljava/lang/Long;

    return-void
.end method
