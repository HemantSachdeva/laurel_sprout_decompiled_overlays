.class final Lbgg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbfk;

.field public final b:Lbdv;


# direct methods
.method public constructor <init>(Lbfk;Lbdv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgg;->a:Lbfk;

    iput-object p2, p0, Lbgg;->b:Lbdv;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    instance-of v1, p1, Lbgg;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lbgg;

    iget-object v1, p0, Lbgg;->a:Lbfk;

    iget-object v2, p1, Lbgg;->a:Lbfk;

    .line 3
    invoke-static {v1, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbgg;->b:Lbdv;

    iget-object p1, p1, Lbgg;->b:Lbdv;

    .line 4
    invoke-static {v1, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbgg;->a:Lbfk;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbgg;->b:Lbdv;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 6
    invoke-static {p0}, Lbir;->b(Ljava/lang/Object;)Lbiq;

    move-result-object v0

    iget-object v1, p0, Lbgg;->a:Lbfk;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lbgg;->b:Lbdv;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lbiq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbiq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
