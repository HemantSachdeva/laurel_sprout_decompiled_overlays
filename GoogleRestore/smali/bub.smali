.class final Lbub;
.super Lqz;
.source "PG"


# static fields
.field public static final synthetic t:I


# instance fields
.field public final q:Landroid/widget/TextView;

.field public final r:Landroid/widget/TextView;

.field public final s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lqz;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbub;->q:Landroid/widget/TextView;

    .line 3
    const v0, 0x7f0a00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbub;->r:Landroid/widget/TextView;

    .line 4
    const v0, 0x7f0a0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lbub;->s:Landroid/widget/TextView;

    return-void
.end method
