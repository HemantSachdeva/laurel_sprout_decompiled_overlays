.class final Ldvn;
.super Ldvi;
.source "PG"


# instance fields
.field private final a:Ldvi;

.field private final b:Ldvm;


# direct methods
.method public constructor <init>(Ldvi;Ldvm;)V
    .locals 0

    invoke-direct {p0}, Ldvi;-><init>()V

    iput-object p1, p0, Ldvn;->a:Ldvi;

    .line 1
    const-string p1, "interceptor"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldvn;->b:Ldvm;

    return-void
.end method


# virtual methods
.method public final a(Ldxx;Ldvh;)Ldvl;
    .locals 2

    iget-object v0, p0, Ldvn;->b:Ldvm;

    iget-object v1, p0, Ldvn;->a:Ldvi;

    .line 3
    invoke-interface {v0, p1, p2, v1}, Ldvm;->a(Ldxx;Ldvh;Ldvi;)Ldvl;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldvn;->a:Ldvi;

    .line 2
    invoke-virtual {v0}, Ldvi;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
