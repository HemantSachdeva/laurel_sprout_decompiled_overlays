.class final Ldxr;
.super Ldxp;
.source "PG"


# instance fields
.field private final c:Ldxs;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLdxs;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Ldxp;-><init>(Ljava/lang/String;Z)V

    .line 2
    const-string p2, "-bin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    const-string v1, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v0, v1, p1, p2}, Lcrj;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const-string p1, "marshaller"

    invoke-static {p3, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Ldxr;->c:Ldxs;

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldxr;->c:Ldxs;

    .line 5
    invoke-interface {v0, p1}, Ldxs;->a([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)[B
    .locals 1

    iget-object v0, p0, Ldxr;->c:Ldxs;

    .line 6
    invoke-interface {v0, p1}, Ldxs;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
