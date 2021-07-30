.class public final Ldwk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ldwl;

.field public c:Ldwt;

.field private d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldwm;
    .locals 8

    iget-object v0, p0, Ldwk;->a:Ljava/lang/String;

    .line 1
    const-string v1, "description"

    invoke-static {v0, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ldwk;->b:Ldwl;

    .line 2
    const-string v1, "severity"

    invoke-static {v0, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ldwk;->d:Ljava/lang/Long;

    .line 3
    const-string v1, "timestampNanos"

    invoke-static {v0, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const/4 v0, 0x1

    const-string v1, "at least one of channelRef and subchannelRef must be null"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    new-instance v0, Ldwm;

    iget-object v3, p0, Ldwk;->a:Ljava/lang/String;

    iget-object v4, p0, Ldwk;->b:Ldwl;

    iget-object v1, p0, Ldwk;->d:Ljava/lang/Long;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Ldwk;->c:Ldwt;

    .line 6
    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ldwm;-><init>(Ljava/lang/String;Ldwl;JLdwt;)V

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ldwk;->d:Ljava/lang/Long;

    return-void
.end method
