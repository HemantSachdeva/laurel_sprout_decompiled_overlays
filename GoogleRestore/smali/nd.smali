.class final Lnd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lnn;


# direct methods
.method public constructor <init>(Lnn;)V
    .locals 0

    iput-object p1, p0, Lnd;->a:Lnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lnd;->a:Lnn;

    iget-object v0, v0, Lnn;->b:Lnm;

    .line 1
    invoke-interface {v0}, Lnm;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnd;->a:Lnn;

    .line 2
    invoke-virtual {v0}, Lnn;->a()V

    :cond_0
    iget-object v0, p0, Lnd;->a:Lnn;

    .line 3
    invoke-virtual {v0}, Lnn;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
