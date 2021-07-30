.class final Lcjr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcjz;


# direct methods
.method public constructor <init>(Lcjz;)V
    .locals 0

    iput-object p1, p0, Lcjr;->a:Lcjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcjr;->a:Lcjz;

    iget-object p1, p1, Lcjz;->k:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CheckableImageButton;->setActivated(Z)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcjr;->a:Lcjz;

    .line 2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcjz;->b(Z)V

    iget-object p1, p0, Lcjr;->a:Lcjz;

    iput-boolean p2, p1, Lcjz;->d:Z

    :cond_0
    return-void
.end method
