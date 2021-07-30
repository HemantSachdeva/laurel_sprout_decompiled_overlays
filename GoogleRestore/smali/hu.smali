.class final Lhu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lhy;

.field final synthetic b:Lhv;


# direct methods
.method public constructor <init>(Lhv;Lhy;)V
    .locals 0

    iput-object p1, p0, Lhu;->b:Lhv;

    iput-object p2, p0, Lhu;->a:Lhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lhu;->b:Lhv;

    iget-object p1, p1, Lhv;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lhu;->a:Lhy;

    .line 1
    iget-object p2, p2, Lhy;->b:Lix;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lhu;->b:Lhv;

    iget-boolean p1, p1, Lhv;->i:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lhu;->a:Lhy;

    .line 2
    iget-object p1, p1, Lhy;->b:Lix;

    invoke-virtual {p1}, Lix;->dismiss()V

    :cond_0
    return-void
.end method
