.class final Lcjf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcks;


# instance fields
.field final synthetic a:Lcjl;


# direct methods
.method public constructor <init>(Lcjl;)V
    .locals 0

    iput-object p1, p0, Lcjf;->a:Lcjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcjf;->a:Lcjl;

    iget-object p2, p2, Lcjl;->a:Landroid/text/TextWatcher;

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object p2

    iget-object v0, p0, Lcjf;->a:Lcjl;

    iget-object v0, v0, Lcjl;->b:Landroid/view/View$OnFocusChangeListener;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method
