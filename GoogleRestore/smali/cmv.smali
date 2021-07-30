.class final Lcmv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcmu;

.field final synthetic b:Lcmy;


# direct methods
.method public constructor <init>(Lcmy;Lcmu;)V
    .locals 0

    iput-object p1, p0, Lcmv;->b:Lcmy;

    iput-object p2, p0, Lcmv;->a:Lcmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcmv;->a:Lcmu;

    iget-object p1, p1, Lcmu;->r:Lcmo;

    iget-object v0, p0, Lcmv;->b:Lcmy;

    iget-object v0, v0, Lcmy;->e:Lcmw;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcmo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmv;->b:Lcmy;

    iget-object v0, v0, Lcmy;->e:Lcmw;

    .line 1
    invoke-interface {v0, p1}, Lcmw;->a(Lcmo;)V

    :cond_0
    return-void
.end method
