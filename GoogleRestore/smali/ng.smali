.class final Lng;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lnj;


# direct methods
.method public constructor <init>(Lnj;)V
    .locals 0

    iput-object p1, p0, Lng;->a:Lnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lng;->a:Lnj;

    iget-object p1, p1, Lnj;->d:Lnn;

    .line 1
    invoke-virtual {p1, p3}, Lnn;->setSelection(I)V

    iget-object p1, p0, Lng;->a:Lnj;

    iget-object p1, p1, Lnj;->d:Lnn;

    .line 2
    invoke-virtual {p1}, Lnn;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lng;->a:Lnj;

    iget-object p4, p1, Lnj;->d:Lnn;

    iget-object p1, p1, Lnj;->b:Landroid/widget/ListAdapter;

    .line 3
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Lnn;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Lng;->a:Lnj;

    .line 4
    invoke-virtual {p1}, Lpp;->d()V

    return-void
.end method
