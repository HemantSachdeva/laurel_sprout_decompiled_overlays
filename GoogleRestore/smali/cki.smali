.class final Lcki;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcks;


# instance fields
.field final synthetic a:Lckk;


# direct methods
.method public constructor <init>(Lckk;)V
    .locals 0

    iput-object p1, p0, Lcki;->a:Lckk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p2, p0, Lcki;->a:Lckk;

    iget-object p2, p2, Lckk;->a:Landroid/text/TextWatcher;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method
