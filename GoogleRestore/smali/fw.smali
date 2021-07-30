.class final Lfw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Lfu;


# direct methods
.method public constructor <init>(Lfu;)V
    .locals 0

    iput-object p1, p0, Lfw;->a:Lfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2, p1}, Lgu;->a(Landroid/view/WindowInsets;Landroid/view/View;)Lgu;

    move-result-object p2

    iget-object v0, p0, Lfw;->a:Lfu;

    .line 2
    invoke-interface {v0, p1, p2}, Lfu;->a(Landroid/view/View;Lgu;)Lgu;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lgu;->j()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
