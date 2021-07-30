.class final Lcfc;
.super Lcfo;
.source "PG"


# instance fields
.field final synthetic a:Lcfe;


# direct methods
.method public constructor <init>(Lcfe;)V
    .locals 0

    iput-object p1, p0, Lcfc;->a:Lcfe;

    invoke-direct {p0}, Lcfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcfc;->a:Lcfe;

    .line 1
    invoke-virtual {p1}, Lcfe;->O()V

    iget-object p1, p0, Lcfc;->a:Lcfe;

    iget-object v0, p1, Lcfe;->ad:Landroid/widget/Button;

    iget-object p1, p1, Lcfe;->ab:Lcek;

    .line 2
    invoke-interface {p1}, Lcek;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
