.class final Ldxo;
.super Ldxp;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lees;[B)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Ldxp;-><init>(Ljava/lang/String;Z)V

    .line 2
    const-string v0, "-bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 3
    const-string v2, "Binary header is named %s. It must end with %s"

    invoke-static {v1, v2, p1, v0}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    nop

    .line 4
    :goto_0
    const-string p1, "empty key name"

    invoke-static {p3, p1}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 5
    const-string p1, "marshaller is null"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)[B
    .locals 0

    .line 6
    check-cast p1, [B

    return-object p1
.end method
