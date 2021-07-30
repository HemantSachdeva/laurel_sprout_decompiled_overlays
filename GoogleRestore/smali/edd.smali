.class final Ledd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebf;


# instance fields
.field final a:Ldyv;

.field private final b:Lebd;


# direct methods
.method public constructor <init>(Ldyv;Lebd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Ledd;->a:Ldyv;

    iput-object p2, p0, Ledd;->b:Lebd;

    return-void
.end method


# virtual methods
.method public final a(Ldxx;Ldxt;Ldvh;)Lebc;
    .locals 0

    new-instance p1, Ledc;

    iget-object p2, p0, Ledd;->a:Ldyv;

    iget-object p3, p0, Ledd;->b:Lebd;

    .line 3
    invoke-direct {p1, p2, p3}, Ledc;-><init>(Ldyv;Lebd;)V

    return-object p1
.end method

.method public final b()Ldwp;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
