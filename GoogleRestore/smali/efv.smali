.class public final Lefv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Ljava/lang/Boolean;

.field final c:Ljava/lang/Integer;

.field final d:Ljava/lang/Integer;

.field final e:Lehe;

.field final f:Ledq;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Leep;->b(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lefv;->a:Ljava/lang/Long;

    .line 2
    invoke-static {p1}, Leep;->a(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lefv;->b:Ljava/lang/Boolean;

    .line 3
    const-string v0, "maxResponseMessageBytes"

    invoke-static {p1, v0}, Leep;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lefv;->c:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    nop

    .line 5
    const-string v4, "maxInboundMessageSize %s exceeds bounds"

    invoke-static {v3, v4, v0}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    nop

    .line 6
    const-string v0, "maxRequestMessageBytes"

    invoke-static {p1, v0}, Leep;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lefv;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    nop

    .line 8
    const-string v0, "maxOutboundMessageSize %s exceeds bounds"

    invoke-static {v1, v0, p1}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_3
    sget-object p1, Lehe;->f:Lehe;

    iput-object p1, p0, Lefv;->e:Lehe;

    .line 10
    sget-object p1, Ledq;->b:Ledq;

    iput-object p1, p0, Lefv;->f:Ledq;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 11
    instance-of v0, p1, Lefv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 12
    :cond_0
    check-cast p1, Lefv;

    iget-object v0, p0, Lefv;->a:Ljava/lang/Long;

    .line 13
    iget-object v2, p1, Lefv;->a:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefv;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lefv;->b:Ljava/lang/Boolean;

    .line 14
    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefv;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lefv;->c:Ljava/lang/Integer;

    .line 15
    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefv;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lefv;->d:Ljava/lang/Integer;

    .line 16
    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefv;->e:Lehe;

    iget-object v2, p1, Lefv;->e:Lehe;

    .line 17
    invoke-static {v0, v2}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lefv;->f:Ledq;

    iget-object p1, p1, Lefv;->f:Ledq;

    .line 18
    invoke-static {v0, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lefv;->a:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lefv;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lefv;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lefv;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lefv;->e:Lehe;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lefv;->f:Ledq;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 20
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lefv;->a:Ljava/lang/Long;

    .line 21
    const-string v2, "timeoutNanos"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lefv;->b:Ljava/lang/Boolean;

    .line 22
    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lefv;->c:Ljava/lang/Integer;

    .line 23
    const-string v2, "maxInboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lefv;->d:Ljava/lang/Integer;

    .line 24
    const-string v2, "maxOutboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lefv;->e:Lehe;

    .line 25
    const-string v2, "retryPolicy"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lefv;->f:Ledq;

    .line 26
    const-string v2, "hedgingPolicy"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
