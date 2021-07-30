.class public final Leah;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldwy;

.field public b:Ldxf;

.field public c:Ldxh;

.field final synthetic d:Leam;


# direct methods
.method public constructor <init>(Leam;Ldwy;)V
    .locals 2

    iput-object p1, p0, Leah;->d:Leam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leah;->a:Ldwy;

    iget-object v0, p1, Leam;->a:Ldxj;

    iget-object v1, p1, Leam;->b:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1}, Ldxj;->a(Ljava/lang/String;)Ldxh;

    move-result-object v0

    iput-object v0, p0, Leah;->c:Ldxh;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Ldxh;->a(Ldwy;)Ldxf;

    move-result-object p1

    iput-object p1, p0, Leah;->b:Ldxf;

    return-void

    .line 1
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object p1, p1, Leam;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit16 v0, v0, 0xb6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not find policy \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
