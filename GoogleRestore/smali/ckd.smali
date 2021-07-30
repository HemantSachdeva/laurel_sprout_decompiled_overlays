.class final Lckd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcke;


# direct methods
.method public constructor <init>(Lcke;)V
    .locals 0

    iput-object p1, p0, Lckd;->a:Lcke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const/4 p1, 0x0

    if-gez p3, :cond_1

    iget-object v0, p0, Lckd;->a:Lcke;

    iget-object v0, v0, Lcke;->a:Lpp;

    .line 1
    invoke-virtual {v0}, Lpp;->e()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lpp;->e:Lok;

    .line 2
    invoke-virtual {v0}, Lok;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lckd;->a:Lcke;

    .line 3
    invoke-virtual {v0}, Lcke;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1
    :goto_0
    iget-object v1, p0, Lckd;->a:Lcke;

    .line 4
    invoke-virtual {v1, v0}, Lcke;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lckd;->a:Lcke;

    .line 5
    invoke-virtual {v0}, Lcke;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_3

    if-gez p3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    goto :goto_4

    .line 5
    :cond_3
    :goto_1
    iget-object p2, p0, Lckd;->a:Lcke;

    iget-object p2, p2, Lcke;->a:Lpp;

    .line 6
    invoke-virtual {p2}, Lpp;->e()Z

    move-result p3

    if-nez p3, :cond_4

    move-object p2, p1

    goto :goto_2

    .line 10
    :cond_4
    iget-object p1, p2, Lpp;->e:Lok;

    .line 7
    invoke-virtual {p1}, Lok;->getSelectedView()Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    .line 6
    :goto_2
    iget-object p1, p0, Lckd;->a:Lcke;

    iget-object p1, p1, Lcke;->a:Lpp;

    .line 8
    invoke-virtual {p1}, Lpp;->j()I

    move-result p3

    iget-object p1, p0, Lckd;->a:Lcke;

    iget-object p1, p1, Lcke;->a:Lpp;

    .line 9
    invoke-virtual {p1}, Lpp;->e()Z

    move-result p4

    if-nez p4, :cond_5

    const-wide/high16 p4, -0x8000000000000000L

    goto :goto_3

    .line 12
    :cond_5
    iget-object p1, p1, Lpp;->e:Lok;

    .line 10
    invoke-virtual {p1}, Lok;->getSelectedItemId()J

    move-result-wide p4

    .line 9
    :goto_3
    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    :goto_4
    iget-object p1, p0, Lckd;->a:Lcke;

    iget-object p1, p1, Lcke;->a:Lpp;

    iget-object v2, p1, Lpp;->e:Lok;

    .line 11
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_6
    iget-object p1, p0, Lckd;->a:Lcke;

    iget-object p1, p1, Lcke;->a:Lpp;

    .line 12
    invoke-virtual {p1}, Lpp;->d()V

    return-void
.end method
