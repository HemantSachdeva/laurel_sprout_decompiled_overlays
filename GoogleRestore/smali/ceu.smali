.class final Lceu;
.super Laqc;
.source "PG"


# instance fields
.field final synthetic a:Lcfn;

.field final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field final synthetic c:Lcey;


# direct methods
.method public constructor <init>(Lcey;Lcfn;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lceu;->c:Lcey;

    iput-object p2, p0, Lceu;->a:Lcfn;

    iput-object p3, p0, Lceu;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Laqc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lceu;->b:Lcom/google/android/material/button/MaterialButton;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    if-gez p2, :cond_0

    iget-object p1, p0, Lceu;->c:Lcey;

    .line 4
    invoke-virtual {p1}, Lcey;->d()Lph;

    move-result-object p1

    invoke-virtual {p1}, Lph;->o()I

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lceu;->c:Lcey;

    .line 5
    invoke-virtual {p1}, Lcey;->d()Lph;

    move-result-object p1

    invoke-virtual {p1}, Lph;->p()I

    move-result p1

    .line 4
    :goto_0
    iget-object p2, p0, Lceu;->c:Lcey;

    iget-object p3, p0, Lceu;->a:Lcfn;

    .line 6
    invoke-virtual {p3, p1}, Lcfn;->d(I)Lcfj;

    move-result-object p3

    iput-object p3, p2, Lcey;->c:Lcfj;

    iget-object p2, p0, Lceu;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lceu;->a:Lcfn;

    .line 7
    invoke-virtual {p3, p1}, Lcfn;->d(I)Lcfj;

    move-result-object p1

    iget-object p1, p1, Lcfj;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
