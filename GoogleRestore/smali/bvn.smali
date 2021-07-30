.class final synthetic Lbvn;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbvq;

.field private final b:Lczc;


# direct methods
.method public constructor <init>(Lbvq;Lczc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvn;->a:Lbvq;

    iput-object p2, p0, Lbvn;->b:Lczc;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 2

    iget-object v0, p0, Lbvn;->a:Lbvq;

    iget-object v1, p0, Lbvn;->b:Lczc;

    iget-object v0, v0, Lbvq;->b:Lcbh;

    invoke-virtual {v0}, Lcbh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ldab;->a(Ljava/lang/Object;)Lczu;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lczc;->a()Lczu;

    move-result-object v0

    :goto_0
    return-object v0
.end method
