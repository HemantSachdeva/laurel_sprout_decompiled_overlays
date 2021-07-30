.class public Lmr;
.super Landroid/widget/EditText;
.source "PG"


# instance fields
.field private final a:Lmk;

.field private final b:Lnp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f040117

    invoke-direct {p0, p1, p2, v0}, Lmr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lrk;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lmr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lri;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lmk;

    .line 5
    invoke-direct {p1, p0}, Lmk;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmr;->a:Lmk;

    .line 6
    invoke-virtual {p1, p2, p3}, Lmk;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Lnp;

    .line 7
    invoke-direct {p1, p0}, Lnp;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lmr;->b:Lnp;

    .line 8
    invoke-virtual {p1, p2, p3}, Lnp;->a(Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p1}, Lnp;->a()V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 10
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Lmr;->a:Lmk;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lmk;->a()V

    :cond_0
    iget-object v0, p0, Lmr;->b:Lnp;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lnp;->a()V

    :cond_1
    return-void
.end method

.method public final getText()Landroid/text/Editable;
    .locals 1

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lmr;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 17
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 18
    invoke-static {v0, p1, p0}, Lvt;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    return-object v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmr;->a:Lmk;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lmk;->b()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lmr;->a:Lmk;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lmk;->a(I)V

    :cond_0
    return-void
.end method

.method public final setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 23
    invoke-static {}, Lhz;->a()V

    .line 24
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lmr;->b:Lnp;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1, p2}, Lnp;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
