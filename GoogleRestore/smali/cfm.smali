.class public final Lcfm;
.super Lqz;
.source "PG"


# instance fields
.field final q:Landroid/widget/TextView;

.field final r:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lqz;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a00e8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcfm;->q:Landroid/widget/TextView;

    .line 3
    invoke-static {}, Lge;->a()Lgc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lgc;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    goto :goto_1

    .line 5
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    invoke-virtual {v1, v0}, Lgc;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 9
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 10
    invoke-static {v0}, Lge;->H(Landroid/view/View;)V

    iget v3, v1, Lgc;->a:I

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget v1, v1, Lgc;->b:I

    .line 12
    invoke-static {v0, v1}, Lge;->f(Landroid/view/View;I)V

    .line 13
    :cond_2
    :goto_1
    const v1, 0x7f0a00e3

    .line 14
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lcfm;->r:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_3

    const/16 p1, 0x8

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
