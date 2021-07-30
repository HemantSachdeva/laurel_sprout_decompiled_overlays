.class public final Lcnd;
.super Landroid/text/style/ClickableSpan;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lcnc;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcnc;

    invoke-interface {v0}, Lcnc;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Lcnb;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcnb;

    goto :goto_1

    .line 6
    :cond_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_1
    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Lcnb;->a()V

    .line 11
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_2

    .line 16
    :cond_4
    nop

    .line 9
    const-string v0, "LinkSpan"

    const-string v1, "Dropping click event. No listener attached."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 14
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 15
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_5

    .line 16
    check-cast p1, Landroid/text/Spannable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_5
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
