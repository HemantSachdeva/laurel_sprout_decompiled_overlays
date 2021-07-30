.class public Lcom/google/android/setupdesign/view/RichTextView;
.super Lnq;
.source "PG"

# interfaces
.implements Lcnc;


# instance fields
.field private b:Lcmj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnq;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/RichTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lnq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/RichTextView;->b()V

    return-void
.end method

.method private final b()V
    .locals 2

    .line 11
    new-instance v0, Lcmj;

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Lfl;

    .line 13
    invoke-direct {v1}, Lfl;-><init>()V

    .line 14
    invoke-direct {v0, v1}, Lcmj;-><init>(Lfl;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/RichTextView;->b:Lcmj;

    .line 15
    invoke-static {p0, v0}, Lge;->a(Landroid/view/View;Lfl;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final drawableStateChanged()V
    .locals 6

    .line 5
    invoke-super {p0}, Lnq;->drawableStateChanged()V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getDrawableState()[I

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {p0, v4}, Lcom/google/android/setupdesign/view/RichTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 16
    invoke-super {p0, p1}, Lnq;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 18
    instance-of v2, v1, Lcnx;

    if-eqz v2, :cond_0

    .line 19
    check-cast v1, Lcnx;

    iget-object v2, v1, Lcnx;->b:Landroid/view/MotionEvent;

    if-ne v2, p1, :cond_0

    iget-boolean p1, v1, Lcnx;->a:Z

    return p1

    :cond_0
    return v0
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 11

    .line 20
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    new-instance v1, Landroid/text/SpannableString;

    .line 22
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v4, Landroid/text/Annotation;

    invoke-virtual {v1, v3, p1, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Annotation;

    .line 24
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, p1, v5

    .line 25
    invoke-virtual {v6}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 26
    const-string v8, "textAppearance"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 27
    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "style"

    invoke-virtual {v8, v7, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x21

    .line 30
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Cannot find resource: 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RichTextView"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 31
    :cond_0
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v8, v0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v8, v7, v3

    .line 32
    invoke-static {v1, v6, v7}, Lcne;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    nop

    .line 33
    const-string v8, "link"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 34
    new-instance v7, Lcnd;

    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    invoke-direct {v7}, Lcnd;-><init>()V

    .line 35
    new-instance v8, Landroid/text/style/TypefaceSpan;

    const-string v9, "sans-serif-medium"

    invoke-direct {v8, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v3

    aput-object v8, v9, v2

    .line 36
    invoke-static {v1, v6, v9}, Lcne;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 32
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 36
    :cond_3
    move-object p1, v1

    .line 37
    :cond_4
    invoke-super {p0, p1, p2}, Lnq;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 38
    instance-of p2, p1, Landroid/text/Spanned;

    if-eqz p2, :cond_5

    .line 39
    move-object p2, p1

    check-cast p2, Landroid/text/Spanned;

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v3, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 41
    array-length p1, p1

    if-lez p1, :cond_5

    goto :goto_2

    .line 44
    :cond_5
    const/4 v2, 0x0

    .line 41
    :goto_2
    if-eqz v2, :cond_6

    .line 42
    new-instance p1, Lcnx;

    .line 43
    invoke-direct {p1}, Lcnx;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_3

    .line 48
    :cond_6
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 45
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setFocusable(Z)V

    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    invoke-virtual {p0, v3}, Lcom/google/android/setupdesign/view/RichTextView;->setRevealOnFocusHint(Z)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/view/RichTextView;->setFocusableInTouchMode(Z)V

    return-void
.end method
