.class final Lcjs;
.super Lckq;
.source "PG"


# instance fields
.field final synthetic b:Lcjz;


# direct methods
.method public constructor <init>(Lcjz;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    iput-object p1, p0, Lcjs;->b:Lcjz;

    .line 1
    invoke-direct {p0, p2}, Lckq;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgz;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lckq;->a(Landroid/view/View;Lgz;)V

    iget-object p1, p0, Lcjs;->b:Lcjz;

    .line 3
    iget-object p1, p1, Lcjz;->k:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 4
    invoke-static {p1}, Lcjz;->b(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Landroid/widget/Spinner;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgz;->a(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p2, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lgz;->c(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 9
    invoke-super {p0, p1, p2}, Lckq;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lcjs;->b:Lcjz;

    .line 10
    iget-object p1, p1, Lcjz;->k:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 11
    invoke-static {p1}, Lcjz;->a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcjs;->b:Lcjz;

    .line 13
    iget-object p2, p2, Lcjz;->i:Landroid/view/accessibility/AccessibilityManager;

    .line 14
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcjs;->b:Lcjz;

    iget-object p2, p2, Lcjz;->k:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p2, p2, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 15
    invoke-static {p2}, Lcjz;->b(Landroid/widget/EditText;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcjs;->b:Lcjz;

    .line 16
    invoke-virtual {p2, p1}, Lcjz;->a(Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
