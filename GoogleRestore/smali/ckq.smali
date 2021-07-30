.class public Lckq;
.super Lfl;
.source "PG"


# instance fields
.field private final b:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfl;-><init>()V

    iput-object p1, p0, Lckq;->b:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lgz;)V
    .locals 10

    .line 2
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    iget-object p1, p0, Lckq;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lckq;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->a()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lckq;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->d()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lckq;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget v5, v4, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    iget-boolean v6, v4, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eqz v6, :cond_1

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_1
    nop

    .line 7
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v6

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_3

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    .line 14
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    .line 10
    :goto_2
    if-eqz v7, :cond_4

    .line 11
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 14
    :cond_4
    const-string v2, ""

    .line 11
    :goto_3
    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {p2, v1}, Lgz;->b(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 13
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 14
    invoke-virtual {p2, v2}, Lgz;->b(Ljava/lang/CharSequence;)V

    .line 15
    :cond_6
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 16
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    invoke-virtual {p2, v2}, Lgz;->c(Ljava/lang/CharSequence;)V

    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p2, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    xor-int/2addr v4, v6

    .line 19
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    :cond_7
    const/4 v2, -0x1

    if-eqz v1, :cond_8

    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v5, :cond_8

    goto :goto_5

    .line 26
    :cond_8
    const/4 v5, -0x1

    .line 21
    :goto_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p2, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    if-eqz v9, :cond_a

    if-eq v6, v8, :cond_9

    goto :goto_6

    :cond_9
    move-object v3, v0

    .line 23
    :goto_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p2, p2, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 24
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 25
    :cond_a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_b

    const p2, 0x7f0a01a8

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setLabelFor(I)V

    :cond_b
    return-void
.end method
