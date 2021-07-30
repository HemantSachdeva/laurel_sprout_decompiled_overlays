.class final Lcfn;
.super Lqc;
.source "PG"


# instance fields
.field public final c:Lcer;

.field private final d:Lceh;

.field private final e:Lcek;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcek;Lceh;Lcer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lqc;-><init>()V

    iget-object v0, p3, Lceh;->a:Lcfj;

    iget-object v1, p3, Lceh;->b:Lcfj;

    iget-object v2, p3, Lceh;->c:Lcfj;

    .line 2
    invoke-virtual {v0, v2}, Lcfj;->a(Lcfj;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 4
    invoke-virtual {v2, v1}, Lcfj;->a(Lcfj;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 6
    sget v0, Lcfk;->a:I

    invoke-static {p1}, Lcey;->b(Landroid/content/Context;)I

    move-result v1

    mul-int v0, v0, v1

    .line 7
    invoke-static {p1}, Lcfe;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcey;->b(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcfn;->f:I

    iput-object p3, p0, Lcfn;->d:Lceh;

    iput-object p2, p0, Lcfn;->e:Lcek;

    iput-object p4, p0, Lcfn;->c:Lcer;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lqc;->a(Z)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcfn;->d:Lceh;

    iget v0, v0, Lceh;->f:I

    return v0
.end method

.method final a(Lcfj;)I
    .locals 1

    iget-object v0, p0, Lcfn;->d:Lceh;

    iget-object v0, v0, Lceh;->a:Lcfj;

    .line 12
    invoke-virtual {v0, p1}, Lcfj;->b(Lcfj;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic a(Landroid/view/ViewGroup;I)Lqz;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d006e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcfe;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lql;

    const/4 v0, -0x1

    iget v1, p0, Lcfn;->f:I

    invoke-direct {p1, v0, v1}, Lql;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcfm;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcfm;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcfm;

    invoke-direct {p1, p2, v1}, Lcfm;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic a(Lqz;I)V
    .locals 3

    check-cast p1, Lcfm;

    iget-object v0, p0, Lcfn;->d:Lceh;

    iget-object v0, v0, Lceh;->a:Lcfj;

    invoke-virtual {v0, p2}, Lcfj;->b(I)Lcfj;

    move-result-object p2

    iget-object v0, p1, Lcfm;->q:Landroid/widget/TextView;

    iget-object v1, p2, Lcfj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcfm;->r:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v0, 0x7f0a00e3

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcfk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcfk;

    move-result-object v0

    iget-object v0, v0, Lcfk;->b:Lcfj;

    invoke-virtual {p2, v0}, Lcfj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcfk;

    move-result-object p2

    invoke-virtual {p2}, Lcfk;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcfk;

    iget-object v1, p0, Lcfn;->e:Lcek;

    iget-object v2, p0, Lcfn;->d:Lceh;

    invoke-direct {v0, p2, v1, v2}, Lcfk;-><init>(Lcfj;Lcek;Lceh;)V

    iget p2, p2, Lcfj;->e:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNumColumns(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    new-instance p2, Lcfl;

    invoke-direct {p2, p0, p1}, Lcfl;-><init>(Lcfn;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final b(I)J
    .locals 2

    iget-object v0, p0, Lcfn;->d:Lceh;

    iget-object v0, v0, Lceh;->a:Lcfj;

    .line 9
    invoke-virtual {v0, p1}, Lcfj;->b(I)Lcfj;

    move-result-object p1

    iget-object p1, p1, Lcfj;->a:Ljava/util/Calendar;

    .line 10
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method final d(I)Lcfj;
    .locals 1

    iget-object v0, p0, Lcfn;->d:Lceh;

    iget-object v0, v0, Lceh;->a:Lcfj;

    .line 11
    invoke-virtual {v0, p1}, Lcfj;->b(I)Lcfj;

    move-result-object p1

    return-object p1
.end method
