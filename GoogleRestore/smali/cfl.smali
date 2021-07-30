.class final Lcfl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final synthetic b:Lcfn;


# direct methods
.method public constructor <init>(Lcfn;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lcfl;->b:Lcfn;

    iput-object p2, p0, Lcfl;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcfl;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcfk;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcfk;->a()I

    move-result p2

    if-lt p3, p2, :cond_1

    invoke-virtual {p1}, Lcfk;->b()I

    move-result p1

    if-gt p3, p1, :cond_1

    iget-object p1, p0, Lcfl;->b:Lcfn;

    iget-object p1, p1, Lcfn;->c:Lcer;

    iget-object p2, p0, Lcfl;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcfk;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcfk;->a(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-object p4, p1, Lcer;->a:Lcey;

    iget-object p4, p4, Lcey;->b:Lceh;

    iget-object p4, p4, Lceh;->d:Lceg;

    .line 4
    invoke-interface {p4, p2, p3}, Lceg;->a(J)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcer;->a:Lcey;

    iget-object p2, p2, Lcey;->a:Lcek;

    .line 5
    invoke-interface {p2}, Lcek;->h()V

    iget-object p2, p1, Lcer;->a:Lcey;

    iget-object p2, p2, Lcey;->ad:Ljava/util/LinkedHashSet;

    .line 6
    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcfo;

    iget-object p4, p1, Lcer;->a:Lcey;

    iget-object p4, p4, Lcey;->a:Lcek;

    .line 7
    invoke-interface {p4}, Lcek;->a()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcfo;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcer;->a:Lcey;

    iget-object p2, p2, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 8
    invoke-virtual {p2}, Lqc;->b()V

    iget-object p1, p1, Lcer;->a:Lcey;

    iget-object p1, p1, Lcey;->Z:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 9
    invoke-virtual {p1}, Lqc;->b()V

    :cond_1
    return-void
.end method
