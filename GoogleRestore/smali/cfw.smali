.class final Lcfw;
.super Lqc;
.source "PG"


# instance fields
.field public final c:Lcey;


# direct methods
.method public constructor <init>(Lcey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc;-><init>()V

    iput-object p1, p0, Lcfw;->c:Lcey;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcfw;->c:Lcey;

    iget-object v0, v0, Lcey;->b:Lceh;

    iget v0, v0, Lceh;->e:I

    return v0
.end method

.method public final bridge synthetic a(Landroid/view/ViewGroup;I)Lqz;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0072

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcfv;

    invoke-direct {p2, p1}, Lcfv;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method

.method public final bridge synthetic a(Lqz;I)V
    .locals 8

    check-cast p1, Lcfv;

    iget-object v0, p0, Lcfw;->c:Lcey;

    iget-object v0, v0, Lcey;->b:Lceh;

    iget-object v0, v0, Lceh;->a:Lcfj;

    iget v0, v0, Lcfj;->d:I

    add-int/2addr v0, p2

    iget-object p2, p1, Lcfv;->q:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f110121

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcfv;->q:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v7, "%d"

    invoke-static {v2, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcfv;->q:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcfw;->c:Lcey;

    iget-object p2, p2, Lcey;->d:Lcej;

    invoke-static {}, Lcft;->a()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p2, Lcej;->f:Lcei;

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lcej;->d:Lcei;

    :goto_0
    iget-object v4, p0, Lcfw;->c:Lcey;

    iget-object v4, v4, Lcey;->a:Lcek;

    invoke-interface {v4}, Lcek;->c()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v0, :cond_1

    iget-object v2, p2, Lcej;->e:Lcei;

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcfv;->q:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Lcei;->a(Landroid/widget/TextView;)V

    iget-object p1, p1, Lcfv;->q:Landroid/widget/TextView;

    new-instance p2, Lcfu;

    invoke-direct {p2, p0, v0}, Lcfu;-><init>(Lcfw;I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
