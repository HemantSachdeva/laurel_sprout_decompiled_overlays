.class final Ldxm;
.super Ldxp;
.source "PG"


# instance fields
.field private final c:Ldxn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldxn;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldxp;-><init>(Ljava/lang/String;Z)V

    .line 2
    const-string v0, "-bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 3
    const-string v2, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v1, v2, p1, v0}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const-string p1, "marshaller"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldxm;->c:Ldxn;

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ldxm;->c:Ldxn;

    new-instance v1, Ljava/lang/String;

    .line 5
    sget-object v2, Lcqp;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Ldxn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)[B
    .locals 1

    iget-object v0, p0, Ldxm;->c:Ldxn;

    .line 6
    invoke-interface {v0, p1}, Ldxn;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcqp;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method
