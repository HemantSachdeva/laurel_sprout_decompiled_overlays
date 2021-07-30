.class final Lcfd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcfe;


# direct methods
.method public constructor <init>(Lcfe;)V
    .locals 0

    iput-object p1, p0, Lcfd;->a:Lcfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcfd;->a:Lcfe;

    iget-object v0, p1, Lcfe;->ad:Landroid/widget/Button;

    iget-object p1, p1, Lcfe;->ab:Lcek;

    .line 1
    invoke-interface {p1}, Lcek;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcfd;->a:Lcfe;

    iget-object p1, p1, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Lcfd;->a:Lcfe;

    iget-object v0, p1, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {p1, v0}, Lcfe;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    iget-object p1, p0, Lcfd;->a:Lcfe;

    .line 4
    invoke-virtual {p1}, Lcfe;->P()V

    return-void
.end method
