.class final Lcet;
.super Lfl;
.source "PG"


# instance fields
.field final synthetic b:Lcey;


# direct methods
.method public constructor <init>(Lcey;)V
    .locals 0

    iput-object p1, p0, Lcet;->b:Lcey;

    .line 1
    invoke-direct {p0}, Lfl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgz;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    iget-object p1, p0, Lcet;->b:Lcey;

    .line 3
    iget-object p1, p1, Lcey;->ab:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcet;->b:Lcey;

    const v0, 0x7f110132

    .line 5
    invoke-virtual {p1, v0}, Lcey;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcet;->b:Lcey;

    const v0, 0x7f110130

    .line 6
    invoke-virtual {p1, v0}, Lcey;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p2, p1}, Lgz;->c(Ljava/lang/CharSequence;)V

    return-void
.end method
