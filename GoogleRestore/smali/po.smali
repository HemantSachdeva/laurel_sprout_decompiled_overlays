.class final Lpo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpp;


# direct methods
.method public constructor <init>(Lpp;)V
    .locals 0

    iput-object p1, p0, Lpo;->a:Lpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpo;->a:Lpp;

    iget-object v0, v0, Lpp;->e:Lok;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Lge;->C(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpo;->a:Lpp;

    iget-object v0, v0, Lpp;->e:Lok;

    .line 2
    invoke-virtual {v0}, Lok;->getCount()I

    move-result v0

    iget-object v1, p0, Lpo;->a:Lpp;

    iget-object v1, v1, Lpp;->e:Lok;

    invoke-virtual {v1}, Lok;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lpo;->a:Lpp;

    iget-object v0, v0, Lpp;->e:Lok;

    .line 3
    invoke-virtual {v0}, Lok;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lpo;->a:Lpp;

    iget v2, v1, Lpp;->k:I

    if-gt v0, v2, :cond_0

    iget-object v0, v1, Lpp;->q:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lpo;->a:Lpp;

    .line 5
    invoke-virtual {v0}, Lpp;->S()V

    :cond_0
    return-void
.end method
