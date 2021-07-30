.class final Lnc;
.super Los;
.source "PG"


# instance fields
.field final synthetic a:Lnj;

.field final synthetic b:Lnn;


# direct methods
.method public constructor <init>(Lnn;Landroid/view/View;Lnj;)V
    .locals 0

    iput-object p1, p0, Lnc;->b:Lnn;

    iput-object p3, p0, Lnc;->a:Lnj;

    .line 1
    invoke-direct {p0, p2}, Los;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Llh;
    .locals 1

    iget-object v0, p0, Lnc;->a:Lnj;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lnc;->b:Lnn;

    iget-object v0, v0, Lnn;->b:Lnm;

    .line 2
    invoke-interface {v0}, Lnm;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnc;->b:Lnn;

    .line 3
    invoke-virtual {v0}, Lnn;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
